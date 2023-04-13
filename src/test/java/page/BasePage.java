package page;

import org.openqa.selenium.*;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;
import java.io.File;
import java.text.DecimalFormat;
import java.time.Duration;
import java.util.List;
import java.util.logging.Logger;

public class BasePage {

    private Logger LOGGER;
    private String className;
    private WebDriver driver;

    public BasePage(String name, WebDriver driver) {
        LOGGER = Logger.getLogger(name);
        this.driver = driver;
        this.className = name;
    }

    public void clickByDescription(String description) {
        driver.findElement(By.xpath("//*[contains(text(), '" + description + "')]")).click();
    }

    public void click(By by) {
        waitingElement(by, 15);
        driver.findElement(by).click();
    }

    public void selectComboItemByName(String name, String value) {
        new Select(driver.findElement(By.name(name))).selectByVisibleText(value);
    }

    public void scrollScreen(String pixels) {
        JavascriptExecutor js = (JavascriptExecutor) driver;
        js.executeScript("window.scrollBy(0," + pixels + ", \"\")");
    }

    public void write(By by, String description) {
        click(by);
        driver.findElement(by).sendKeys("");
        driver.findElement(by).clear();
        driver.findElement(by).sendKeys(description);
    }

    public String getTextCustom(By by) {
        return driver.findElement(by).getText();
    }

    public void enterCommand(By by) {
        waitingElement(by, 15);
        driver.findElement(by).sendKeys(Keys.ENTER);
    }

    public void forceWrite(By by, String description) {
        click(by);
        driver.findElement(by).sendKeys(Keys.chord(Keys.CONTROL, "a", Keys.DELETE));
        driver.findElement(by).clear();
        driver.findElement(by).sendKeys(description);
    }

    public void clearContent(By by) {
        driver.findElement(by).clear();
    }

    public void selectCombo(By by, String description) {
        driver.findElement(by).click();
        clickByDescription(description);
    }

    public boolean isCheckTrue(By by) {
        return driver.findElement(by).getAttribute("checked").equals("true");
    }

    public boolean existElementByText(String text) {
        List<WebElement> elements = driver.findElements(By.xpath("//*[contains(text(), '" + text + "')]"));
        return elements.size() > 0;
    }

    public String findElementByText(String text) {
        List<WebElement> elements = driver.findElements(By.xpath("//*[contains(text(), '" + text + "')]"));

        if (elements.size() > 0) {
            WebElement element = elements.get(0);
            return element.getText();
        }

        return null;
    }

    public boolean existElementBy(By by) {
        List<WebElement> elements = driver.findElements(by);

        if (elements.size() > 0) {
            return true;
        }

        return false;
    }

    public String getElementTextBy(By by) {
        List<WebElement> elements = driver.findElements(by);

        if (elements.size() > 0) {
            WebElement element = driver.findElement(by);
            return element.getText();
        }

        return null;
    }

    public WebElement waitingElement(By by, long seconds) {
        WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(seconds));
        return wait.until(ExpectedConditions.visibilityOfElementLocated(by));
    }

    public boolean waitingElementGone(By by, long seconds) {
        WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(seconds));
        return wait.until(ExpectedConditions.invisibilityOfElementLocated(by));
    }

    public WebElement waitingElementByText(String text, long seconds) {
        WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(seconds));
        return wait.until(
                ExpectedConditions.visibilityOfElementLocated(By.xpath("//*[contains(text(), '" + text + "')]")));
    }

    public void infoLog(String info) {
        LOGGER.info(className + " -> " + info);
    }

    public String getTextCustom(String text) {
        WebElement element = driver.findElement(By.xpath("//*[contains(text(), '" + text + "')]"));
        return element.getText();
    }

    public String getStringExistedElement(String text) {
        WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(80));
        WebElement webElement = wait.until(
                ExpectedConditions.visibilityOfElementLocated(By.xpath("//*[contains(text(), '" + text + "')]")));

        return webElement.getText();
    }

    protected String getStringElement(By by) {
        waitingElement(by, 15);

        List<WebElement> elements = driver.findElements(by);

        if (elements.size() > 0) {
            return elements.get(0).getText();
        } else {
            return null;
        }
    }

    public String formatValue(String currency, double value) {
        String formatedValue = null;

        if (currency.equalsIgnoreCase("dollar")) {
            formatedValue = new DecimalFormat("#,##0.00").format(value);
        } else if (currency.equalsIgnoreCase("real")) {
            formatedValue = new DecimalFormat("#.##0,00").format(value);
        }

        return formatedValue;
    }

    public boolean elementHasClass(WebElement element, String cssClass) {
        return element.getAttribute("class").contains(cssClass);
    }

    boolean fileDownloaded(String downloadPath, String fileName) {
        File dir = new File(downloadPath);
        File[] dirContents = dir.listFiles();
        for (int i = 0; i < dirContents.length; i++) {
            if (dirContents[i].getName().equals(fileName)) {
                dirContents[i].delete();
                return true;
            }
        }
        return false;
    }

    public void waitTextFromElement(String text, WebElement element) {
        WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(10));
        wait.until(ExpectedConditions.attributeToBe(element, "innerText", text));
    }

    public void waitTextFromBy(String text, By by) {
        WebElement element = this.driver.findElement(by);
        WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(10));
        wait.until(ExpectedConditions.attributeToBe(element, "innerText", text));
    }

    public Boolean isElementContainingText(By by, String text) {
        waitingElement(by, 15);
        return getTextCustom(by).contains(text);
    }

    public String getURL(){
        String elem = this.driver.getCurrentUrl();
        return elem;
    }
}
