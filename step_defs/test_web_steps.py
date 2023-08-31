from pytest_bdd import scenarios, given, when, then
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By

scenarios('../features/web.feature')

@given('the DuckDuckGo home page is displayed')
def ddg_home(browser):
    browser.get('https://duckduckgo.com/')

@when('the user searches for "gherkin test case"')
def search_for(browser):
    search_input = browser.find_element(By.NAME, 'q')
    search_input.send_keys('gherkin test case')
    search_input.send_keys(Keys.RETURN)

@then('results are shown for "gherkin test case"')
def search_results(browser):
    links_div = browser.find_elements(By.TAG_NAME, "li")
    assert len(links_div) > 0
