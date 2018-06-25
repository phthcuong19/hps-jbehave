# hps-jbehave
[![Build Status](https://travis-ci.org/phthcuong19/hps-jbehave.svg?branch=master)](https://travis-ci.org/phthcuong19/hps-jbehave)

Hiptest publisher samples with JBehave


In this repository you'll find tests generated in JBehave format from [Hiptest](https://hiptest.com), using [Hiptest publisher](https://github.com/hiptest/hiptest-publisher).

The goals are:

 * to show how tests are exported in JBehave.
 * to check exports work out of the box (well, with implemented actionwords)

System under test
------------------

The SUT is a (not that much) simple coffee machine. You start it, you ask for a coffee and you get it, sometimes. But most of times you have to add water or beans, empty the grounds. You have an automatic expresso machine at work or at home? So you know how it goes :-)

Update tests
-------------


To update the tests:

    hiptest-publisher -c jbehave.conf --only=stories,step_definitions

The tests are generated in the [``resources``](https://github.com/hiptest/hps-jbehave/tree/master/src/main/resources) directory.

Run tests
---------


To build the project and run the tests, use the following command:

    mvn integration-test

The SUT implementation can be seen in [``src/main/java/com/coffeemachine/CoffeeMachine.java``](https://github.com/hiptest/hps-jbehave/blob/master/src/main/java/com/coffeemachine/CoffeeMachine.java)

The test report is generated in the ```target/jbehave/``` folder.
