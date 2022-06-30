#!/bin/bash
#
# Run JMeter Docker image with options

NAME="jmeter"
JMETER_VERSION=${JMETER_VERSION:-"latest"}
IMAGE="justb4/jmeter:${JMETER_VERSION}"

rm -rf mvc/report > /dev/null 2>&1
mkdir -p mvc/report
/bin/rm -f mvc/test-plan.jtl mvc/jmeter.log  > /dev/null 2>&1
# Finally run
docker run --rm -i -v ${PWD}:${PWD} -w ${PWD} ${IMAGE} -n -t mvc/test-plan.jmx -l mvc/test-plan.jtl -j mvc/jmeter.log -e -o mvc/report

rm -rf reactive/report > /dev/null 2>&1
mkdir -p reactive/report
/bin/rm -f reactive/test-plan.jtl reactive/jmeter.log  > /dev/null 2>&1
# Finally run
docker run --rm -i -v ${PWD}:${PWD} -w ${PWD} ${IMAGE} -n -t reactive/test-plan.jmx -l reactive/test-plan.jtl -j reactive/jmeter.log -e -o reactive/report
