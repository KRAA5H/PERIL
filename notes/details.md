# Stage 1 – Static Threat Detection with Open Source Data

## Mapping Critical Infrastructure and Historical Risk

Use open-source maps (e.g., OpenStreetMap) to tag critical sites such as government buildings, transport hubs, religious centers, event venues, financial institutions, and crowded public spaces.

Overlay historical terror attack data from sources like the Global Terrorism Database, EU publications, or police crime statistics to map past incident locations and cluster patterns.

Perform hotspot analysis in GIS to statistically identify areas with significant clustering of past attacks or suspicious incidents.

Assess attributes that increase risk, such as proximity to borders, major roads, landmarks, or dense populations.

Factor in vulnerability indicators, such as building accessibility, lack of security features, or large, open gatherings.

### Useful Static Data Sources
- Government security advisories (e.g., counter-terrorism protective security guides)
- Open-access crime statistics and threat databases (ONS, GTD, EU risk assessment papers)
- Public transport and event venue open-source listings
- Geo features: city GIS layers for terrain, proximity to police stations, hospitals, etc.

### Detection Logic for Static Risks
Assign weighted scores to locations based on:
- Number/severity of historical attacks nearby
- Type and significance of site
- Structural vulnerabilities and risk factors (from guides/checklists)

Rank areas/buildings and set risk thresholds for highlighting on the map.

# Stage 2 – Live Threat Detection Using Web Scraping

## Scraping Event and Situational Data

Continuously scrape open event listings (e.g. Eventbrite, Live Nation), news feeds, and social media platforms for details on gatherings, protests, or high-profile events.

Target keywords: "bomb threat," "protest," "VIP visit," "crowd surge," "security incident," etc.

Use web scraping frameworks (Python Scrapy, Selenium) optimized for anti-bot countermeasures and fast, resilient data ingestion.

Integrate feeds from traffic, emergency services, and government advisories for near-real-time updates.

### Detection Logic for Live Risks
Use a rule-based algorithm to dynamically elevate risk scores for locations where:
- Large events are scheduled soon
- Recent news/social media mentions report suspicious activity
- Emergency services or transport disruptions are observed in real time

Cross-reference live data with static risk maps, showing “live risk heatmaps” on the website.

Optionally highlight unusual web chatter (e.g., surge in hate speech/event attendance mentions) for early warning.

## Recommended Open-Source Tools and Frameworks

| Tool          | Core Use                          | Advantages                                      |
|---------------|-----------------------------------|------------------------------------------------|
| OpenStreetMap | Base mapping                      | Community-maintained, rich geodata             |
| Nmap/Amass    | Network mapping/attack surface    | Discover vulnerable public-facing systems      |
| Scrapy/Selenium | Web scraping for events/news    | High resilience, dynamic page handling         |
| MISP/Maltego  | Threat intelligence correlation   | Link patterns across multiple data sources     |
| QGIS/ArcGIS   | Advanced spatial analysis         | Hotspot analysis, cluster detection            |

## Practical Steps to Build the Detection Workflow

1. Map and classify static risk areas with open government, crime, and infrastructure data.
2. Set up scheduled scraping of event platforms, local news, and social media for live threat indicators.
3. Implement a rule-based scoring system, not machine learning, to combine risk indicators in real time:
   - If static risk score for area/building > threshold OR live event with high attendance nearby OR mention of security threat detected, highlight on map.
4. Optionally allow users to submit reports which may trigger temporary high-risk flag.
5. Regularly update both static and live threat maps, allowing visible prioritization for security planning.
6. Document ethical and legal guidelines for data use, comply with UK law (no personally identifiable information, no surveillance beyond public channels).

This evidence-driven approach ensures actionable insights for city security without reliance on machine learning, leveraging only open-source maps, public static datasets, and real-time web event scraping. The resulting logic can be transparently coded and adapted for rapid operational deployment in web-based dashboards.