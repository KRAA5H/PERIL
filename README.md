# PERIL

PERIL (Predicting Terror Attack Targets in Urban Areas) is a Python project that analyzes buildings and areas in a city most likely to be targeted by terror attacks.

## Features

- Data analysis for urban vulnerability assessment
- Predictive modeling for terror attack targets

## Installation

1. Clone the repository
2. Install dependencies: `pip install -r requirements.txt`
3. (Optional) Set up a virtual environment

## Usage

Describe how to use the project.

## Progress So Far

- **Data Collection & Exploration:**
  - Gathered and analyzed Transport for London (TfL) annual entry/exit and journey data (2017–2024) for 300+ stations.
  - Identified key traffic patterns, busiest stations, and temporal risk factors (e.g., peak hours, weekday vs weekend, seasonal variation).
  - Established a baseline for crowd density and critical infrastructure across London.
- **Threat Scoring Algorithm:**
  - Developed a composite threat scoring system using crowd density, infrastructure criticality, and vulnerability attributes.
  - Classified all stations into HIGH, MEDIUM, or LOW threat levels.
  - Exported threat assessment data for integration with visualization tools.
- **Technical Recommendations:**
  - Defined a multi-layer data integration strategy (static, live, real-time, historical).
  - Outlined technical stack: React/Vue + Leaflet.js frontend, Flask backend, PostgreSQL/PostGIS database, Redis for live data, and web scraping for event/news feeds.
  - Created a detailed implementation roadmap and UI/UX specifications.
- **Ethical & Legal Compliance:**
  - Ensured no collection of personally identifiable information (PII), only aggregate data.
  - Documented all data sources and methodologies for transparency.
  - Committed to responsible use, privacy protection, and regular ethical review.

## Eventual Goals

- **Interactive Threat Visualization Website:**
  - Build a public-facing platform showing color-coded threat levels for all London transport stations on an interactive map.
  - Integrate live event data, news, and social media feeds to dynamically update risk scores in near real-time.
  - Provide detailed station-level risk breakdowns, dashboard summaries, and alert feeds for elevated threats.
- **Security & Public Awareness:**
  - Support emergency preparedness, resource allocation, and public awareness without creating fear or profiling individuals.
  - Enable evidence-based security planning for city authorities and event organizers.
- **Scalability & Future Enhancements:**
  - Expand coverage to other UK cities and additional infrastructure types.
  - Incorporate machine learning for anomaly detection and predictive analytics.
  - Develop a mobile app and API for third-party integration.

For more details, see the notebooks in the `notebooks/` directory and the technical roadmap in `03_Website_Implementation_Strategy.ipynb`.

## Contributing

Guidelines for contributing.

## License

Specify license.
