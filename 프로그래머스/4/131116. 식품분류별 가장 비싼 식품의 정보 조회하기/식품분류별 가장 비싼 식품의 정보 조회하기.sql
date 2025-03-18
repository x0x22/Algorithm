SELECT CATEGORY, PRICE MAX_PRICE, PRODUCT_NAME FROM FOOD_PRODUCT
WHERE (CATEGORY,PRICE) IN (SELECT CATEGORY,MAX(PRICE) FROM FOOD_PRODUCT WHERE CATEGORY IN ('과자','국','식용유','김치') GROUP BY CATEGORY) ORDER BY MAX_PRICE DESC