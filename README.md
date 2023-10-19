# Henry Labs 1 - Data Engineer 

Autor: Elizabeth Flores
email: Elizabeth02fh@gmail.com

Proyecto individual, se realizó todo proceso ETL en 3 días a partir de un conjunto de datos, el cual se centró en la misma perspectiva de negocio. Los datos varían de diversas fuentes de encuestas de precios del año 2020 en diferentes mercados de Argentina.

# Datasets:
En el siguiente link van a poder encontrar los archivos con los que van a trabajar: https://drive.google.com/drive/folders/1Rsq-HHomPtQwy7RIWQ574wKcf56LiGq1?usp=sharing 

# Objetivos:
- Automatizar de ETL a partir de archivos locales en diferentes formatos.  
- Limpieza, Transformación, normalización de datos.
- Carga de datos a mi servidor local (MySQL) con la libreria SQLAlchemy.
- Creacion de DER y bd en MySQL.
- Deploy de la app con FastAPI en entorno local utilizando docker.

The process of the project video in this link
[![Alt text](https://img.youtube.com/vi/8NuuhUJACbQ/0.jpg)](https://www.youtube.com/watch?v=8NuuhUJACbQ)

## Diagrama de flujo de trabajo ETL.
<img src="images/pipeline.png" width="650" height="350" align="right">

La base de datos generada finalmente se muestra así:
<img src="images/DER.JPG" width="700" height="350" align="center">

### query
Finally, a query was made to verify if the database works: Average price of the 9-1-688 branch, which resulted in:203.64690382081687.
<img src="images/answer.JPG" width="900" height="180" align="left">

#Instalación de containers:
1. Deploy de container en FastAPI en docker --> 

