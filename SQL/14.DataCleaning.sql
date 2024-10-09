-- Data cleaning

select *
from layoffs;

-- Step
-- 1. Remove Duplicates
-- 2. Standardize the Data
-- 3. Null or Blank values
-- 4. Remove the don't necessary columns

-- clone table with struct not data
create table layoffs_staging
like layoffs;

select *
from layoffs_staging;

-- clone data 
insert layoffs_staging
select *
from layoffs;
