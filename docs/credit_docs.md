# Systematische Regulatorische, steuerliche und softwarearchitektonische Strukturierung von Künstlerguthaben in Musiklabel- und Streamingmodellen

## Aufsichtsrechtliche Einordnung nach dem Zahlungsdiensteaufsichtsgesetz und dem Kreditwesengesetz

Bei der treuhänderischen Verwaltung und zeitweisen Verwahrung von Künstlerguthaben steht ein Plattformbetreiber an der Schnittstelle von zivilrechtlicher Vertragsgestaltung und dem hochregulierten deutschen Finanzaufsichtsrecht. Die aufsichtsrechtliche Einordnung unterscheidet sich grundlegend zwischen dem klassischen Musiklabel-Modell und der Bereitstellung eines zweiseitigen Streaming-Marktplatzes.

## Das klassische Musiklabel-Modell: Bilaterale Schuldverhältnisse

Im Rahmen des Musiklabel-Modells erwirbt das Label vertraglich exklusive Nutzungs- und Verwertungsrechte an den Tonaufnahmen (Masters) der Künstler. Das Musiklabel agiert im eigenen Namen und auf eigene Rechnung, wenn es diese Rechte über digitale Vertriebsplattformen (DSPs) kommerzialisiert. Die Einnahmen aus dem Rechteverkauf fließen zunächst als eigene Betriebseinnahmen auf das Bankkonto des Labels.

Die vertragliche Vereinbarung, $85\,\%$ der Erlöse dem Künstler als Guthaben gutzuschreiben, begründet zivilrechtlich eine eigene vertragliche Verbindlichkeit (Lizenzgebühr bzw. Tantieme) des Labels gegenüber dem Künstler. Da das Label somit Gelder im eigenen Namen einnimmt und zur Tilgung eigener Schulden an die Künstler auskehrt, liegt kein Erbringen von Zahlungsdiensten für Dritte im Sinne des § 1 Abs. 1 Satz 2 des Zahlungsdiensteaufsichtsgesetzes (ZAG) vor. Das Führen einer laufenden Rechnung zur Verrechnung gegenseitiger Ansprüche begründet in diesem bilateralen Verhältnis kein Zahlungskonto im Sinne des ZAG. Es bedarf für diesen primären Label-Betrieb keiner Erlaubnis der Bundesanstalt für Finanzdienstleistungsaufsicht (BaFin).

## Das Musikstreaming-Modell: Trilateraler Zahlungsverkehr

Völlig anders stellt sich die Rechtslage dar, wenn unter derselben juristischen Person ein zweiter Dienst wie ein Musikstreaming-Service angeboten wird. Hier zahlen Abonnenten (Subscriber) Gebühren an die Plattform, die diese sammelt, verwahrt und auf Basis von Streaming-Metriken an die Künstler ausschüttet. In diesem Szenario agiert die Plattform als dreiseitiger Intermediär zwischen dem Zahler (Abonnent) und dem Zahlungsempfänger (Künstler).

Diese Konstellation erfüllt systematisch den Tatbestand des Finanztransfergeschäfts gemäß § 1 Abs. 1 Satz 2 Nr. 6 ZAG sowie des Ein- und Auszahlungsgeschäfts gemäß § 1 Abs. 2 Nr. 1 und 2 ZAG. Da die Künstler über ein virtuelles Guthaben verfügen, das sie sich jederzeit auszahlen lassen können, betreibt die Plattform de facto Zahlungskonten für Dritte. Ohne entsprechende Lizenz ist dieser Betrieb aufsichtsrechtlich illegal.

## Das Handelsvertreterprivileg nach § 2 Abs. 1 Nr. 2 ZAG

Um die Erlaubnispflicht nach dem ZAG zu vermeiden, wird im Plattformsektor häufig das sogenannte Handelsvertreterprivileg herangezogen. Nach § 2 Abs. 1 Nr. 2 ZAG gelten Zahlungsvorgänge nicht als Zahlungsdienste, wenn sie über einen Handelsvertreter abgewickelt werden, der vertraglich befugt ist, den Kauf oder Verkauf von Waren oder Dienstleistungen im Namen nur einer Partei (entweder des Zahlers oder des Zahlungsempfängers) zu vermitteln oder abzuschließen.

Die BaFin legt diese Ausnahme im Rahmen ihrer Verwaltungspraxis jedoch äußerst restriktiv aus. Für die Inanspruchnahme ist ein echtes Aushandlungsmandat oder eine tatsächliche Abschlussvollmacht erforderlich. Der Vermittler muss über einen spürbaren Spielraum bei der Gestaltung der Vertragsdetails verfügen. Da eine Streaming-Plattform standardisierte Verträge sowohl mit den Konsumenten (Abonnenten) als auch mit den Künstlern schließt, steht sie typischerweise auf beiden Seiten des Grundgeschäfts. Dieses zweiseitige Tätigwerden schließt das Handelsvertreterprivileg nach dem klaren Wortlaut des Gesetzes und der gefestigten aufsichtsrechtlichen Praxis aus.

### Risiken des unbefugten Betriebs von Zahlungsdiensten

Das Betreiben von Zahlungsdiensten oder das Halten von Einlagen ohne schriftliche Erlaubnis der BaFin stellt nach deutschem Recht ein erhebliches Risiko dar. Die regulatorischen und strafrechtlichen Konsequenzen sind gravierend:

| Risikokategorie | Gesetzliche Grundlage | Mögliche Konsequenzen |
|---|---|---|
| Strafrechtliche Sanktionen | § 31 ZAG i. V. m. § 54 KWG | Freiheitsstrafe bis zu 5 Jahren oder Geldstrafe; bei Fahrlässigkeit bis zu 3 Jahren. |
| Aufsichtsrechtliche Maßnahmen | § 10 ZAG | Unverzügliche Untersagung des Geschäftsbetriebs und zwangsweise Abwicklung der Konten durch die BaFin. |
| Finanzielle Bußgelder | § 63 ZAG | Geldbußen bis zu $500.000\,\text{EUR}$ bei unbefugtem Betrieb; bis zu $1.000.000\,\text{EUR}$ oder $10\,\%$ des Jahresumsatzes bei juristischen Personen. |
| Zivilrechtliche Haftung | § 823 Abs. 2 BGB i. V. m. § 32 KWG | Unbeschränkte persönliche Haftung der Geschäftsleiter mit dem Privatvermögen für Schäden von Künstlern oder Gläubigern. |

## Bankenarchitektur: Echte Bankkonten versus steuerlich-buchhalterische Unterkonten

Eine der zentralen Fragestellungen betrifft das Verhältnis zwischen physischen Bankkonten und der buchhalterischen Abbildung der Künstlerguthaben. Es muss geklärt werden, ob für jeden Künstler ein separates physisches Bankunterkonto eingerichtet werden muss oder ob eine rein buchhalterische Trennung auf einem einheitlichen Geschäftskonto zulässig ist.

### Der virtuelle Kontensplit im Musiklabel-Modell

Für den klassischen Label-Betrieb ist ein physischer Kontensplit auf Ebene der Bank gesetzlich nicht vorgeschrieben. Es ist vollkommen rechtskonform ("rechtens"), sämtliche Einnahmen auf einem einzigen, zentralen Geschäftskonto der Firma zu bündeln und das Guthaben der Künstler rein virtuell über steuerlich-buchhalterische Unterkonten (sogenannte Kreditoren- oder Verrechnungskonten) abzugrenzen.

Dieses Verfahren entspricht den Grundsätzen ordnungsmäßiger Buchführung (GoB) nach § 239 Abs. 2 des Handelsgesetzbuches (HGB) und § 146 Abs. 1 der Abgabenordnung (AO), sofern die Zuordnung der Geldflüsse im Buchhaltungssystem jederzeit klar, nachvollziehbar und manipulationssicher dokumentiert ist. Das buchhalterische Verrechnungskonto dient hierbei als internes Kontrollinstrument und Dokumentationsmedium. Eine 1:1-Abdeckung durch physische Unterkonten bei der Bank ist im bilateralen Label-Geschäft nicht erforderlich.

### Die zwingende physische Kontentrennung im Multi-Service-Modell

Sobald die Firma jedoch den zweiten Service (den Streaming-Dienst) unter derselben juristischen Person anbietet, greifen zwingende aufsichts- und insolvenzrechtliche Vorgaben zur physischen Kontentrennung. Die Gelder des Streaming-Dienstes stellen, wie oben dargelegt, regulierungsbedürftige Drittgelder (Fremdgelder) dar.

Diese Fremdgelder dürfen unter keinen Umständen mit den operativen Eigenmitteln des Musiklabels oder den allgemeinen Firmengeldern auf demselben Bankkonto vermischt werden. Eine solche Vermischung würde den Tatbestand des unerlaubten Einlagengeschäfts im Sinne des KWG erfüllen, da das Label Gelder zur Verwahrung annimmt, ohne über eine Banklizenz zu verfügen.

Für das Multi-Service-Modell ergeben sich somit zwei strikt voneinander zu trennende Sphären der Kontenführung:

```
[ Operative Firmengelder ] (Eigenmittel des Labels & 15% Marge)
└── [ Virtueller Kontensplit im Nebenbuch ] (85% Künstlerguthaben aus Label-Vertrieb)
    └── Erlaubt nach HGB & AO, da bilaterale Schuld [1, 20]

[ Streaming-Dienst ]
└── (Abonnentengelder zur Ausschüttung)
    └── Zwingend physisch getrennt zur Vermeidung von ZAG/KWG-Verstößen
```

Um diese Trennung rechtssicher und skalierbar zu gestalten, ohne eine eigene, kostspielige ZAG-Lizenz beantragen zu müssen, greifen moderne Plattformen auf lizenzierte Payment Service Provider (PSP) zurück. Über integrierte Marktplatz-Lösungen (wie beispielsweise Stripe Connect) verbleiben die Kundengelder physisch im regulierten Raum des lizenzierten Partners, während die Plattform den Geldfluss über APIs steuert, ohne selbst Eigentümerin oder unmittelbare Besitzerin der Gelder zu werden.

## Insolvenzrechtliche Absicherung: Das offene Sammeltreuhandkonto

Soll das Künstlerguthaben im Label-Modell gegen eine Insolvenz des Labels abgesichert werden, ist die Einrichtung eines offenen Sammeltreuhandkontos bei der Bank erforderlich. Bei einem herkömmlichen Geschäftskonto fließen die Künstlerguthaben im Falle einer Insolvenz des Labels vollumfänglich in die Insolvenzmasse. Die Künstler werden zu einfachen Insolvenzgläubigern und müssen sich mit der meist minimalen Insolvenzquote begnügen.

Ein offenes Sammeltreuhandkonto schützt die Künstler durch ein insolvenzrechtliches Aussonderungsrecht gemäß § 47 der Insolvenzordnung (InsO). Hierbei deklariert das Label gegenüber der Bank explizit, dass das auf dem Konto befindliche Guthaben treuhänderisch für Rechnung der namentlich benannten Künstler gehalten wird.

Die Bank ist in diesem Fall gesetzlich verpflichtet, die Identität und die wirtschaftliche Berechtigung aller Treugeber (Künstler) gemäß dem Geldwäschegesetz (GwG) zu erfassen und laufend zu aktualisieren. Dies führt zu einem erheblichen administrativen Aufwand, da jede Änderung im Künstlerkreis der Bank gemeldet und dokumentiert werden muss.

## Buchhalterische Abwicklung und steuerrechtliche Pflichten

Die korrekte buchhalterische Erfassung des temporär einbehaltenen Künstlerguthabens ist entscheidend für die steuerliche Anerkennung und die Vermeidung von Nachzahlungsrisiken bei Betriebsprüfungen.

### Kreditorische Nebenbuchführung

Aus bilanzsteuerlicher Sicht dürfen die vereinnahmten Bruttobeträge, die den Künstlern zustehen, nicht als Umsatzerlöse des Labels erfasst werden. Das Label darf lediglich seine $15\,\%$-ige Vertriebsgebühr als eigenen Umsatzerlös erfolgswirksam buchen. Die restlichen $85\,\%$ sind bis zu ihrer physischen Auszahlung als erfolgsneutrale Verbindlichkeit gegenüber dem jeweiligen Künstler auszuweisen.

Für eine GoBD-konforme Erfassung ist zwingend eine kreditorische Nebenbuchhaltung einzurichten. Jeder Künstler erhält eine eindeutige Kreditor-Personenkontonummer (im SKR03 üblicherweise im fünfstelligen Bereich ab 70000, im Hauptbuch zusammengefasst auf dem Sammelkonto 1600 für Verbindlichkeiten aus Lieferungen und Leistungen).

### Das Gutschriftverfahren nach § 14 Abs. 2 Satz 2 UStG

Da die Künstler dem Label Verwertungsrechte an ihren Werken einräumen, erbringen sie eine umsatzsteuerbare sonstige Leistung an das Label. Um den Abrechnungsprozess zu automatisieren, wird in der Musikbranche standardmäßig das umsatzsteuerliche Gutschriftverfahren (Abrechnungsgutschrift) genutzt. Hierbei erstellt nicht der leistende Künstler die Rechnung, sondern der Leistungsempfänger (das Label) rechnet die Beträge eigenständig ab.

Damit dieses Verfahren vom Finanzamt anerkannt wird und das Label zum Vorsteuerabzug berechtigt ist, müssen folgende Kriterien kumulativ erfüllt sein:

- **Schriftliche Vorabvereinbarung:** Es muss eine explizite Vereinbarung zwischen Label und Künstler existieren (z. B. im Künstlervertrag), dass die Abrechnung per Gutschrift erfolgt.
- **Bezeichnung als "Gutschrift":** Das Dokument muss zwingend und ausdrücklich als "Gutschrift" bezeichnet werden.
- **Pflichtangaben nach § 14 Abs. 4 UStG:** Die Gutschrift muss sämtliche gesetzlichen Pflichtangaben einer regulären Rechnung enthalten, insbesondere die Steuernummer oder USt-IdNr. des Künstlers, eine fortlaufende Rechnungsnummer (die vom Label als Aussteller einmalig vergeben wird) und das Leistungsdatum.
- **Umsatzsteuersätze:** Es ist penibel auf den korrekten Steuersatz des Künstlers abzustellen:
  - **Ermäßigter Steuersatz ($7\,\%$):** Gilt gemäß § 12 Abs. 2 Nr. 7c UStG für die Einräumung, Übertragung und Wahrnehmung von Rechten, die sich aus dem Urhebergesetz ergeben. Dies ist der Standardfall für Tantiemen und Lizenzausschüttungen an Musiker.
  - **Regelsteuersatz ($19\,\%$):** Gilt für rein technische, administrative oder sonstige nicht-schöpferische Leistungen (z. B. Mastering-Dienstleistungen oder reine Tonstudiomiete ohne Rechteübertragung).
  - **Kleinunternehmerregelung ($0\,\%$):** Ist der Künstler Kleinunternehmer nach § 19 UStG, darf in der Gutschrift keine Umsatzsteuer ausgewiesen werden; es ist ein entsprechender Hinweis auf die Steuerbefreiung aufzunehmen.

Die Umsatzsteuer entsteht bei der Sollversteuerung bereits mit Ablauf des Voranmeldungszeitraums, in dem die Leistung (die Verwertung der Musik im jeweiligen Abrechnungszeitraum) erbracht wurde, völlig unabhängig davon, wann das Guthaben physisch an den Künstler ausgezahlt wird.

### Grenzüberschreitende Sachverhalte: Reverse-Charge und Ausländersteuer

Arbeitet das Label mit Künstlern zusammen, die ihren Wohnsitz oder Sitz im Ausland haben, gelten komplexe steuerliche Sonderregelungen:

**Reverse-Charge-Verfahren (Umsatzsteuer):** Bei sonstigen Leistungen eines im Ausland ansässigen Unternehmers an ein inländisches Unternehmen verlagert sich die Steuerschuldnerschaft auf den Leistungsempfänger (das Label) gemäß § 13b Abs. 1 und Abs. 2 Nr. 1 UStG. Die Gutschrift ist netto ohne Umsatzsteuerausweis zu erstellen und muss einen expliziten Hinweis auf die Umkehr der Steuerschuldnerschaft enthalten (z. B. "Steuerschuldnerschaft des Leistungsempfängers" oder "VAT-reverse"). Das Label deklariert die Umsatzsteuer in seiner Umsatzsteuer-Voranmeldung und zieht diese zeitgleich als Vorsteuer ab, was zu einer steuerneutralen Nullregelung führt.

**Abzugsteuer nach § 50a EStG (Ausländersteuer):** Einkünfte aus im Inland ausgeübten oder verwerteten künstlerischen Darbietungen sowie aus der Überlassung von Urheberrechten im Inland unterliegen bei beschränkt steuerpflichtigen (ausländischen) Künstlern dem Steuerabzug an der Quelle. Das Label ist gesetzlich verpflichtet, $15\,\%$ der Bruttovergütung einzubehalten, beim Bundeszentralamt für Steuern (BZSt) anzumelden und abzuführen. Nur bei Vorliegen einer gültigen Freistellungsbescheinigung des BZSt nach § 50d Abs. 2 EStG darf der Einbehalt unterbleiben. Für Lizenzgebühren unter $5.500\,\text{EUR}$ pro Vertrag gilt ein vereinfachtes Verfahren.

### Künstlersozialabgabe (KSK) für das Jahr 2026

Als Musiklabel gilt das Unternehmen als typischer Verwerter künstlerischer Leistungen und unterliegt der generellen Abgabepflicht an die Künstlersozialkasse (KSK). Für das Kalenderjahr 2026 gelten folgende Bestimmungen:

- **Abgabesatz:** Der Abgabesatz für 2026 beträgt $4{,}9\,\%$ (gesenkt von $5{,}0\,\%$ in den Vorjahren).
- **Bemessungsgrundlage:** Die Abgabe fällt auf alle Entgelte (Gagen, Tantiemen, Lizenzgebühren, sowie Nebenkosten und Auslagen) an, die an selbstständige Künstler gezahlt werden. Dies gilt auch für Zahlungen an ausländische Künstler oder Nicht-Mitglieder der KSK.
- **Keine Bagatellgrenze für Verwerter:** Die für Gelegenheitsauftraggeber geltende Bagatellgrenze (Anhebung im Jahr 2026 auf $1.000\,\text{EUR}$) ist für typische Verwerter (wie Musiklabels oder Verlage) gesetzlich explizit ausgeschlossen. Das Label muss die Abgabe ab dem ersten Euro entrichten.
- **Meldefrist:** Die jährliche Entgeltmeldung für das Vorjahr muss bis zum 31. März des Folgejahres an die KSK übermittelt werden.

## Softwarearchitektur und GoBD-konforme Automatisierungsrichtlinien für Entwickler

Für einen Softwareentwickler, der die Guthabenverwaltung und die Schnittstellen im Backend selbst implementiert, ist die Einhaltung der GoBD (Grundsätze zur ordnungsmäßigen Führung und Aufbewahrung von Büchern, Aufzeichnungen und Unterlagen in elektronischer Form sowie zum Datenzugriff) die zentrale technische Leitlinie.

Die GoBD fordern absolute Unveränderbarkeit, lückenlose Protokollierung und die Nachvollziehbarkeit aller Geschäftsvorfälle. Ein herkömmliches CRUD-Datenbankdesign (Create, Read, Update, Delete), bei dem Guthabenstände über einfache UPDATE-Statements auf einer Künstlertabelle manipuliert werden, ist gesetzlich unzulässig und führt bei einer Betriebsprüfung unweigerlich zur Verwerfung der Buchführung.

### Das Append-Only Ledger Pattern

Das System muss zwingend nach dem Prinzip eines unveränderlichen Hauptbuchs (Append-Only Ledger) entworfen werden. Guthabenstände werden niemals direkt überschrieben, sondern sind das mathematische Ergebnis der Aggregation aller historischen Transaktionszeilen.

#### Relationales Datenbankschema (Beispiel)

```sql
-- Tabelle zur Definition der Kreditoren-Stammdaten (Künstler)
CREATE TABLE creditors (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    creditor_number VARCHAR(5) UNIQUE NOT NULL, -- Bereich 70000-99999 (SKR03) [64]
    legal_name VARCHAR(255) NOT NULL,
    vat_status VARCHAR(50) NOT NULL, -- 'REGULAR_7', 'REGULAR_19', 'SMALL_BUSINESS', 'REVERSE_CHARGE' [43, 53]
    tax_number VARCHAR(50),
    vat_id VARCHAR(50),
    iban VARCHAR(34) NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP NOT NULL
);

-- Tabelle für das unveränderliche Transaktionsjournal
CREATE TABLE ledger_entries (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    creditor_id UUID REFERENCES creditors(id) ON DELETE RESTRICT NOT NULL,
    entry_type VARCHAR(10) NOT NULL, -- 'CREDIT' (Haben/Zubuchung) oder 'DEBIT' (Soll/Auszahlung)
    amount_net DECIMAL(15, 4) NOT NULL,
    vat_rate DECIMAL(5, 2) NOT NULL, -- e.g., 7.00, 19.00, 0.00 [44, 65]
    amount_vat DECIMAL(15, 4) NOT NULL,
    amount_gross DECIMAL(15, 4) NOT NULL,
    currency VARCHAR(3) DEFAULT 'EUR' NOT NULL,
    booking_date TIMESTAMP WITH TIME ZONE NOT NULL, -- Zeitnahe Erfassung
    document_id VARCHAR(100) UNIQUE NOT NULL, -- Eindeutige Belegnummer (Gutschrifts- oder Auszahlungs-ID) [22, 45]
    document_type VARCHAR(50) NOT NULL, -- 'GUTSCHRIFT', 'STORNO_GUTSCHRIFT', 'AUSZAHLUNG'
    payload_snapshot JSONB NOT NULL, -- Vollständige Berechnungsbasis (z.B. Stream-IDs, Verkaufsberichte) [22, 67]
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP NOT NULL,
    created_by VARCHAR(100) NOT NULL, -- Kennzeichnung des automatisierten Systems oder Benutzers [22, 68]
    entry_hash VARCHAR(64) NOT NULL -- SHA-256 Hash zur Kettensicherung (Manipulationsschutz) [22, 67]
);

-- Index zur performanten Aggregation der Guthabenstände
CREATE INDEX idx_ledger_balance ON ledger_entries (creditor_id, entry_type, amount_gross);
```

Zur Erfüllung der GoBD-Vorgabe der Unveränderbarkeit wird jede Zeile über das Feld `entry_hash` kryptografisch mit dem vorhergehenden Eintrag verkettet. Der Hash-Wert wird berechnet als:

$$
\text{Hash}_n = \text{SHA-256}(\text{Data}_n \mathbin{\Vert} \text{Hash}_{n-1})
$$

Eine nachträgliche Manipulation eines historischen Datensatzes würde die gesamte Kette brechen und bei einem automatisierten Audit sofort auffallen.

### Das GoBD-konforme Stornierungsmodell

Sollten fehlerhafte Gutschriften im System korrigiert werden müssen, verbieten die GoBD das Löschen oder Ändern des fehlerhaften Datenbankeintrags. Die Korrektur muss zwingend über eine Generalumkehr (Stornobuchung) abgewickelt werden.

```
(Eintrag 1)
│
▼
(Eintrag 2 - Referenziert Eintrag 1)
│
▼
(Eintrag 3 - Neue Belegnummer)
```

Das System erzeugt für das Storno eine neue Zeile in `ledger_entries` mit dem invertierten Betrag (oder der Kennzeichnung DEBIT) und verweist im `payload_snapshot` auf die eindeutige ID des stornierten Eintrags. Anschließend wird die korrekte Buchung als dritter, separater Eintrag hinzugefügt.

### Schnittstellendesign für den DATEV-Format CSV Import

Damit der Steuerberater die automatisiert erzeugten Buchungssätze ohne manuellen Erfassungsaufwand in die DATEV-Kanzleisoftware einspielen kann, muss das System eine CSV-Exportdatei im offiziellen DATEV-Format erzeugen.

Das DATEV-Format basiert auf einer CSV-Datei mit einem festen Satzaufbau und muss zwingend mit dem Präfix EXTF_ beginnen (z. B. `EXTF_Kuenstler_Ausschüttung_2026_05.csv`).

#### Struktur der DATEV-Format-Datei

Die Datei besteht aus drei Abschnitten:

- **Zeile 1: Kopfzeile (Metadaten):** Enthält wichtige Steuerungsdaten für den Import (z. B. Beraternummer, Mandantennummer, Wirtschaftsjahr, Sachkontenrahmen).
- **Zeile 2: Überschriftszeile (Datenfelder):** Definiert die Feldbezeichnungen gemäß DATEV-Spezifikation.
- **Zeile 3-n: Nutzdaten (Buchungszeilen):** Die eigentlichen Geschäftsvorfälle.

#### Technische Formatierungsregeln

- Als Trennzeichen ist ausschließlich das Semicolon (`;`) zu verwenden.
- Textfelder müssen zwingend in doppelte Anführungszeichen (`"`) eingeschlossen werden.
- Das Dezimaltrennzeichen bei Zahlen ist das Komma (z. B. `107,00`), Tausendertrennzeichen dürfen nicht verwendet werden.
- Das Datumsformat ist JJJJMMTT (ohne Trennzeichen).

#### Beispiel einer DATEV-Exportdatei (SKR03)

```
"EXTF";300;21;"Buchungsstapel";12;;;;;"DE";12345;99999;20260101;4;20260501;20260531;"Ausschüttung Label";"System-Automation";1;0;0;"EUR";;;;;"03";;
"Umsatz";"Soll/Haben-Kennzeichen";"WKZ";"Kurs";"Eröffnungsschlüssel";"Konto";"Gegenkonto";"BU-Schlüssel";"Belegdatum";"Belegfeld 1";"Belegfeld 2";"Skonto";"Buchungstext"
107,00;"H";"EUR";;"";"70001";"3100";"";20260515;"GS-2026-05-001";"";;"Ausschüttung Lizenzanteil 85%"
107,00;"S";"EUR";;"";"70001";"1200";"";20260520;"PAY-2026-05-001";"";;"Auszahlung Guthaben an Bank"
```

### Erläuterung der Buchungszeilen

**Zeile 1 (Gutschriftserstellung):**
- `107,00` Bruttoumsatz ($100{,}00\,\text{EUR}$ netto + $7\,\%$ ermäßigte Umsatzsteuer für Rechteüberlassung).
- `"H"` (Haben): Das Personenkonto des Künstlers (70001 im SKR03) wird im Haben bebucht (Verbindlichkeitsaufbau).
- `"3100"` (Gegenkonto): Aufwandskonto für Fremdleistungen/Lizenzen im Soll.
- `"GS-2026-05-001"`: Eindeutige Gutschriftennummer als Rechnungsnummer (Belegfeld 1).

**Zeile 2 (Auszahlung an den Künstler):**
- `107,00` Auszahlungsbetrag (erfolgs- und steuerneutral).
- `"S"` (Soll): Das Personenkonto des Künstlers (70001) wird im Soll bebucht (Verbindlichkeitsabbau).
- `"1200"` (Gegenkonto): Das Bankkonto des Labels im Haben (Finanzabfluss).

# Systematische Handlungsempfehlungen

Für die rechtssichere und automatisierte Umsetzung der beiden Geschäftsmodelle unter einer einheitlichen Firma sollten die folgenden strukturellen Maßnahmen ergriffen werden:

1. **Physische Kontentrennung nach ZAG-Vorgaben etablieren**
   - Für das Musiklabel ist ein rein virtueller Split über eine kreditorische Nebenbuchhaltung auf dem regulären Geschäftskonto der GmbH vollkommen ausreichend und rechtlich zulässig.
   - Für den Streaming-Dienst muss aufgrund der ZAG-Regulierung von Drittgeldern eine strikte physische Kontentrennung erfolgen. Um eine aufwendige BaFin-Lizenzierung zu vermeiden, ist eine standardisierte Payment-Service-Provider-Lösung (z. B. Stripe Connect) zu integrieren. Der PSP übernimmt das KYC-Onboarding der Künstler sowie die treuhänderische Verwahrung und Auszahlung der Abonnentengelder, sodass das Label regulatorisch entlastet wird.

2. **Verträge und Gutschriftenprozess rechtssicher gestalten**
   - In allen Künstlerverträgen ist eine schriftliche Vereinbarung über die Abrechnung im Gutschriftverfahren nach § 14 Abs. 2 Satz 2 UStG zu verankern.
   - Die erzeugten PDF-Belege müssen zwingend das Wort "Gutschrift" tragen und sämtliche Pflichtangaben (insb. USt-IdNr. des Künstlers und fortlaufende Nummerierung) enthalten.
   - Bei der Abrechnung ist der ermäßigte Umsatzsteuersatz von $7\,\%$ für die Einräumung von Urheberrechten nach § 12 Abs. 2 Nr. 7c UStG anzuwenden, sofern keine Kleinunternehmerregelung greift.

3. **Technische Systemarchitektur GoBD-konform aufbauen**
   - Das Backend-Datenbankdesign ist strikt nach dem Append-Only Ledger Pattern zu implementieren. UPDATE- oder DELETE-Befehle auf Transaktionstabellen sind programmseitig auszuschließen.
   - Korrekturen von Fehlbuchungen dürfen ausschließlich über das Stornobuchungsverfahren (Generalumkehr) abgebildet werden.
   - Eine automatisierte Export-Schnittstelle ist zu entwickeln, die das Transaktionsjournal periodisch in eine DATEV-konforme CSV-Datei (EXTF) übersetzt, um einen nahtlosen Datentransfer zum Steuerberater zu gewährleisten.

4. **Steuerliche Nebenpflichten automatisieren**
   - Das System sollte eine automatisierte Abfrage der USt-IdNr. beim Bundeszentralamt für Steuern (BZSt) integrieren, um bei ausländischen Künstlern den korrekten Netto-Ausweis unter Anwendung des Reverse-Charge-Verfahrens sicherzustellen.
   - Bei beschränkt steuerpflichtigen Künstlern ohne Inlandswohnsitz ist der Pflichteinbehalt der Abzugsteuer nach § 50a EStG ($15\,\%$) systemseitig zu überwachen und an das BZSt abzuführen, sofern keine Freistellungsbescheinigung vorliegt.
   - Alle Ausschüttungen an selbstständige Künstler sind in einer gesonderten Datenbanktabelle zu erfassen, um die jährliche Meldung zur Künstlersozialabgabe (Satz 2026: $4{,}9\,\%$) ohne Bagatellgrenze fristgerecht bis zum 31. März zu erstellen.
