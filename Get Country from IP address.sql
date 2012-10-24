-- Modified: May 24, 2012
SELECT 
	c.country 
FROM 
	ip2nationCountries c,
	ip2nation i 
WHERE 
	i.ip < INET_ATON("IP_ADDRESS") 
	AND 
	c.code = i.country 
ORDER BY 
	i.ip DESC 
LIMIT 0,1