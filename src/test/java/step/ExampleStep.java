package step;

import core.DriverFactory;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import page.ExamplePage;

public class ExampleStep {

    ExamplePage examplePage =  new ExamplePage(DriverFactory.getDriver());

    @BeforeEach
    public void before(){
        DriverFactory.getDriver();
    }

    @AfterEach
    public void after(){
        DriverFactory.closeDriver();
    }


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

    @Given("I choose a country")
    public void i_choose_a_country() {
        examplePage.i_choose_a_country();
    }
    @Then("I choose a State")
    public void i_choose_a_state() {
        examplePage.i_choose_a_state();
    }

    @Given("I select the item shipping address same as billing address")
    public void i_select_the_item_shipping_address_same_as_billing_address() {
        examplePage.i_select_the_item_shipping_address_same_as_billing_address();
    }

    @Then("I select the item Save this information for next time")
    public void i_select_the_item_save_this_information_for_next_time() {
        examplePage.i_select_the_item_save_this_information_for_next_time();
    }

    @Then("click on continue to checkout button to submit the form")
    public void click_on_continue_to_checkout_button_to_submit_the_form() {
        examplePage.click_on_continue_to_checkout_button_to_submit_the_form();
    }

}
