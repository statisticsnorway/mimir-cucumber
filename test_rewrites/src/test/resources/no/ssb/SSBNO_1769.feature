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

  Scenario: Redirect tidligere nøkkeltallsider til en faktaside
    Gitt at jeg går på "/nasjonalregnskap-og-konjunkturer/nokkeltall/norsk-okonomi"
    Så skal urlen være "/nasjonalregnskap-og-konjunkturer/faktaside/norsk-okonomi"

  Scenario: Redirect tidligere nøkkeltallsider til en artikkel
    Gitt at jeg går på "/arbeid-og-lonn/nokkeltall/oversiktstabeller"
    Så skal urlen være "/informasjon/oversiktstabeller-viderefort-fra-statistisk-arbok"

  Scenario: Redirect tidligere nøkkeltallsider til en artikkel
    Gitt at jeg går på "/bank-og-finansmarked/nokkeltall/bank-og-finansmarked-oversiktstabeller"
    Så skal urlen være "/informasjon/oversiktstabeller-viderefort-fra-statistisk-arbok"

  Scenario: Redirect tidligere nøkkeltallsider til en artikkel
    Gitt at jeg går på "/befolkning/nokkeltall/Befolkning_oversiktstabeller"
    Så skal urlen være "/informasjon/oversiktstabeller-viderefort-fra-statistisk-arbok"

  Scenario: Redirect tidligere nøkkeltallsider til en artikkel
    Gitt at jeg går på "/bygg-bolig-og-eiendom/nokkeltall/bygg-bolig-og-eiendom-oversiktstabeller"
    Så skal urlen være "/informasjon/oversiktstabeller-viderefort-fra-statistisk-arbok"

  Scenario: Redirect tidligere nøkkeltallsider til en artikkel
    Gitt at jeg går på "/energi-og-industri/nokkeltall/energi-og-industri-oversiktstabeller"
    Så skal urlen være "/informasjon/oversiktstabeller-viderefort-fra-statistisk-arbok"

  Scenario: Redirect tidligere nøkkeltallsider til en artikkel
    Gitt at jeg går på "/helse/nokkeltall/helse-oversiktstabeller"
    Så skal urlen være "/informasjon/oversiktstabeller-viderefort-fra-statistisk-arbok"

  Scenario: Redirect tidligere nøkkeltallsider til en artikkel
    Gitt at jeg går på "/inntekt-og-forbruk/nokkeltall/inntekt-og-forbruk-oversiktstabeller"
    Så skal urlen være "/informasjon/oversiktstabeller-viderefort-fra-statistisk-arbok"

  Scenario: Redirect tidligere nøkkeltallsider til en artikkel
    Gitt at jeg går på "/jord-skog-jakt-og-fiskeri/nokkeltall/jord-skog-jakt-og-fiskeri-oversiktstabeller"
    Så skal urlen være "/informasjon/oversiktstabeller-viderefort-fra-statistisk-arbok"

  Scenario: Redirect tidligere nøkkeltallsider til en artikkel
    Gitt at jeg går på "/kultur-og-fritid/nokkeltall/kultur-og-fritid-oversiktstabeller"
    Så skal urlen være "/informasjon/oversiktstabeller-viderefort-fra-statistisk-arbok"

  Scenario: Redirect tidligere nøkkeltallsider til en artikkel
    Gitt at jeg går på "/natur-og-miljo/nokkeltall/natur-og-milj%C3%B8-oversiktstabeller"
    Så skal urlen være "/informasjon/oversiktstabeller-viderefort-fra-statistisk-arbok"

  Scenario: Redirect tidligere nøkkeltallsider til en artikkel
    Gitt at jeg går på "/offentlig-sektor/nokkeltall/offentlig-sektor-oversiktstabeller"
    Så skal urlen være "/informasjon/oversiktstabeller-viderefort-fra-statistisk-arbok"

  Scenario: Redirect tidligere nøkkeltallsider til en artikkel
    Gitt at jeg går på "/priser-og-prisindekser/nokkeltall/priser-og-prisindekser-oversiktstabeller"
    Så skal urlen være "/informasjon/oversiktstabeller-viderefort-fra-statistisk-arbok"

  Scenario: Redirect tidligere nøkkeltallsider til en artikkel
    Gitt at jeg går på "/teknologi-og-innovasjon/nokkeltall/teknologi-og-innovasjon-oversiktstabeller"
    Så skal urlen være "/informasjon/oversiktstabeller-viderefort-fra-statistisk-arbok"

  Scenario: Redirect tidligere nøkkeltallsider til en artikkel
    Gitt at jeg går på "/transport-og-reiseliv/nokkeltall/transport-og-reiseliv-oversiktstabeller"
    Så skal urlen være "/informasjon/oversiktstabeller-viderefort-fra-statistisk-arbok"

  Scenario: Redirect tidligere nøkkeltallsider til en artikkel
    Gitt at jeg går på "/utdanning/nokkeltall/utdanning-oversiktstabeller"
    Så skal urlen være "/informasjon/oversiktstabeller-viderefort-fra-statistisk-arbok"

  Scenario: Redirect tidligere nøkkeltallsider til en artikkel
    Gitt at jeg går på "/utenriksokonomi/nokkeltall/utenriks%C3%B8konomi-oversiktstabeller"
    Så skal urlen være "/informasjon/oversiktstabeller-viderefort-fra-statistisk-arbok"

  Scenario: Redirect tidligere nøkkeltallsider til en artikkel
    Gitt at jeg går på "/valg/nokkeltall/val-oversiktstabellar"
    Så skal urlen være "/informasjon/oversiktstabeller-viderefort-fra-statistisk-arbok"

  Scenario: Redirect tidligere nøkkeltallsider til en artikkel
    Gitt at jeg går på "/virksomheter-foretak-og-regnskap/nokkeltall/verksemder-foretak-og-rekneskapar-oversiktstabellar "
    Så skal urlen være "/informasjon/oversiktstabeller-viderefort-fra-statistisk-arbok"

  Scenario: Redirect gamle tabeller til en artikkel
    Gitt at jeg går på "/303783/folkemengd-og-areal-etter-kommune-sa-57"
    Så skal urlen være "/informasjon/oversiktstabeller-viderefort-fra-statistisk-arbok"

  Scenario: Redirect gamle tabeller til en artikkel
    Gitt at jeg går på "/321768/kulldriften.svalbard-sa-379"
    Så skal urlen være "/informasjon/oversiktstabeller-viderefort-fra-statistisk-arbok"

  Scenario: Redirect gamle tabeller til en artikkel
    Gitt at jeg går på "/310025/egenrapportert-hoyde-og-vekt-for-sesjonspliktige-sa-108"
    Så skal urlen være "/informasjon/oversiktstabeller-viderefort-fra-statistisk-arbok"

  Scenario: Redirect gamle tabeller til en artikkel
    Gitt at jeg går på "/276359/totale-fou-utgifter-som-andel-av-bruttonasjonalprodukt-bnp-i-oecd-landene.mill.dollar-pps-og-prosent-sa-186"
    Så skal urlen være "/informasjon/oversiktstabeller-viderefort-fra-statistisk-arbok"