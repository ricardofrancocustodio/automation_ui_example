package runner;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        features = "src/test/resources/features/AcessarPaginaGoogle.feature",
        glue = "step",
        plugin = {"pretty", "html:target/report/", "json:target/report.json"}
        //tags = "", (Habilitar somente quando for executar um cenário específico da feature)
)


public class runner {
}
