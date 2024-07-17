---------
| README |
---------
## Descripción
El proyecto tiene como objetivo hacer pruebas unitarias a traves del API utilizando KARATE

1. Prerequisitos:
	- Maquina local con el sistema operativo Windows 10
	- IDE IntelliJ version 2024.1.3
	- Instalar Gradle desde https://gradle.org/releases/ .
	- Instalar Java JDK 11.0.23 desde https://adoptium.net/es/temurin/releases/ o usar OpenJDK.
	- Asegúrate de que tanto `java` como `gradle` estén en el PATH de tu sistema.

## Instalación de Dependencias

2. Para instalar las dependencias del proyecto, ejecuta en terminal:
	```bash
	./gradlew build

3. Instrucciones para ejecutar los test
	##Pruebas en paralelo
	3.1. Abrir el IDE IntelliJ
	3.2. Buscar la ruta src/test/java/users/UserPostRunner.java
	3.3. Damos click izquierdo en el icono play que esta al lado izquierdo de la clase UserPostRunner
	3.4. Una vez que termine el Test vamos a la ruta build/reports/tests/test/index.htm
	3.5. Le damos click derecho sobre el archivo index.html y escogemos la opción Open in/Browser/Chrome
	##Pruebas unitarias
	3.6. Abrir el IDE IntelliJ
	3.7. Buscar la ruta src/test/resources/users/users.feature
	3.8. podemos dar click izquierdo al lado de cada Scenario para poder realizar la prueba
	3.9. Le damos click derecho sobre el archivo index.html y escogemos la opción Open in/Browser/Chrome

4. Información adicional
	4.1.Mediante el IDE podemos instalar algunos plugins q nos pueden ayudar por ejemplo:
	-Cucumber for Java
	-Gherkin
	-Test Automation
	-Gradle 
	-KARATE
