
# Instrucciones

Realizar una petición HTTP hacia este API-Endpoint y mostrar información en consola utilizando clases personalizadas
como lo vimos en clase.
https://restcountries.eu/rest/v2/alpha/col

El cual es parte del sitio web de restcountries.eu
https://restcountries.eu/#api-endpoints-language


## Pasos

1- Crear en el archivo de paquetes, una función que se encargue de llamar el endpoint (no hace falta recibir argumentos).

2- Crear una clase principal llamada "Pais" y sus respectivas subclases para procesar todo el tipado de datos de la respuesta.

Nota: Recuerden usar
https://app.quicktype.io/

3- Necesito que la salida en consola sea similar a esta:

Debug console:
===========================
Pais: Colombia
Población: 48759958
Fronteras:
    Bra
    Ecu
    Pan
    Per
    Ven
languages: Español
Latitud : 4.0
Longitud: -72.0
Moneda: Colombian peso
Bandera: https://restcountries.eu/data/col.svg
===========================


# IMPORTANTE!!!!
## LEER

Cuando hice el ejercicio en el siguiente video, me di cuenta que hay datos enteros (int), que son generados como doubles en el código que genera automáticamente en el generador de quicktype.io.

Tengan cuidado, recuerden usar el CatchError o la depuración para encontrar cuáles son las propiedades que están como enteras y deberían de ser doubles.

El ejercicio es más difícil de lo que parece, pero es un ejercicio real que ustedes harán en su día a día.