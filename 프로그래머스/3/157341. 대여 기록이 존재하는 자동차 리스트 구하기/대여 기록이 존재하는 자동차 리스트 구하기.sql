SELECT h.CAR_ID FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY h JOIN CAR_RENTAL_COMPANY_CAR c ON h.CAR_ID = c.CAR_ID
WHERE c.CAR_TYPE = '세단' AND EXTRACT(MONTH FROM START_DATE) = '10'
GROUP BY h.CAR_ID
ORDER BY h.CAR_ID DESC;