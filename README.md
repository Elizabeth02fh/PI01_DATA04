# Henry Labs 1 - Data Engineer 

Proyecto individual, se realizó todo proceso ETL en 3 días a partir de un conjunto de datos, el cual se centró en la misma perspectiva de negocio. Los datos varían de diversas fuentes de encuestas de precios del año 2020 en diferentes mercados de Argentina.

The process of the project video in this link
[![Alt text](https://img.youtube.com/vi/8NuuhUJACbQ/0.jpg)](https://www.youtube.com/watch?v=8NuuhUJACbQ)

## ETL Workflow Diagram.

<img src="images/pipeline.png" width="650" height="350" align="right">

## Diagrama de flujo de trabajo ETL.

<img src="images/pipeline.png" width="650" height="350" align="right">

Luego, de acuerdo a las tres etapas del proceso ETL y los subtemas requeridos, se presenta lo siguiente:

## ETAPA 1: EXTRACCIÓN
En primer lugar se adquirieron los datasets del sitio Github, en formatos xlsx, csv, json, txt y parquet, los cuales fueron llevados a la misma extensión que es csv, ya que es más recomendable trabajar con esta extensión para este tipo de datos. (conjuntos de datos). Para esta etapa se utilizó el entorno de desarrollo Visual Studio y se utilizó Python como lenguaje de programación.

## ETAPA 2: TRANSFORMACIÓN
Esta etapa utilizó la herramienta Python y se divide en las siguientes subetapas:
### 1) Visualización de datos
Aquí se realizó una visualización de los datos, se utilizaron módulos de Python como .head(), sample(), df.isnull().sum() para ver cómo se forman los datos para luego continuar con la otra auditoría.
### 3) Limpieza de datos
Para datos nulos decidí eliminar algunas columnas siempre que la mayoría (>70%) sea nula, y en lugar de eliminar filas decidí usar el módulo .fillna(method="bfill") que completa los datos nulos, según al valor de la siguiente fila.
### 4) Búsqueda de valores atípicos
Utilicé sample() para ver qué valores son atípicos, es decir diferentes a la mayoría o que no suceden en la vida real, también observé si había valores duplicados en el id de los datasets.
### 5) Normalización de datos
Tanto en las columnas, es decir los encabezados, algunos encabezados como el id se normalizaron a product_id, en el caso de las filas (registros) había varios valores atípicos en varias columnas y se procedió a etiquetarlos correctamente, transformando los campos numéricos. poniendo la misma cantidad de dígitos para todos, o reemplazando el "." por "," para la columna de precio, por ejemplo.
### 6) Uniones de los conjuntos de datos
Se utilizó la función concat en Python para concatenar las tablas precio_semanas, como tenían la misma nomenclatura en las columnas y los registros eran similares, se procedió a unir las tablas de 5 dimensiones en una sola tabla general para ser más óptimo en el resto. auditorías.

## ETAPA 3: CARGA
Finalmente se utilizó la librería SQLAlchemy en Python para poder conectarme a la base de datos que previamente la creó en MySQL "preciosdb", de allí cargué los datasets todo ok a mi base de datos, luego se hicieron las tablas de alter, para asignar PRIMARY KEY y LLAVE EXTRANJERA que lo ameritaba.
La base de datos generada finalmente se muestra así:
<img src="images/DER.JPG" width="700" height="350" align="center">

### query
Finally, a query was made to verify if the database works: Average price of the 9-1-688 branch, which resulted in:203.64690382081687.
<img src="images/answer.JPG" width="900" height="180" align="left">

# Datasets:

En el siguiente link van a poder encontrar los archivos con los que van a trabajar: https://drive.google.com/drive/folders/1Rsq-HHomPtQwy7RIWQ574wKcf56LiGq1?usp=sharing 
