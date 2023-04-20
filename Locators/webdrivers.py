from webdriver_manager.chrome import ChromeDriverManager
from webdriver_manager.firefox import GeckoDriverManager
from webdriver_manager.microsoft import EdgeChromiumDriverManager

driver_path = None


def get_driver_path_with_browser(browser_name):
    global driver_path
    if browser_name.lower() == 'chrome':
        driver_path = ChromeDriverManager().install()
    elif browser_name.lower() == 'firefox':
        driver_path = GeckoDriverManager().install()
    elif browser_name.lower() == 'edge':
        driver_path = EdgeChromiumDriverManager().install()
    return driver_path
