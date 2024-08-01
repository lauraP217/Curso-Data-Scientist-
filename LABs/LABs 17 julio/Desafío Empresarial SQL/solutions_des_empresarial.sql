
#CREATE DATABASE service_request;
use service_request;

# 1. **Identificar los Principales Tipos de Quejas**

SELECT `Complaint Type`, COUNT(`Unique Key`)  as Num_Quejas FROM 311_service_requests 
GROUP BY `Complaint Type`
ORDER BY COUNT(`Unique Key`)  DESC 
LIMIT 10;

# 2. **Analizar Quejas por Distrito**
SELECT Borough, `Complaint Type`, COUNT(`Unique Key`) as Num_Quejas FROM 311_service_requests 
GROUP BY Borough,`Complaint Type`
ORDER BY Borough, COUNT(`Unique Key`)  DESC ;

# 3. **Filtrar Tipos de Quejas de Alto Volumen**

SELECT  DISTINCT`Complaint Type` FROM 311_service_requests 
WHERE  `Complaint Type` like 'Noise%'



# 4. **Comparación de Distritos para un Tipo Específico de Queja**
SELECT Borough, `Complaint Type`, COUNT(`Unique Key`) as Num_Quejas FROM 311_service_requests 
GROUP BY Borough,`Complaint Type`
HAVING  `Complaint Type` = 'Abandoned Vehicle'
ORDER BY COUNT(`Unique Key`)  DESC 

