SELECT numerorem, numerodes, DATE_FORMAT(finicio, '%d de %m de %Y') as finicio, DATE_FORMAT(ffin, "%d de %m de %Y") as ffin
FROM llamada
WHERE (TIMEstampDIFF(MINUTE, ffin, finicio)) < 10;