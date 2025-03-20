SELECT YEAR(s.SALES_DATE) YEAR,MONTH(s.SALES_DATE) MONTH,i.GENDER, COUNT(DISTINCT i.USER_ID) USERS
FROM ONLINE_SALE s JOIN USER_INFO i ON s.USER_ID = i.USER_ID
WHERE GENDER IS NOT NULL
GROUP BY YEAR(s.SALES_DATE),MONTH(s.SALES_DATE),GENDER 
ORDER BY YEAR,MONTH,GENDER