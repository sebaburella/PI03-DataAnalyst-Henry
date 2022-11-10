# PI03-DataAnalyst-Henry
Proyecto Individual Numero 3 del bootcamp soy Henry
# Contexto
La Organización de Aviación Civil Internacional (OACI), organismo de la Organización de las Naciones Unidas, quiere investigar en profundidad los accidentes producidos desde inicios del siglo XX. Para ello, les solicita la elaboración de un informe y un dashboard interactivo que recopile tal información.

La OACI únicamente cuenta con un dataset sobre datos de accidentes de aviones, pero insta a la consultora de datos -de la que forman parte- que intente cruzar esta información con otras fuentes de su interés. Esto con el objetivo de obtener mayor claridad y consistencia en los fundamentos del estudio.

# Propuesta de trabajo
A raíz de esta solicitud, nuestro Project Manager nos encarga una serie de tareas a cumplir:

Realizar un EDA con el dataset provisto, junto con un reporte de calidad y diccionario de datos
Buscar y relacionar información relevante con los eventos
Crear una base de datos en un motor SQL e ingestar el csv procesado
Elaborar un dashboard e idear un storytelling con el objetivo de presentarlo ante la OACI
Adjuntar todo el trabajo en un repositorio de GitHub
Stack tecnológico:

Python: EDA + transformaciones
SQL: base de datos
Power BI -preferentemente- o Streamlit: dashboard
GitHub: con un README.md donde se elabore el informe
A modo de resumen, se espera que puedan realizar un primer acercamiento al dataset con Python. Allí, crearán un notebook que contendrá un análisis exploratorio y realizarán las transformaciones y el preprocesamiento que consideren pertinentes. Esta etapa debe estar oportunamente documentada y con los comentarios necesarios. Recuerden que Python brinda un recurso muy valioso para este fin -celdas markdown-.

En una instancia posterior, tendrán que ingestar el dataset en un motor SQL de su preferencia. Finalmente, la herramienta de visualización empleada debe conectarse y tomar los datos desde ese motor.

# Recomendaciones finales
Se hará hincapié en la presentación, comunicación, capacidad analítica y forma de contar una historia con los datos. Para ello, pueden hacer foco en el Workshop From Data to Viz & Storytelling.

¡No deben mostrar nada de código en la exposición!

Recordamos que sean puntuales y prueben el correcto funcionamiento de las herramientas empleadas antes de ingresar a la meet.

La DEMO, donde defenderán el proyecto, se realizará el día jueves o viernes. Estar atentos a su calendar para ver qué día y horario les corresponde. Tendrá una duración máxima de 15 minutos -entre puesta en escena y devolución del corrector asignado-. Así que es importante que sepan gestionar bien su tiempo y tengan un speech ya preparado de, aproximadamente, unos 9/11 minutos de duración.

# Pasos que Utilice para Realizar el Proyecto
1)Importamos las tablas en python.
2)Realizamos un proceso de ETL a las tablas para arreglar ciertas columnas como las de Date y Time las cuales estaban en un formato un tanto extraño.
Para normalizar los datos de estas dos columnas creamos dos funciones distintas para que en la columna date queden con el formato dia/mes/año y en la columna Timequeden con un formato Hora/Minutos/Segundos.
3)Luego importamos las tablas a mysql mediante una libreria de python llamada pymysql.  
4)Luego importamos las tablas de Mysql a Power Bi.  
5)Despues de eso creamos un dashboard con los datos mas relevantes de la tabla de accidentes de aviones. Para esto considere necesario crear una columna nueva desde power query llamada "Porcentaje Muertes" y "Porcentaje Muertes Crew". Estas dos columnas calculan del total de pasajeros y tripulantes que tenia cada uno de los aviones al partir, cual fue el porcentaje de estos que salieron vivos y cuantos murieron. Considere que esto era mejor para analizar los valores de las tablas a que simplemente calcular la cantidad de muertes con la columna Fatalities ya que no es lo mismo calcular las muertes de un vuelo que tiene 300 pasajeros a un vuelo en el que solo hay 2 pasajeros. Por esta razon me parecio que una buena forma de normalizar los valores para calcularlos de una manera optima era esta, la de incorporar la columna de Porcentaje de muerte. 
La diferencia entre la columna "Porcentaje Muerte" y "Porcentaje Muerte Crew" es que la columna "Porcentaje Muertes" muestra el porcentaje de muertes generales del avion, en cambio la de "Porcentaje Muertes Crew" incluye solamente el porcentaje de muerte de la tripulacion del avion, es decir los trabajadores, incluyendo pilotos/copilotos y asafatas.   

# Relacion con otras tablas
Para este modelo era buscar una correlacion de la tabla de accidentes de aviones con alguna otra de valores los cuales tuvieran relacion con nuestro modelo, por esta razon incluimos una tabla de atentados terroristas. 
Cual es la razon de esto ?
La Razon de esta inclusion es el 9/11/2001 el cual fue el dia con accidentes de aviones mas importantes de los ultimos tiempos el cual fue un atentado terrorista.

Los atentados del 11 de septiembre de 2001, también conocidos comúnmente por los numerónimos 11S en español y 9/11 en inglés, fueron una serie de cuatro ataques terroristas suicidas cometidos en Estados Unidos en la mañana del martes 11 de septiembre de 2001 por el grupo terrorista Al Qaeda
Muertes que llevaron este ataque: 2.996
Heridos que llevaron este ataque: 25.000 
![index](https://user-images.githubusercontent.com/106763237/201039726-e5f85a14-8d23-4d6d-ba58-6ed8a384c783.jpeg)

