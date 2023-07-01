import pytest

from pytest_bdd import given
from selenium import webdriver


# Constants

DUCKDUCKGO_HOME = 'https://duckduckgo.com/'


# Hooks

def pytest_bdd_step_error(request, feature, scenario, step, step_func, step_func_args, exception):
    print(f'Step failed: {step}')


# Fixtures

@pytest.fixture
def browser():
    options.add_argument('--headless')
    options.add_argument('--disable-dev-shm-usage')
    options.add_argument('---whitelisted-ips')
    options.add_argument('--no-sandbox')
    options.add_argument('--auth-server-whitelist=*.astrazeneca.com\\,*.astrazeneca.net\\*.astrazeneca-us.com,\\*.amazonaws.com')
    options.add_argument(
        '--auth-negotiate-delegate-whitelist=*.astrazeneca.com\\,*.astrazeneca.net\\*.astrazeneca-us.com,\\*.amazonaws.com')
    options.add_argument('--disable-extensions')
    b = webdriver.Chrome(options=options)
    b.implicitly_wait(5)
    yield b
    b.quit()


# Shared Given Steps

@given('the DuckDuckGo home page is displayed', target_fixture='ddg_home')
def ddg_home(browser):
    browser.get(DUCKDUCKGO_HOME)
