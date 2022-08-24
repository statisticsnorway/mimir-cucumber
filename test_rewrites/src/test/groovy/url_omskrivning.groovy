package no.ssb

import org.openqa.selenium.By
import static org.junit.Assert.*
import static org.junit.matchers.JUnitMatchers.*
import static org.hamcrest.core.IsNot.not
import org.openqa.selenium.htmlunit.HtmlUnitDriver

this.metaClass.mixin(cucumber.api.groovy.Hooks)
this.metaClass.mixin(cucumber.api.groovy.EN)

Given(~'at jeg går på "([^"]*?)"') { sti ->
	println "Sjekker ${BaseUrl}${sti}"
    browser.get("${BaseUrl}${sti}")
}

Then(~'skal jeg se "([^"]*?)"') { String tekst ->
    assertThat(browser.getPageSource(), containsString(tekst))
}

Then(~'skal jeg se "([^"]*?)" eller "([^"]*?)"') { String tekst1, String tekst2 ->
    assertThat(browser.getPageSource(), either(containsString(tekst1)).or(containsString(tekst2)))
}

Then(~'skal jeg se "([^"]*?)" i frame "([^"]*?)"') { String tekst, String framename ->
	browser.switchTo().frame(framename)
	assertThat(browser.getPageSource(), containsString(tekst))
}

Then(~'skal urlen være "([^"]*?)"') { String sti ->
	if(!browser.getCurrentUrl().equals("${BaseUrl}${sti}".toString())){	
		println "* Forventet: ${BaseUrl}${sti}, faktisk: " + browser.getCurrentUrl() + "\n"
	}
	assertEquals(browser.getCurrentUrl(), "${BaseUrl}${sti}".toString())	
}

Then(~'skal urlen begynne med "([^"]*?)"') { String sti ->
	if(!browser.getCurrentUrl().startsWith("${sti}".toString())){	
		println "* forventet at url begynner med: ${BaseUrl}${sti}, faktisk: " + browser.getCurrentUrl() + "\n"
	}
	assertTrue(browser.getCurrentUrl().startsWith("${BaseUrl}${sti}".toString()))	
}

Then(~'skal urlen slutte på "([^"]*?)"') { String sti ->
	if(!browser.getCurrentUrl().endsWith("${sti}".toString())){	
		println "* forventet at url sluttet på: ${sti}, faktisk: " + browser.getCurrentUrl() + "\n"
	}
	assertTrue(browser.getCurrentUrl().endsWith("${sti}".toString()))	
}

Then(~'skal urlen inneholde "([^"]*?)"') { String sti ->
	if(!browser.getCurrentUrl().contains("${sti}".toString())) {
		println "* forventer at url skal inneholde: ${sti}, faktisk: " + browser.getCurrentUrl() + "\n"
	}
	assertTrue(browser.getCurrentUrl().contains("${sti}".toString()))
}

Then(~'skal urlen være "([^"]*?)" i frame "([^"]*?)"') {String sti, String framename ->
	browser.switchTo().frame(framename)
	if(!browser.getCurrentUrl().startsWith("${BaseUrl}${sti}".toString())) {
		println "* Forventet: ${BaseUrl}${sti}, faktisk: " + browser.getCurrentUrl() + "\n"
	}
	assertTrue(browser.getCurrentUrl().startsWith("${BaseUrl}${sti}".toString()))
}

