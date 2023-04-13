package page;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

public class ExamplePage extends BasePage {

    public ExamplePage(WebDriver driver) {
        super("ExamplePage", driver);
    }

     public void a_qa_enginner_access_a_page() {
        By accessIndexPage = By.cssSelector("body > div > div.py-5.text-center > h2");
        String textIndexPage = getElementTextBy(accessIndexPage);
        Assert.assertEquals("Checkout form", textIndexPage);

    }


    public void fill_out_the_form_with_my_name() {
        By fullName = By.id("fullname");
        write(fullName, "Homer J Simpson");

    }


    public void click_on_continue_to_checkout_button() {
        By clickOnContinueButton = By.cssSelector("body > div > div.row > div.col-md-8.order-md-1 > form > button");
        click(clickOnContinueButton);
    }

    public void fill_out_the_form_with_credentials(String firstname, String lastname){
        By firstName = By.id("firstName");
        write(firstName, "Homer");

        By lastName = By.id("lastName");
        write(lastName, "Simpson");

    }

   public void i_choose_a_country() {
        By countrySelect = By.id("country");
        click(countrySelect);

        By chooseCountry =  By.id("usa");
        click(chooseCountry);

    }

    public void i_choose_a_state() {
        By stateSelect = By.id("state");
        click(stateSelect);

        By chooseState =  By.id("california");
        click(chooseState);
    }


    public void i_select_the_item_shipping_address_same_as_billing_address() {
        By sameAddress = By.id("same-address");
        click(sameAddress);

    }


    public void i_select_the_item_save_this_information_for_next_time() {
        By saveInfo = By.id("save-info");
        click(saveInfo);
    }


    public void click_on_continue_to_checkout_button_to_submit_the_form() {
        By clickCheckoutButton = By.id("checkout");
        click(clickCheckoutButton);
    }


}
