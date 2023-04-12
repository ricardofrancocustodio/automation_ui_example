package step;

import core.DriverFactory;
import io.cucumber.java.Before;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.cucumber.java.pt.Dado;
import io.cucumber.java.pt.Quando;
import io.cucumber.java.pt.Entao;
//import org.junit.jupiter.api.BeforeEach;
import org.openqa.selenium.WebDriver;
import page.ExamplePage;

public class ExampleStep {


    ExamplePage examplePage =  new ExamplePage(DriverFactory.getDriver());

    @Before
    public void before(){
        DriverFactory.getDriver();
    }

//    @After
//    public void after(){
//        DriverFactory.closeDriver();
//    }


    @Given("^a QA Enginner access a page$")
    public void a_qa_enginner_access_a_page() {
        examplePage.a_qa_enginner_access_a_page();
    }

    @Then("^fill out the form with my name$")
    public void fill_out_the_form_with_my_name() {
        examplePage.fill_out_the_form_with_my_name();
    }

    @Then("^click on continue to checkout button$")
    public void click_on_continue_to_checkout_button() {
        examplePage.click_on_continue_to_checkout_button();
    }

    @When("^fill out the form with credentials (.*) (.*)")
    public void fill_out_the_form_with_credentials(String firstname, String lastname){
        examplePage.fill_out_the_form_with_credentials(firstname, lastname);
    }
}
