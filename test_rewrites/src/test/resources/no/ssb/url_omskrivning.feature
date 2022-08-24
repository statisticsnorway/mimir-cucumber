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

Scenario: sjekk kortnavn mapping med variant på engelsk
   Gitt at jeg går på "/en/bygningsmasse/aar"
   Så skal urlen være "/en/bygningsmasse/aar"

Scenario: ivareta parameter ettet kortnavn
   Gitt at jeg går på "/eiendomsoms?fane=om"
   Så skal urlen være "/bygg-bolig-og-eiendom/eiendom/statistikk/eiendomsomsetning?fane=om"

Scenario: ivareta parameter ettet kortnavn på engelsk
   Gitt at jeg går på "/en/bygningsmasse?fane=om"
   Så skal urlen være "/en/bygg-bolig-og-eiendom/bygg-og-anlegg/statistikk/bygningsmassen?fane=om"

Scenario: sjekk stripping av tullball etter kortnavn
   Gitt at jeg går på "/eiendomsoms/tullball/mertullball"
   Så skal urlen være "/bygg-bolig-og-eiendom/eiendom/statistikk/eiendomsomsetning"

Scenario: sjekk stripping av tullball etter kortnavn på engelsk
   Gitt at jeg går på "/en/bygningsmasse/tullball/mertullball"
   Så skal urlen være "/en/bygg-bolig-og-eiendom/bygg-og-anlegg/statistikk/bygningsmassen"

Scenario: sjekk stripping av tullball etter kortnavn med variant
   Gitt at jeg går på "/eiendomsoms/kvartal/tullball/mertullball"
   Så skal urlen være "/eiendomsoms/kvartal"

Scenario: sjekk stripping av tullball etter kortnavn med variant på engelsk
   Gitt at jeg går på "/en/bygningsmasse/aar/tullball/mertullball"
   Så skal urlen være "/en/bygningsmasse/aar"

Scenario: sjekk snarvei til om-statistikken for kortnavn
   Gitt at jeg går på "/eiendomsoms/om.html"
   Så skal urlen slutte på "/bygg-bolig-og-eiendom/eiendom/statistikk/eiendomsomsetning?fane=om"

Scenario: sjekk snarvei til om-statistikken for kortnavn på engelsk
   Gitt at jeg går på "/en/bygningsmasse/about.html"
   Så skal urlen slutte på "/en/bygg-bolig-og-eiendom/bygg-og-anlegg/statistikk/bygningsmassen?fane=om"

Scenario: sjekk snarvei til kortnavn fra gammel emnestruktur (emnne)
   Gitt at jeg går på "/emne/10/14/eiendomsoms"
   Så skal urlen være "/bygg-bolig-og-eiendom/eiendom/statistikk/eiendomsomsetning"

Scenario: sjekk snarvei til kortnavn fra gammel emnestruktur på engelsk (subject)
   Gitt at jeg går på "/en/subject/10/09/bygningsmasse_en"
   Så skal urlen være "/en/bygg-bolig-og-eiendom/bygg-og-anlegg/statistikk/bygningsmassen"

Scenario: sjekk snarvei til kortnavn fra gammel emnestruktur på engelsk (subject)
   Gitt at jeg går på "/english/subject/10/09/bygningsmasse_en"
   Så skal urlen være "/en/bygg-bolig-og-eiendom/bygg-og-anlegg/statistikk/bygningsmassen"

Scenario: sjekk snarvei til kortnavn fra gammel emnestruktur på engelsk (subjectS)
   Gitt at jeg går på "/english/subjects/10/09/bygningsmasse_en"
   Så skal urlen være "/en/bygg-bolig-og-eiendom/bygg-og-anlegg/statistikk/bygningsmassen"

Scenario: gammelt emne mappes til nytt (emnne)
   Gitt at jeg går på "/emne/00/02/10"
   Så skal urlen være "/befolkning"

Scenario: gammelt emne mappes til nytt (emnneR)
   Gitt at jeg går på "/emner/00/02/10"
   Så skal urlen være "/befolkning"

Scenario: gammelt emne mappes til nytt på engelsk (subject)
   Gitt at jeg går på "/en/subject/00/02/10"
   Så skal urlen være "/en/befolkning"

Scenario: gammelt emne mappes til nytt på engelsk (subject)
   Gitt at jeg går på "/english/subject/00/02/10"
   Så skal urlen være "/en/befolkning"

Scenario: gammelt emne mappes til nytt på engelsk (subjectS)
   Gitt at jeg går på "/english/subjects/00/02/10"
   Så skal urlen være "/en/befolkning"

Scenario: /emne skal gå til forsiden
   Gitt at jeg går på "/emne/"
   Så skal urlen være "/"

Scenario: /emner skal gå til forsiden
   Gitt at jeg går på "/emner"
   Så skal urlen være "/"

Scenario: stripp vis fra urlen
   Gitt at jeg går på "/vis/eiendomsoms?fane=om"
   Så skal urlen være "/bygg-bolig-og-eiendom/eiendom/statistikk/eiendomsomsetning?fane=om"

Scenario: standardtegn.html til lamp
   Gitt at jeg går på "/standardtegn.html"
   Så skal urlen være "/a/standardtegn.html"

Scenario: symbols.html til lamp (eng)
   Gitt at jeg går på "/english/symbols.html"
   Så skal urlen være "/a/english/symbols.html"

Scenario: symbols.html til lamp (eng)
   Gitt at jeg går på "/en/symbols.html"
   Så skal urlen være "/a/english/symbols.html"

Scenario: histstat til lamp
  Gitt at jeg går på "/histstat"
  Så skal urlen være "/a/histstat/"

Scenario: histstat til lamp
  Gitt at jeg går på "/historisk"
  Så skal urlen være "/a/histstat/"

Scenario: histstat til lamp
  Gitt at jeg går på "/emner/historisk_statistikk/"
  Så skal urlen være "/a/histstat/"

Scenario: histstat til lamp (eng)
  Gitt at jeg går på "/english/subjects/00/histstat"
  Så skal urlen være "/a/en/histstat/"

Scenario: histstat til lamp (eng)
  Gitt at jeg går på "/en/histstat"
  Så skal urlen være "/a/en/histstat/"

Scenario: mikrodata til ny sti i enonic
  Gitt at jeg går på "/mikrodata"
  Så skal urlen være "/data-til-forskning"

  Scenario: gammel mikrodata-url til ny sti i enonic
  Gitt at jeg går på "/a/mikrodata"
  Så skal urlen være "/data-til-forskning"

Scenario: mikrodata til lamp (eng)
  Gitt at jeg går på "/a/en/mikrodata"
  Så skal urlen være "/a/en/mikrodata/main.shtml" i frame "main"

Scenario: mikrodata til lamp (eng)
  Gitt at jeg går på "/a/english/mikrodata"
  Så skal urlen være "/a/english/mikrodata/main.shtml" i frame "main"

Scenario: mikrodata til lamp (eng)
  Gitt at jeg går på "/a/en/mikrodata_en"
  Så skal urlen være "/a/en/mikrodata_en/main.shtml" i frame "main"

Scenario: mikrodata til lamp (eng)
  Gitt at jeg går på "/a/english/mikrodata_en"
  Så skal urlen være "/a/english/mikrodata_en/main.shtml" i frame "main"

Scenario: minifakta til ny sti i enonic
  Gitt at jeg går på "/minifakta"
  Så skal urlen være "/befolkning/artikler-og-publikasjoner/minifakta-om-norge"

Scenario: minifakta til ny sti i enonic via emner
  Gitt at jeg går på "/emner/00/minifakta"
  Så skal urlen være "/befolkning/artikler-og-publikasjoner/minifakta-om-norge"

Scenario: minifakta til ny sti i enonic via forkortede emner
  Gitt at jeg går på "/00/minifakta"
  Så skal urlen være "/befolkning/artikler-og-publikasjoner/minifakta-om-norge"

Scenario: minifakta til ny sti i enonic (eng)
  Gitt at jeg går på "/english/minifakta"
  Så skal urlen være "/en/befolkning/artikler-og-publikasjoner/minifacts-about-norway"

Scenario: minifakta til ny sti i enonic via subjects (eng)
  Gitt at jeg går på "/english/subjects/00/minifakta_en"
  Så skal urlen være "/en/befolkning/artikler-og-publikasjoner/minifacts-about-norway"

Scenario: minifakta til ny sti i enonic via forkortet subjects (eng)
  Gitt at jeg går på "/en/00/minifakta_en"
  Så skal urlen være "/en/befolkning/artikler-og-publikasjoner/minifacts-about-norway"

Scenario: minifakta_en ny sti i enonic lamp (eng)
  Gitt at jeg går på "/minifakta_en"
  Så skal urlen være "/en/befolkning/artikler-og-publikasjoner/minifacts-about-norway"

Scenario: minifacts til ny sti i enonic (eng)
  Gitt at jeg går på "/minifacts"
  Så skal urlen være "/en/befolkning/artikler-og-publikasjoner/minifacts-about-norway"

Scenario: en/minifacts til ny sti i enonic (eng)
  Gitt at jeg går på "/en/minifacts"
  Så skal urlen være "/en/befolkning/artikler-og-publikasjoner/minifacts-about-norway"

Scenario: redirect folketellinger til LAMP
   Gitt at jeg går på "/folketellinger"
   Så skal urlen være "/a/folketellinger/" i frame "main"

Scenario: redirect folketelling til LAMP
   Gitt at jeg går på "/folketelling"
   Så skal urlen være "/a/folketellinger/" i frame "main"

Scenario: redirect folkeogboligtelling til LAMP
   Gitt at jeg går på "/folkeogboligtelling"
   Så skal urlen være "/a/folketellinger/" i frame "main"

Scenario: redirect folketeljing til LAMP
   Gitt at jeg går på "/folketeljing"
   Så skal urlen være "/a/folketellinger/" i frame "main"

Scenario: redirect folketelling til LAMP
   Gitt at jeg går på "/emner/02/01/folketelling"
   Så skal urlen være "/a/folketellinger/" i frame "main"

Scenario: redirect fob2001 til LAMP
   Gitt at jeg går på "/fob2001"
   Så skal urlen være "/a/fob2001/" i frame "main"

Scenario: redirect fob til LAMP
   Gitt at jeg går på "/fob"
   Så skal urlen være "/a/fob2001/" i frame "main"

Scenario: redirect fob2000 til LAMP
   Gitt at jeg går på "/fob2000"
   Så skal urlen være "/a/fob2001/" i frame "main"

Scenario: redirect boligtelling til LAMP
   Gitt at jeg går på "/boligtelling"
   Så skal urlen være "/a/fob2001/" i frame "main"

Scenario: redirect budstadteljing til LAMP
   Gitt at jeg går på "/budstadteljing"
   Så skal urlen være "/a/fob2001/" i frame "main"

Scenario: redirect no/fob2001  til LAMP
   Gitt at jeg går på "/no/fob2001"
   Så skal urlen være "/a/fob2001/" i frame "main"

Scenario: redirect emner/02/01/fob2001 til LAMP
   Gitt at jeg går på "/emner/02/01/fob2001"
   Så skal urlen være "/a/fob2001/" i frame "main"

Scenario: redirect fob2001_en  til LAMP
   Gitt at jeg går på "/fob2001_en"
   Så skal urlen være "/a/en/fob2001/" i frame "main"

Scenario: redirect fob2001_en  til LAMP
   Gitt at jeg går på "/en/fob2001"
   Så skal urlen være "/a/en/fob2001/" i frame "main"

Scenario: redirect english/subjects/02/01/fob2001_en  til LAMP
   Gitt at jeg går på "/english/subjects/02/01/fob2001_en"
   Så skal urlen være "/a/en/fob2001/" i frame "main"

Scenario: ikke lenger redirect metadata til LAMP
   Gitt at jeg går på "/metadata"
   Så skal urlen være "/metadata"

Scenario: ikke lenger redirect metadata til LAMP (eng)
   Gitt at jeg går på "/english/metadata"
   Så skal urlen være "/english/metadata"

Scenario: ikke lenger redirect forskning til LAMP
   Gitt at jeg går på "/forskning"
   Så skal urlen være "/forskning"

Scenario: ikke lenger redirect forskning til LAMP (en)
   Gitt at jeg går på "/en/forskning"
   Så skal urlen begynne med "/en/forskning"

Scenario: redirect til lamp med prefix a/publikasjoner/pdf for DOC pdf filer
   Gitt at jeg går på "/emner/00/90/doc_200010/doc_200010.pdf"
   Så skal urlen være "/a/publikasjoner/pdf/doc_200010/doc_200010.pdf"

Scenario: redirect til lamp med prefix a/english/publikasjoner/pdf for eng DOC pdf filer
   Gitt at jeg går på "/english/subjects/09/90/doc_200908_en/doc_200908_en.pdf"
   Så skal urlen være "/a/english/publikasjoner/pdf/doc_200908_en/doc_200908_en.pdf"

Scenario: redirect til /rss/?lang=en for /en/rss
   Gitt at jeg går på "/en/rss"
   Så skal urlen være "/rss/?lang=en"

Scenario: redirect til /statistikkbanken for /sb
   Gitt at jeg går på "/sb"
   Så skal urlen slutte på "/statbank"

Scenario: redirect for /publikasjoner/publikasjonsoversikt_1977-1996.pdf
   Gitt at jeg går på "/publikasjoner/publikasjonsoversikt_1977-1996.pdf"
   Så skal urlen være "/a/publikasjoner/publikasjonsoversikt_1977-1996.pdf"

Scenario: redirect /publikasjoner/etter_serie/
   Gitt at jeg går på "/publikasjoner/etter_serie/"
   Så skal urlen være "/informasjon/publikasjonsserier"

Scenario: redirect magasinet til CMS
   Gitt at jeg går på "/magasinet"
   Så skal urlen være "/informasjon/publikasjonsserier"

Scenario: redirect magasinet til CMS (eng)
   Gitt at jeg går på "/english/magazine"
   Så skal urlen være "/en/informasjon/publication-series"

Scenario: redirect ssp til CMS
   Gitt at jeg går på "/ssp"
   Så skal urlen være "/sosiale-forhold-og-kriminalitet/ssp"

Scenario: redirect samfunnsspeilet til CMS
   Gitt at jeg går på "/samfunnsspeilet"
   Så skal urlen være "/sosiale-forhold-og-kriminalitet/ssp"

Scenario: redirect samfunnsspeilet pdf til LAMP
   Gitt at jeg går på "/samfunnsspeilet/utg/200304/ssp.pdf"
   Så skal urlen være "/a/samfunnsspeilet/utg/200304/ssp.pdf"

Scenario: redirect samfunnsspeilet pdf (histstat) til LAMP
   Gitt at jeg går på "/histstat/ssp/ssp_198801.pdf"
   Så skal urlen være "/a/histstat/ssp/ssp_198801.pdf"

Scenario: redirect samfunnsspeilet til CMS
   Gitt at jeg går på "/samfunnsspeilet/tullball"
   Så skal urlen være "/sosiale-forhold-og-kriminalitet/ssp"

Scenario: redirect samfunnsspeilet/utg til CMS
   Gitt at jeg går på "/samfunnsspeilet/utg/tullball"
   Så skal urlen være "/sosiale-forhold-og-kriminalitet/ssp"

Scenario: redirect DOC
   Gitt at jeg går på "/publikasjoner/etter_serie/doc/"
   Så skal urlen være "/informasjon/publikasjonsserier"

Scenario: redirect DOC (pdf) til LAMP
   Gitt at jeg går på "/emner/01/04/doc_200003/doc_200003.pdf"
   Så skal urlen være "/a/publikasjoner/pdf/doc_200003/doc_200003.pdf"

Scenario: redirect NOTAT (pdf) til LAMP
   Gitt at jeg går på "/emner/00/01/rapp_valg/notat_201129/notat_201129.pdf"
   Så skal urlen være "/a/publikasjoner/pdf/notat_201129/notat_201129.pdf"

Scenario: redirect NOTAT (pdf) uten /emner/ til LAMP
   Gitt at jeg går på "/02/02/20/rapp_monitor_flytting/notat_200950/notat_200950.pdf"
   Så skal urlen være "/a/publikasjoner/pdf/notat_200950/notat_200950.pdf"

Scenario: redirect NOTAT (pdf) under /publikasjoner/etter_serie/ til LAMP
   Gitt at jeg går på "/publikasjoner/etter_serie/not/notat_9957/notat_9957.pdf"
   Så skal urlen være "/a/publikasjoner/pdf/notat_9957/notat_9957.pdf"

Scenario: redirect RAPP
   Gitt at jeg går på "/publikasjoner/etter_serie/rapp/"
   Så skal urlen være "/informasjon/publikasjonsserier"

Scenario: redirect RAPP (pdf) til LAMP
   Gitt at jeg går på "/emner/10/03/rapp_201125/rapp_201125.pdf"
   Så skal urlen være "/a/publikasjoner/pdf/rapp_201125/rapp_201125.pdf"

Scenario: redirect NOS (fail) til LAMP
  Gitt at jeg går på "/publikasjoner/etter_serie/tidligere.html"
  Så skal urlen være "/a/nos/" i frame "main"

Scenario: redirect NOS til LAMP
  Gitt at jeg går på "/emner/08/03/20/nos_ogibkoms/nos_d439/"
  Så skal urlen være "/a/nos/" i frame "main"

Scenario: redirect NOS (pdf) til LAMP
   Gitt at jeg går på "/emner/08/03/20/nos_ogibkoms/nos_d439/nos_d439.pdf"
   Så skal urlen være "/a/publikasjoner/pdf/nos_d439/nos_d439.pdf"

Scenario: redirect ØA til CMS
   Gitt at jeg går på "/oa"
   Så skal urlen være "/nasjonalregnskap-og-konjunkturer/oa"

Scenario: redirect ØA (pdf) til LAMP
   Gitt at jeg går på "/emner/08/05/10/oa/201104/brunborg1.pdf"
   Så skal urlen være "/a/publikasjoner/pdf/oa_201104/brunborg1.pdf"

Scenario: redirect ØA (pdf) til LAMP
   Gitt at jeg går på "/oa/0898/skoglund.pdf"
   Så skal urlen være "/a/publikasjoner/pdf/oa_0898/skoglund.pdf"

Scenario: redirect SA
   Gitt at jeg går på "/publikasjoner/etter_serie/sa/"
   Så skal urlen være "/informasjon/publikasjonsserier"

Scenario: redirect SA (pdf) til LAMP
   Gitt at jeg går på "/emner/01/rapp_indikator_utvikling/sa_123/sa_123.pdf"
   Så skal urlen være "/a/publikasjoner/pdf/sa_123/sa_123.pdf"

Scenario: redirect SA (pdf) til LAMP
   Gitt at jeg går på "/emner/10/04/sa_landbruk/landbruk2007/sa_101.pdf"
   Så skal urlen være "/a/publikasjoner/pdf/sa_101/sa_101.pdf"

Scenario: redirect SA (pdf) til LAMP
   Gitt at jeg går på "/medie/sa121/mediebruk_til_ulike_tider.pdf"
   Så skal urlen være "/a/publikasjoner/pdf/sa121/mediebruk_til_ulike_tider.pdf"

Scenario: redirect SØS
   Gitt at jeg går på "/publikasjoner/etter_serie/soes/"
   Så skal urlen være "/informasjon/publikasjonsserier"

Scenario: redirect SØS (pdf) til LAMP
   Gitt at jeg går på "/emner/02/sos109/sos109.pdf"
   Så skal urlen være "/a/publikasjoner/pdf/sos109/sos109.pdf"

Scenario: redirect DP
   Gitt at jeg går på "/publikasjoner/etter_serie/dp/"
   Så skal urlen være "/informasjon/publikasjonsserier"

Scenario: redirect DP (pdf) til LAMP
   Gitt at jeg går på "/publikasjoner/pdf/dp660.pdf"
   Så skal urlen være "/a/publikasjoner/pdf/DP/dp660.pdf"

Scenario: redirect PM (pdf) til LAMP
   Gitt at jeg går på "/publikasjoner/pdf/pm-201109.pdf"
   Så skal urlen være "/a/publikasjoner/pdf/DP/pm-201109.pdf"

Scenario: redirect DOC (pdf) til LAMP (eng)
   Gitt at jeg går på "/english/subjects/08/02/20/doc_201131_en/doc_201131_en.pdf"
   Så skal urlen være "/a/english/publikasjoner/pdf/doc_201131_en/doc_201131_en.pdf"

Scenario: redirect NOT (eng)
   Gitt at jeg går på "/english/publications/etter_serie/not/"
   Så skal urlen være "/en/informasjon/publication-series"

Scenario: redirect NOT (pdf) til LAMP (eng)
   Gitt at jeg går på "/english/subjects/08/02/20/doc_201131_en/doc_201131_en.pdf"
   Så skal urlen være "/a/english/publikasjoner/pdf/doc_201131_en/doc_201131_en.pdf"

Scenario: redirect RAPP (eng)
   Gitt at jeg går på "/english/publications/etter_serie/rapp/"
   Så skal urlen være "/en/informasjon/publication-series"

Scenario: redirect RAPP (pdf) til LAMP (eng)
   Gitt at jeg går på "/english/subjects/06/01/rapp_200931_en/rapp_200931_en.pdf"
   Så skal urlen være "/a/english/publikasjoner/pdf/rapp_200931_en/rapp_200931_en.pdf"

Scenario: redirect NOS til LAMP (english)
  Gitt at jeg går på "/english/publications/etter_serie/nos/"
  Så skal urlen være "/a/english/nos/main.html" i frame "main"

Scenario: redirect NOS (fail) til LAMP (english)
  Gitt at jeg går på "/english/subjects/10/05/nos_laksogsjoaure_en/"
  Så skal urlen være "/a/en/nos/" i frame "main"

Scenario: redirect NOS (pdf) til LAMP (eng)
   Gitt at jeg går på "/english/subjects/00/00/20/nos_d443_en/nos_d443_en.pdf"
   Så skal urlen være "/a/english/publikasjoner/pdf/nos_d443_en/nos_d443_en.pdf"

Scenario: redirect SA (eng)
   Gitt at jeg går på "/english/publications/etter_serie/sa/"
   Så skal urlen være "/en/informasjon/publication-series"

Scenario: redirect SA (pdf) til LAMP (eng)
   Gitt at jeg går på "/english/subjects/02/sa_innvand_en/sa104/sa104_en.pdf"
   Så skal urlen være "/a/english/publikasjoner/pdf/sa104/sa104_en.pdf"

Scenario: redirect SA (pdf) til LAMP (eng)
   Gitt at jeg går på "/english/subjects/01/sa_nrm/arkiv/nrm2006/sa88.pdf"
   Så skal urlen være "/a/english/publikasjoner/pdf/sa88/sa88.pdf"

Scenario: redirect SØS (eng)
   Gitt at jeg går på "/english/publications/etter_serie/soes/"
   Så skal urlen være "/en/informasjon/publication-series"

Scenario: redirect SØS (pdf) til LAMP (eng)
   Gitt at jeg går på "/emner/02/03/sos101/sos101.pdf"
   Så skal urlen være "/a/publikasjoner/pdf/sos101/sos101.pdf"

Scenario: redirect DP (eng)
   Gitt at jeg går på "/english/publications/etter_serie/dp/"
   Så skal urlen være "/en/informasjon/publication-series"

Scenario: redirect tabell id til statbank
  Gitt at jeg går på "/tabell/06046"
  Så skal urlen inneholde "/statbank/table/06046"

Scenario: redirect tabell id til statbank med trailing /
  Gitt at jeg går på "/tabell/06046/"
  Så skal urlen inneholde "/statbank/table/06046"

Scenario: redirect tabell id til statbank (eng)
  Gitt at jeg går på "/english/table/06046"
  Så skal urlen inneholde "/en/statbank/table/06046"

Scenario: redirect tabell id til statbank (eng) med trailing /
  Gitt at jeg går på "/english/table/06046/"
  Så skal urlen inneholde "/en/statbank/table/06046"

Scenario: redirect tabell kortnavn til statbank
  Gitt at jeg går på "/tabell/yrkeaku"
  Så skal urlen inneholde "/statbank/list/yrkeaku"

Scenario: redirect tabell kortnavn til statbank med trailing /
  Gitt at jeg går på "/tabell/yrkeaku/"
  Så skal urlen inneholde "/statbank/list/yrkeaku"

Scenario: redirect tabell kortnavn til statbank (eng)
  Gitt at jeg går på "/english/table/yrkeaku"
  Så skal urlen inneholde "/en/statbank/list/yrkeaku"

Scenario: redirect tabell kortnavn til statbank (eng) med trailing /
  Gitt at jeg går på "/english/table/yrkeaku/"
  Så skal urlen inneholde "/en/statbank/list/yrkeaku"

  # PxWeb Rewrites

  Scenario: redirect statistikbanken selectvarval URL til ny med kun MainTable parameter
    Gitt at jeg går på "/statistikkbanken/selectvarval/Define.asp?MainTable=KPI"
    Så skal urlen inneholde "/statbank/table/03013"

  Scenario: redirect statistikbanken selectvarval URL til ny med MainTable og norsk språk parameter
    Gitt at jeg går på "/statistikkbanken/selectvarval/Define.asp?MainTable=KPI&nvl=&PLanguage=0"
    Så skal urlen inneholde "/statbank/table/03013"

  Scenario: redirect statistikbanken selectvarval URL til ny med MainTable og Engelsk språk parameter
    Gitt at jeg går på "/statistikkbanken/selectvarval/Define.asp?MainTable=KPI&nvl=&PLanguage=1"
    Så skal urlen inneholde "/en/statbank/table/03013"

  Scenario: redirect statistikbanken selectvarval URL til ny med kun KortNavnWeb parameter
    Gitt at jeg går på "/statistikkbanken/selectvarval/Define.asp?KortNavnWeb=kpi"
    Så skal urlen inneholde "/statbank/list/kpi"

  Scenario: redirect statistikbanken selectvarval URL til ny med KortNavnWeb og norsk språk parameter
    Gitt at jeg går på "/statistikkbanken/selectvarval/Define.asp?KortNavnWeb=kpi&PLanguage=0"
    Så skal urlen inneholde "/statbank/list/kpi"

  Scenario: redirect statistikbanken selectvarval URL til ny med KortNavnWeb og engelsk språk parameter
    Gitt at jeg går på "/statistikkbanken/selectvarval/Define.asp?KortNavnWeb=kpi&PLanguage=1"
    Så skal urlen inneholde "/en/statbank/list/kpi"



  Scenario: redirect statistikbanken selecttable URL til ny med kun MainTable parameter
    Gitt at jeg går på "/statistikkbanken/selecttable/Define.asp?MainTable=KPI"
    Så skal urlen inneholde "/statbank/table/03013"

  Scenario: redirect statistikbanken selecttable URL til ny med MainTable og norsk språk parameter
    Gitt at jeg går på "/statistikkbanken/selecttable/Define.asp?MainTable=KPI&nvl=&PLanguage=0"
    Så skal urlen inneholde "/statbank/table/03013"

  Scenario: redirect statistikbanken selecttable URL til ny med MainTable og Engelsk språk parameter
    Gitt at jeg går på "/statistikkbanken/selecttable/Define.asp?MainTable=KPI&nvl=&PLanguage=1"
    Så skal urlen inneholde "/en/statbank/table/03013"

  Scenario: redirect statistikbanken selecttable URL til ny med kun KortNavnWeb parameter
    Gitt at jeg går på "/statistikkbanken/selecttable/Define.asp?KortNavnWeb=kpi"
    Så skal urlen inneholde "/statbank/list/kpi"

  Scenario: redirect statistikbanken selecttable URL til ny med KortNavnWeb og norsk språk parameter
    Gitt at jeg går på "/statistikkbanken/selecttable/Define.asp?KortNavnWeb=kpi&PLanguage=0"
    Så skal urlen inneholde "/statbank/list/kpi"

  Scenario: redirect statistikbanken selecttable URL til ny med KortNavnWeb og engelsk språk parameter
    Gitt at jeg går på "/statistikkbanken/selecttable/Define.asp?KortNavnWeb=kpi&PLanguage=1"
    Så skal urlen inneholde "/en/statbank/list/kpi"


  Scenario: redirect statistikbanken RedirectToDefineFromTabellId URL til ny med Tabellid og default språk (norsk)
    Gitt at jeg går på "/statistikkbanken/SelectTable/RedirectToDefineFromTabellId.asp?Tabellid=06046"
    Så skal urlen inneholde "/statbank/table/06046"

  Scenario: redirect statistikbanken RedirectToDefineFromTabellId URL til ny med Tabellid og engelsk språk parameter
    Gitt at jeg går på "/statistikkbanken/SelectTable/RedirectToDefineFromTabellId.asp?Tabellid=06046&PLanguage=1"
    Så skal urlen inneholde "/en/statbank/table/06046"



  Scenario: redirect statbank
  Gitt at jeg går på "/sb"
  Så skal urlen slutte på "/statbank"

Scenario: redirect AArbok på LAMP
  Gitt at jeg går på "/aarbok"
  Så skal urlen være "/a/aarbok/" i frame "main"

Scenario: redirect Barn og unge til LAMP
  Gitt at jeg går på "/barnogunge"
  Så skal urlen være "/a/barnogunge/" i frame "main"

Scenario: redirect Barn og unge til LAMP
  Gitt at jeg går på "/barn_og_unge"
  Så skal urlen være "/a/barnogunge/" i frame "main"

Scenario: redirect Barn og unge til LAMP
  Gitt at jeg går på "/emner/02/barn_og_unge/"
  Så skal urlen være "/a/barnogunge/" i frame "main"

Scenario: redirect Barn og unge til LAMP
  Gitt at jeg går på "/emner/02/barn_og_unge/2011/barnehage/"
  Så skal urlen være "/a/barnogunge/2011/barnehage/" i frame "main"

Scenario: redirect kostra til CMS
  Gitt at jeg går på "/kostra"
  Så skal urlen være "/offentlig-sektor/kostra/"

Scenario: redirect kostra til CMS (en)
  Gitt at jeg går på "/en/kostra"
  Så skal urlen være "/en/offentlig-sektor/kostra/"

Scenario: redirect dette er svalbard til LAMP
  Gitt at jeg går på "/dette_er_svalbard/"
  Så skal urlen være "/befolkning/artikler-og-publikasjoner/dette-er-svalbard/"

Scenario: redirect dette er svalbard til LAMP (en)
  Gitt at jeg går på "/this_is_svalbard/"
  Så skal urlen være "/en/befolkning/artikler-og-publikasjoner/this-is-svalbard/"

Scenario: redirect dette er svalbard til LAMP (ru)
  Gitt at jeg går på "/english/subjects/00/00/20/this_is_russia/"
  Så skal urlen være "/en/befolkning/artikler-og-publikasjoner/_attachment/39989?_ts=132ba29bc90"

Scenario: redirect Minifakta til ny sti i enonic
  Gitt at jeg går på "/minifakta"
  Så skal urlen være "/befolkning/artikler-og-publikasjoner/minifakta-om-norge"

Scenario: redirect minfakta til ny sti i enonic (en)
  Gitt at jeg går på "/english/subjects/00/minifakta_en"
  Så skal urlen være "/en/befolkning/artikler-og-publikasjoner/minifacts-about-norway"

Scenario: redirect minfakta lamp sti til ny sti i enonic (en)
  Gitt at jeg går på "/a/minifakta"
  Så skal urlen være "/befolkning/artikler-og-publikasjoner/minifakta-om-norge"

Scenario: redirect minfakta lamp sti til ny sti i enonic (en)
  Gitt at jeg går på "/a/en/minifakta"
  Så skal urlen være "/en/befolkning/artikler-og-publikasjoner/minifacts-about-norway"

Scenario: redirect minfakta lamp sti til ny sti i enonic (english)
  Gitt at jeg går på "/a/english/minifakta"
  Så skal urlen være "/en/befolkning/artikler-og-publikasjoner/minifacts-about-norway"

Scenario: redirect japansk minfakta sti til engelsk sti i enonic (en)
  Gitt at jeg går på "/en/minifakta/jp/"
  Så skal urlen være "/en/befolkning/artikler-og-publikasjoner/minifacts-about-norway"

Scenario: redirect japansk minfakta sti til engelsk sti i enonic (english)
  Gitt at jeg går på "/english/minifakta/jp/"
  Så skal urlen være "/en/befolkning/artikler-og-publikasjoner/minifacts-about-norway"

Scenario: redirect japansk minfakta lamp sti til engelsk sti i enonic (en)
  Gitt at jeg går på "/a/en/minifakta/jp/"
  Så skal urlen være "/en/befolkning/artikler-og-publikasjoner/minifacts-about-norway"

Scenario: redirect japansk minfakta lamp sti til engelsk sti i enonic (english)
  Gitt at jeg går på "/a/english/minifakta/jp/"
  Så skal urlen være "/en/befolkning/artikler-og-publikasjoner/minifacts-about-norway"

Scenario: redirect Dette er Norge til LAMP
  Gitt at jeg går på "/norge/"
  Så skal urlen være "/befolkning/artikler-og-publikasjoner/dette-er-norge/"

Scenario: redirect This in Norway til LAMP
  Gitt at jeg går på "/english/subjects/00/norge_en"
  Så skal urlen være "/en/befolkning/artikler-og-publikasjoner/this-is-norway/"

Scenario: redirect Dette er Kari og Ola til LAMP
  Gitt at jeg går på "/ola_kari/"
  Så skal urlen være "/befolkning/artikler-og-publikasjoner/dette-er-kari-og-ola/"

Scenario: redirect Women and men in Norway til LAMP
  Gitt at jeg går på "/ola_kari_en/"
  Så skal urlen være "/en/befolkning/artikler-og-publikasjoner/men-and-women-in-norway/"

Scenario: redirect Bestilling til LAMP
  Gitt at jeg går på "/bestilling/salg.html"
  Så skal urlen være "/bestilling/"

Scenario: redirect Bestilling til LAMP (en)
  Gitt at jeg går på "/english/order/selling.html"
  Så skal urlen være "/en/bestilling/"

Scenario: redirect Varefortegnelsen for utenrikshandelen
  Gitt at jeg går på "/emner/09/05/nos_varefortegn/"
  Så skal urlen være "/utenriksokonomi/utenrikshandel/artikler/statistisk-varefortegnelse-for-utenrikshandelen/"

Scenario: redirect Economic survey
  Gitt at jeg går på "/english/subjects/08/05/kt_en/"
  Så skal urlen være "/en/nasjonalregnskap-og-konjunkturer?se=Economic+survey"

Scenario: redirect Nordisk statistisk årbok
  Gitt at jeg går på "/emner/00/00/30/saa_nord/"
  Så skal urlen være "/befolkning/artikler-og-publikasjoner/nordic-statistical-yearbook/"

Scenario: redirect fd-trygd
  Gitt at jeg går på "/fd-trygd/"
  Så skal urlen være "/data-til-forskning/utlan-av-data-til-forskere/variabellister/fd-trygd"

Scenario: redirect  fd-trygd uten bindestrek
  Gitt at jeg går på "/fdtrygd/"
  Så skal urlen være "/data-til-forskning/utlan-av-data-til-forskere/variabellister/fd-trygd"

Scenario: redirect  fd-trygd fra lamp
  Gitt at jeg går på "/a/fd-trygd/"
  Så skal urlen være "/data-til-forskning/utlan-av-data-til-forskere/variabellister/fd-trygd"

 Scenario: redirect  fd-trygd nivå 2
   Gitt at jeg går på "/fd-trygd/variabelliste.html"
   Så skal jeg se "variabelliste for FD-Trygd"

Scenario: redirect av Google Analytics script fra gammel web til cms (main)
   Gitt at jeg går på "/js/ga-main.js"
   Så skal urlen være "/_public/skins/advanced/ssb.no/scripts/ga-main.js"

Scenario: redirect av Google Analytics script fra gammel web til cms (linktracking)
   Gitt at jeg går på "/js/ga-linktracking.js"
   Så skal urlen være "/_public/skins/advanced/ssb.no/scripts/ga-linktracking.js"

Scenario: redirect av Google Analytics script fra gammel web til cms (frameset)
   Gitt at jeg går på "/js/ga-frameset.js"
   Så skal urlen være "/_public/skins/advanced/ssb.no/scripts/ga-frameset.js"

Scenario: redirect av gamle parmanente lenker
   Gitt at jeg går på "/artikkel/vundkinnv/2012-03-01"
   Så skal urlen være "/vundkinnv"

Scenario: redirect av gamle parmanente lenker (engelsk)
   Gitt at jeg går på "/en/article/vundkinnv/2012-03-01"
   Så skal urlen være "/en/vundkinnv"

Scenario: redirect av nasjonalregnskap-og-konjunkturer (engelsk)
   Gitt at jeg går på "/english/subjects/08/05/10/es/"
   Så skal urlen være "/en/nasjonalregnskap-og-konjunkturer?se=Economic+survey"

Scenario: redirect i forbindelse med navneendring på hovedemne (Bedrifter)
   Gitt at jeg går på "/bedrifter-foretak-og-regnskap"
   Så skal urlen være "/virksomheter-foretak-og-regnskap"

Scenario: redirect i forbindelse med navneendring på delemne (Bedrifter)
   Gitt at jeg går på "/bedrifter-foretak-og-regnskap?de=Bedrifter+og+foretak&de=Eierskap+og+roller&de=Konkurser&rn=K"
   Så skal urlen være "/virksomheter-foretak-og-regnskap?de=Virksomheter+og+foretak&de=Eierskap+og+roller&de=Konkurser&rn=K"

Scenario: Redirect kortnavn for biblioteket til CMS
  Gitt at jeg går på "/biblioteket"
  Så skal urlen være "/omssb/tjenester-og-verktoy/biblioteket"

Scenario: Redirect kortnavn for biblioteket (engelsk) til CMS
  Gitt at jeg går på "/en/biblioteket"
  Så skal urlen være "/en/omssb/tjenester-og-verktoy/biblioteket"

Scenario: Redirect kortnavn for ledige stillinger til CMS
  Gitt at jeg går på "/ledigestillinger"
  Så skal urlen være "/omssb/jobb-i-ssb/ledige-stillinger"

Scenario: Redirect kortnavn for ledige stillinger (engelsk) til CMS
  Gitt at jeg går på "/en/ledigestillinger/"
  Så skal urlen være "/en/omssb/jobb-i-ssb/ledige-stillinger"

Scenario: Redirect kortnavn for artikkel om straffkjede til CMS
  Gitt at jeg går på "/straffkjede"
  Så skal urlen være "/sosiale-forhold-og-kriminalitet/artikler-og-publikasjoner/lovbrudd-fra-anmeldelse-til-dom"

Scenario: Redirect kortnavn for artikkel om straffkjede (engelsk) til CMS
  Gitt at jeg går på "/en/straffkjede"
  Så skal urlen være "/en/sosiale-forhold-og-kriminalitet/artikler-og-publikasjoner/offences-from-police-to-sentence"

Scenario: Redirect kortnavn for geodata til CMS
  Gitt at jeg går på "/geodata"
  Så skal urlen være "/natur-og-miljo/geodata"

Scenario: Redirect kortnavn for kurs og seminarer til CMS
  Gitt at jeg går på "/kursogseminarer"
  Så skal urlen være "/omssb/tjenester-og-verktoy/kurs-og-seminarer"

Scenario: Redirect /forside til /
  Gitt at jeg går på "/forside"
  Så skal urlen være "/"

Scenario: Redirect skole fra contentkey adresse
  Gitt at jeg går på "/skole"
  Så skal urlen være "/ssb-skole"

Scenario: Redirect engelsk versjon av /forside til /en/
  Gitt at jeg går på "/en/forside"
  Så skal urlen være "/en/"

Scenario: Redirect av adresser til Yrkeskatalogen 1
  Gitt at jeg går på "/emner/06/yrke"
  Så skal urlen være "/arbeid-og-lonn/sysselsetting/artikler/yrkeskatalogen"

Scenario: Redirect av adresser til Yrkeskatalogen 2
  Gitt at jeg går på "/a/yrke/yrke_katalog.csv"
  Så skal urlen være "/arbeid-og-lonn/sysselsetting/artikler/yrkeskatalogen"

Scenario: Redirect av laks til Enonic XP
  Gitt at jeg går på "/laks"
  Så skal urlen være "/utenriksokonomi/utenrikshandel/statistikk/eksport-av-laks"

Scenario: Redirect av engelsk uke laks til Enonic XP
  Gitt at jeg går på "/en/utenriksokonomi/statistikker/laks/uke"
  Så skal urlen være "/en/utenriksokonomi/utenrikshandel/statistikk/eksport-av-laks"

@Klass
Scenario: Redirect stabas til klass i prod 1
  Gitt at jeg går på "/stabas/ClassificationFrames.asp?ID=4221197&Language=nb"
  Så skal urlen inneholde "/klass/klassifikasjoner/29"

@Klass
Scenario: Redirect stabas til klass i prod 2
  Gitt at jeg går på "/stabas/ClassificationFrames.asp?ID=5218001&Language=nb"
  Så skal urlen inneholde "/klass/klassifikasjoner/77"



@wip
Scenario: redirect av vedleggstabeller med dobbel t
   Gitt at jeg går på "/hkpi/arkiv/ttab-2005-08-10-01.html"
   Så skal urlen være "/a/kortnavn/hkpi/arkiv/ttab-2005-08-10-01.html"

@wip
Scenario: redirect av vedleggstabeller med enkel t
   Gitt at jeg går på "/hkpi/arkiv/ttab-2005-08-10-01.html"
   Så skal urlen være "/a/kortnavn/hkpi/arkiv/ttab-2005-08-10-01.html"
