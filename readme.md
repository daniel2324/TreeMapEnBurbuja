# TreeMap en Burbujas
## Desarrollado por Boris Beck y Daniel Herrera

#### Descripción:
Los Treemaps en Burbuja se utilizan para mostrar datos jerárquicos (estructura de árbol) como un conjunto de círculos anidados. Cada rama del árbol se representa por un círculo, y círculos pequeños dentro de uno más grande representan subsecciones. En esta representación visual de un árbol de datos, cada nodo puede tener cero o más hijos y un padre (a excepción de la raíz, que no tiene padres). Cada nodo se muesta como un círculo y el tamaño y color se asignan según los valores. Además el tamaño y los colores se valoran en relación con todos los otros nodos del gráfico. Se pueden especificar cuántos niveles mostrar simultáneamente y opcionalmente mostrar niveles más o menos profundos. El tamaño total del gráfico se determina por el tamaño y cantidad de elementos que se insertan. Si hay nodos hoja con nombres demasiado largos para mostrar, el nombre se trunca con puntos suspensivos (...).

Una de las mayores ventajas de los treemaps es que, por su tipo de construcción, hace un uso muy eficiente del espacio y por esta razón se pueden mostrar miles de elementos en la pantalla simultáneamente.


#### Parámetros para la construcción del TreeMap:



###### Árbol:
Se debe especificar el árbol completo que se quiere representar, por ejemplo:

>String[][] countries = new String[][] {
>    {"america","canada","quebec"},
>    {"america","canada","montreal"},
>    {"america","mexico","monterrey"},
>    {"america","brazil","sao paulo"},
>    {"europe","portugal","lisboa"},
>    {"europe","portugal","porto"},
>    {"europe","germany","munich"},
>    {"europe","germany","berlin"},
>    {"asia","india","bombay"},
>    {"asia","china","shangai"},
>    {"asia","china","pekin"}
>  };

Este es un árbol de países que corresponde al primer gráfico del dibujo de este proyecto. 
 

###### Pesos:
Aunque los pesos no son relevantes para dibujar el gráfico, pueden llegar a utilizarse para hacer algún tipo de búsqueda. Se deben especificar con en este ejemplo:

>float[][] values = new float[][]{{10},{20},{30},{20},{10},{20},{30},{40},{20},{10},{5}};

###### Título:
Se debe especificar un título que se va a mostrar en la parte superior del círculo principal del TreeMap, este título se especifica de la siguiente manera:

>TreeNode t = new TreeNode("World")

El título es uno de los parámetros más importantes, ya que facilita la identificación del TreeMap si se muestran varios al mismo tiempo.


Cabe destacar que de no configurar manualmente los márgenes, colores, máximos, mínimos y divisiones, se tomaran valores por defecto con el fin de poder realizar una gráfica de forma rápida.

Copyright (c) 2016 Boris Beck, Daniel Herrera