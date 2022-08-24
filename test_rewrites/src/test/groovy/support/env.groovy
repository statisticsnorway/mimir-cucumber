package no.ssb

import org.openqa.selenium.firefox.FirefoxDriver
import org.openqa.selenium.htmlunit.HtmlUnitDriver
import com.gargoylesoftware.htmlunit.BrowserVersion
import org.openqa.selenium.firefox.FirefoxProfile

this.metaClass.mixin(cucumber.api.groovy.Hooks)

if(System.getenv("CUCUMBER_ENV") == "test") {
	BaseUrl = "https://www.test.ssb.no"
} else if(System.getenv("CUCUMBER_ENV") == "qa-int") {
	BaseUrl = "https://i.qa.ssb.no"
} else if(System.getenv("CUCUMBER_ENV") == "qa-eks") {
	BaseUrl = "https://www.qa.ssb.no"
} else if(System.getenv("CUCUMBER_ENV") == "beta") {
	BaseUrl = "https://beta.ssb.no"
} else if(System.getenv("CUCUMBER_ENV") == "i") {
	BaseUrl = "https://i.ssb.no"
} else if(System.getenv("CUCUMBER_ENV") == "prod") {
	BaseUrl = "https://prod.ssb.no"
} else if(System.getenv("CUCUMBER_ENV") == "www") {
	BaseUrl = "https://www.ssb.no"
} else {
	BaseUrl = "https://www.qa.ssb.no"
}

Before() {
	if(System.getProperty("cucumber.browser") == "firefox") {
		browser = new FirefoxDriver(); 
	} else {
		browserVersion = BrowserVersion.FIREFOX_3
		browserVersion.setBrowserLanguage("no")		
		browser = new HtmlUnitDriver(browserVersion)
		//browser.setJavascriptEnabled(true);  
	}
}

After() { scenario ->
	
	browser.close()  
	browser.quit()
}

