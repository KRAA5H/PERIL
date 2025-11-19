# PERIL Project - Analysis Notebooks

## Overview

This directory contains Jupyter notebooks for analyzing TfL (Transport for London) data to assess terror threat levels across London's transport infrastructure. The analysis supports the **PERIL (Public Event Risk Intelligence London)** project, which aims to create an interactive threat visualization website.

## Notebooks

### 01_TfL_Data_Exploration.ipynb
**Purpose:** Initial exploration and understanding of TfL transport data

**Contents:**
- Load and examine TfL annual entry/exit data (2017-2024)
- Analyze daily journey patterns (2021-2023)
- Identify highest traffic stations and transport modes
- Discover temporal patterns (day-of-week, seasonal variations)
- Establish baseline understanding of crowd density across London

**Key Findings:**
- Identified 300+ stations with complete traffic data
- Discovered 50-70% higher weekday traffic vs weekends
- Identified top 30 busiest stations representing critical infrastructure

---

### 02_Threat_Scoring_Analysis.ipynb
**Purpose:** Develop and apply threat scoring algorithm to London transport stations

**Contents:**
- Create crowd density scores from traffic data
- Assess infrastructure criticality (major hubs vs local stations)
- Evaluate vulnerability based on accessibility
- Calculate composite threat scores using weighted factors:
  - Crowd Density: 50%
  - Infrastructure Criticality: 30%
  - Vulnerability: 20%
- Classify stations into HIGH/MEDIUM/LOW threat levels
- Export threat assessment data for website integration

**Key Outputs:**
- Threat classification for all stations
- Top high-risk stations identified
- Exportable dataset: `../data/tfl_threat_assessment.csv`

---

### 03_Website_Implementation_Strategy.ipynb
**Purpose:** Provide comprehensive recommendations for building the threat visualization website

**Contents:**
- Analysis conclusions and key findings summary
- Technical architecture recommendations (React + Leaflet.js + Flask)
- Multi-layer data integration strategy:
  - Layer 1: Static threat data (quarterly updates)
  - Layer 2: Live events (web scraping, hourly)
  - Layer 3: Real-time operational data (TfL API, 5-min intervals)
  - Layer 4: Historical incident database (monthly)
- User interface design specifications
- Dynamic threat scoring algorithm (code examples)
- Ethical and legal framework
- 20-week implementation roadmap
- Sample code for frontend map (Leaflet.js + React)

**Key Deliverables:**
- Complete technical specification for website
- Backend API structure and algorithms
- Frontend map implementation examples
- Ethical guidelines and compliance requirements

---

## Data Sources

### TfL Data

The latest TfL datasets can be downloaded directly from the official source: [https://crowding.data.tfl.gov.uk/#!](https://crowding.data.tfl.gov.uk/#!)

After downloading, place the relevant files in the `../data/tfl/` directory for use with these notebooks.
- **Annual Entry/Exit Data** (2017-2024): Station-level annual passenger counts
- **Journey Data** (2021-2023): Daily tube and bus journey totals
- **Quarterly Hourly Data**: Temporal patterns throughout the day

### Additional Data Sources (To Be Integrated)
- Global Terrorism Database (historical incidents)
- Metropolitan Police crime statistics
- OpenStreetMap (geospatial infrastructure)
- Event platforms (Eventbrite, local listings)
- News feeds and social media (live threat indicators)

---

## Running the Notebooks

### Prerequisites
```bash
# Install required Python packages
pip install pandas numpy matplotlib seaborn scipy jupyter
```

### Execution Order
1. **Start with 01_TfL_Data_Exploration.ipynb**
   - Provides foundational understanding of the data
   - No dependencies on other notebooks

2. **Then run 02_Threat_Scoring_Analysis.ipynb**
   - Builds on data exploration findings
   - Generates threat assessment dataset

3. **Finally, review 03_Website_Implementation_Strategy.ipynb**
   - Synthesizes all findings
   - Provides actionable implementation guidance
   - Contains code examples (no execution required)

### Running All Notebooks
```bash
# Navigate to notebooks directory
cd notebooks/

# Launch Jupyter
jupyter notebook

# Or use JupyterLab
jupyter lab
```

---

## Key Findings Summary

### Threat Assessment Results
- **HIGH Threat Stations:** ~30 stations (top 10%)
  - Major hubs: Bank, King's Cross, Waterloo, Oxford Circus, etc.
  - Annual traffic: 40-100+ million entries/exits
  - Require enhanced security monitoring

- **MEDIUM Threat Stations:** ~120 stations (50th-90th percentile)
  - Elevated awareness recommended
  - Annual traffic: 5-40 million entries/exits

- **LOW Threat Stations:** ~150 stations (bottom 50%)
  - Routine security measures sufficient
  - Annual traffic: <5 million entries/exits

### Temporal Patterns
- **Peak vulnerability hours:** 07:00-10:00, 17:00-19:00 weekdays
- **Weekday traffic:** 50-70% higher than weekends
- **Seasonal variation:** 20-30% reduction during summer holidays

### Geographic Patterns
- **Highest concentration:** Central London (Zone 1)
- **Critical nodes:** Major interchange stations
- **Network effect:** 20% of stations account for 80% of traffic

---

## Implementation Roadmap

### Phase 1: Foundation (Weeks 1-4)
- Set up database (PostgreSQL + PostGIS)
- Import static TfL data
- Create basic Flask API
- Build simple React + Leaflet map prototype

### Phase 2: Live Data Integration (Weeks 5-8)
- Develop web scrapers for events
- Integrate TfL Live API
- Implement dynamic threat scoring
- Add real-time map updates

### Phase 3: Enhanced UI/UX (Weeks 9-12)
- Design detailed station panels
- Add filters and controls
- Create dashboard and visualizations
- Ensure mobile responsiveness

### Phase 4: Testing & Refinement (Weeks 13-16)
- User testing with security experts
- Validate threat scores
- Security and performance audits
- Documentation

### Phase 5: Deployment (Weeks 17-20)
- Deploy to production (AWS/GCP)
- Launch beta version
- Gather feedback and iterate
- Plan public release

---

## Ethical Considerations

This project follows strict ethical guidelines:

✓ **Privacy Protection:** No PII collected, only aggregate crowd data  
✓ **Transparency:** All data sources and methods documented  
✓ **Responsible Use:** For security planning, not surveillance  
✓ **Legal Compliance:** UK GDPR, Data Protection Act 2018  
✓ **Accuracy:** Regular validation with security experts  

**Intended Use:** Emergency preparedness, resource allocation, public awareness  
**NOT for:** Individual surveillance, profiling, or creating fear

---

## Next Steps

1. **Review findings** with security experts and stakeholders
2. **Obtain approvals** for data use and ethical compliance
3. **Set up development environment** following technical recommendations
4. **Begin Phase 1 implementation** (database + basic map)
5. **Develop web scraping** for live event data
6. **Build API and frontend** according to specifications
7. **Test and validate** before deployment

---

## Resources

- **TfL Open Data:** https://tfl.gov.uk/info-for/open-data-users/
- **Leaflet.js:** https://leafletjs.com/
- **React Leaflet:** https://react-leaflet.js.org/
- **PostGIS:** https://postgis.net/
- **Global Terrorism Database:** https://www.start.umd.edu/gtd/
- **UK Counter-Terrorism:** https://www.counterterrorism.police.uk/

---

## Contact & Contribution

For questions or contributions to this analysis, please review the main project README.

**Note:** This is an analytical framework. Implementation of the actual threat visualization platform requires additional development work, security reviews, and ethical approvals.

---

*Last Updated: November 2025*
