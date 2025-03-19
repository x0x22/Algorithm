SELECT h.FLAVOR FROM FIRST_HALF h LEFT JOIN ICECREAM_INFO i ON h.FLAVOR = i.FLAVOR
WHERE h.TOTAL_ORDER > 3000 AND i.INGREDIENT_TYPE = "fruit_based"
ORDER BY h.TOTAL_ORDER DESC