package runner;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        features = "src/test/resources/features/",
        glue = "step",
        plugin = {"pretty", "html:target/report.html", "json:target/report.json"}
        //tags = {"@Smoke,@Regression"}, (Habilitar somente quando for executar um cenário específico da feature)
        //dryRun = false,
        //monochrome = true,
)


public class runner {
}
