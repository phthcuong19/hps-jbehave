package com.coffeemachine;

import org.jbehave.core.model.Scenario;
import org.jbehave.core.model.Story;

import org.jbehave.core.reporters.SurefireReporter.TestCaseNamingStrategy;

public class CustomNamingStrategy implements TestCaseNamingStrategy {

    @Override
    public String resolveName(Story story, Scenario scenario) {
        return scenario.getTitle().replaceAll("\"", "");
    }

}
