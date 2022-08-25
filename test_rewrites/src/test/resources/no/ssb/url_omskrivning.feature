#language: no

Egenskap: Tester url-omskrivning

Scenario: sjekk kortnavn mapping
   Gitt at jeg går på "/eiendomsoms"
   Så skal urlen være "/bygg-bolig-og-eiendom/eiendom/statistikk/eiendomsomsetning"

Scenario: sjekk kortnavn mapping på engelsk
   Gitt at jeg går på "/en/bygningsmasse"
   Så skal urlen være "/en/bygg-bolig-og-eiendom/bygg-og-anlegg/statistikk/bygningsmassen"

Scenario: sjekk kortnavn mapping på engelsk (på gammel måte)
   Gitt at jeg går på "/bygningsmasse_en"
   Så skal urlen være "/en/bygg-bolig-og-eiendom/bygg-og-anlegg/statistikk/bygningsmassen"

Scenario: sjekk kortnavn mapping med variant
   Gitt at jeg går på "/eiendomsoms/kvartal"
   Så skal urlen være "/eiendomsoms/kvartal"

