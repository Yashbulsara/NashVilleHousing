select *
from NashvilleHousing

select SaleDateConverted, convert(Date,SaleDate)
from NashvilleHousing

update NashvilleHousing
SET SaleDate = convert(Date,SaleDate)

ALTER TABLE NashvilleHousing
Add SaleDateConverted Date

update NashvilleHousing
SET SaleDateConverted = convert(Date,SaleDate)


select *
from NashvilleHousing
--where PropertyAddress is null
order by ParcelID

select a.[UniqueID ], a.ParcelID, a.PropertyAddress,b.ParcelID,b.PropertyAddress ,ISNULL(a.PropertyAddress, b.PropertyAddress)
from NashvilleHousing a
JOIN NashvilleHousing b
 on a.ParcelID = b.ParcelID
 AND a.[UniqueID ]   <> b.[UniqueID ]
 where a.PropertyAddress is null



 Update a
 SET PropertyAddress = ISNULL(a.PropertyAddress, b.PropertyAddress)
 from NashvilleHousing a
 JOIN NashvilleHousing b
 on a.ParcelID = b.ParcelID
 AND a.[UniqueID ]   <> b.[UniqueID ]
 where a.PropertyAddress is null



 --Break Address into individual columns


 select PropertyAddress
 from NashvilleHousing

 select 
 Substring(PropertyAddress, 1, CHARINDEX(',',PropertyAddress) -1) as address,
  Substring(PropertyAddress, CHARINDEX(',',PropertyAddress) +1, LEN(PropertyAddress)) as address

 from NashvilleHousing

ALTER TABLE NashvilleHousing
Add PropertySplitAddress Nvarchar(255);

update NashvilleHousing
SET PropertySplitAddress =  Substring(PropertyAddress, 1, CHARINDEX(',',PropertyAddress) -1) 

ALTER TABLE NashvilleHousing
Add PropertySplitCity Nvarchar(255);

update NashvilleHousing
SET PropertySplitCity =Substring(PropertyAddress, CHARINDEX(',',PropertyAddress) +1, LEN(PropertyAddress)) 

select * 
from NashvilleHousing

select OwnerAddress
from NashvilleHousing

Select 
PARSENAME(REPLACE(OwnerAddress,',','.'), 3),
PARSENAME(REPLACE(OwnerAddress,',','.'), 2),
PARSENAME(REPLACE(OwnerAddress,',','.'), 1)
from NashVilleHousing


ALTER TABLE NashvilleHousing
Add OwnerSplitAddress Nvarchar(255);

update NashvilleHousing
SET OwnerSplitAddress =  PARSENAME(REPLACE(OwnerAddress,',','.'), 3)

ALTER TABLE NashvilleHousing
Add OwnerSplitCity Nvarchar(255);

update NashvilleHousing
SET OwnerSplitCity =PARSENAME(REPLACE(OwnerAddress,',','.'), 2)

ALTER TABLE NashvilleHousing
Add OwnerSplitState Nvarchar(255);

update NashvilleHousing
SET OwnerSplitState =  PARSENAME(REPLACE(OwnerAddress,',','.'), 1)



--Change Y and N

select Distinct(SoldAsVacant), count(SoldAsvacant)
from NashvilleHousing
group by SoldAsVacant
order by 2


 
 select SoldAsVacant,
 case when SoldAsVacant = 'Y' THEN 'YES'
	  when SoldAsVacant = 'N' THEN 'NO'
	  ELSE SoldAsVacant
	  END
 from NashvilleHousing


 update NashvilleHousing
 SET SoldAsVacant =  case when SoldAsVacant = 'Y' THEN 'YES'
	  when SoldAsVacant = 'N' THEN 'NO'
	  ELSE SoldAsVacant
	  END


--Remove Duplicates
with RowNumCTE as(
select *,
	Row_Number() OVER (
	PARTITION BY ParcelID,
				 PropertyAddress,
				 SalePrice,
				 Saledate,
				 LegalReference
				 order by
					UniqueID
					)row_num

from NashvilleHousing
--order by ParcelID
)
select*
from RowNumCTE
where row_num > 1



select * 
from NashvilleHousing
