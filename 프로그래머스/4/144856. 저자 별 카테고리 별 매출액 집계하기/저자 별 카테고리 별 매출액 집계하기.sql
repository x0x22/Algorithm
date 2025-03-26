SELECT a.AUTHOR_ID, a.AUTHOR_NAME, b.CATEGORY, SUM(s.SALES * b.PRICE) TOTAL_SALES
FROM AUTHOR a JOIN BOOK b ON b.AUTHOR_ID = a.AUTHOR_ID
JOIN BOOK_SALES s  ON s.BOOK_ID = b.BOOK_ID
WHERE s.SALES_DATE LIKE "2022-01-%"
GROUP BY a.AUTHOR_ID,a.AUTHOR_NAME, b.CATEGORY
ORDER BY a.AUTHOR_ID, b.CATEGORY DESC