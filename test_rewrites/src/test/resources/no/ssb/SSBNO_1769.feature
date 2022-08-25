#language: no

Egenskap: Tester url-omskrivning for SSBNO-1769

  Scenario: Redirect kortnavn samer til en ny side
    Gitt at jeg går på "/samer"
    Så skal urlen være "/befolkning/folketall/statistikk/samiske-forhold"

  Scenario: Redirect tidligere nøkkeltallsider til en faktaside
    Gitt at jeg går på "/befolkning/nokkeltall/befolkning"
    Så skal urlen være "/befolkning/faktaside/befolkningen"

  Scenario: Redirect tidligere nøkkeltallsider til en faktaside
    Gitt at jeg går på "/befolkning/nokkeltall/likestilling"
    Så skal urlen være "/befolkning/faktaside/likestilling"

  Scenario: Redirect tidligere nøkkeltallsider til en faktaside
    Gitt at jeg går på "/innvandring-og-innvandrere/nokkeltall/innvandring"
    Så skal urlen være "/innvandring-og-innvandrere/faktaside/innvandring"

  Scenario: Redirect tidligere nøkkeltallsider til en faktaside
    Gitt at jeg går på "/utdanning/nokkeltall/utdanning"
    Så skal urlen være "/utdanning/faktaside/utdanning"

  