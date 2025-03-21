SELECT p1.ID, p1.NAME, p1.HOST_ID
FROM PLACES p1
JOIN PLACES p2 ON p1.HOST_ID = p2.HOST_ID
WHERE p1.ID != p2.ID
GROUP BY p1.ID, p1.NAME, p1.HOST_ID
HAVING COUNT(p2.ID) >= 1
ORDER BY p1.ID;
