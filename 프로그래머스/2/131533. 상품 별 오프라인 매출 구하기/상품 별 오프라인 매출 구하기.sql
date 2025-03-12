SELECT p.PRODUCT_CODE, (p.PRICE * SUM(s.SALES_AMOUNT)) SALES FROM PRODUCT p JOIN OFFLINE_SALE s ON p.PRODUCT_ID = s.PRODUCT_ID GROUP BY p.PRODUCT_CODE ORDER BY SALES DESC, PRODUCT_CODE;