# reactive-benchmark
reactive vs mvc performance test with jmeter

## run servers locally
from the root of this project run:
```
mvn -f ./store-server-reactive/pom.xml clean spring-boot:run
```
then
```
mvn -f ./store-server-mvc/pom.xml clean spring-boot:run
```
this will start up both servers on `localhost:8088` and `localhost:8089`

## run jmeter tests
tests are configured to run on **docker on mac**:
```
./jmeter/run.sh
```
this will take a couple of minutes, when it's done, the reports can be found here `jmeter/mvc/report/index.html` and here `jmeter/reactive/report/index.html`
