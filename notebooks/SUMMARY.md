# PERIL Project - Notebook Summary

### 📊 Notebook 1: TfL Data Exploration
**File:** `01_TfL_Data_Exploration.ipynb`

**What it covers:**
- Loads and analyzes TfL annual entry/exit data (2024)
- Examines daily journey patterns (2023)
- Identifies the busiest stations in London
- Analyzes traffic by transport mode (Underground, Overground, DLR, etc.)
- Discovers day-of-week patterns (weekday vs weekend)
- Studies seasonal variations throughout the year

**Key visualizations:**
- Top 20 busiest stations (bar chart)
- Traffic distribution by mode (pie chart)
- Daily journey patterns throughout 2023 (time series)
- Day-of-week traffic patterns (bar chart)
- Monthly seasonality analysis (line chart)

**Key findings:**
- Identified 300+ stations with complete traffic data
- Weekday traffic is 50-70% higher than weekends
- Peak months identified for security planning
- Major hubs handle majority of passenger traffic

---

### 🎯 Notebook 2: Threat Scoring Analysis
**File:** `02_Threat_Scoring_Analysis.ipynb`

**What it covers:**
- Develops evidence-based threat scoring methodology
- Creates crowd density scores (0-100 scale)
- Identifies major infrastructure hubs (symbolic targets)
- Assesses vulnerability by transport mode
- Calculates composite threat scores with weighted factors:
  - Crowd Density: 50%
  - Infrastructure Criticality: 30%
  - Vulnerability: 20%
- Classifies stations into HIGH/MEDIUM/LOW threat levels
- Exports data for website integration

**Key visualizations:**
- Threat level distribution (pie chart)
- Threat score histogram with classification thresholds
- Top 20 highest threat stations (bar chart)
- Traffic vs threat score scatter plot
- Box plots by transport mode

**Key outputs:**
- Complete threat assessment for all stations
- Top 30 HIGH THREAT stations identified
- Exportable CSV: `tfl_threat_assessment.csv`
- Actionable security recommendations

---

### 🌐 Notebook 3: Website Implementation Strategy
**File:** `03_Website_Implementation_Strategy.ipynb`

**What it covers:**
- Comprehensive technical architecture recommendations
- Multi-layer data integration strategy (static + live + real-time)
- User interface design specifications
- Dynamic threat scoring algorithm (with code examples)
- Sample backend API implementation (Flask)
- Sample frontend map code (React + Leaflet.js)
- Ethical and legal framework
- 20-week implementation roadmap
- Security and privacy considerations

**Key deliverables:**
- Complete technical stack recommendations
- Database schema design (PostgreSQL + PostGIS)
- API endpoint structure
- Frontend map component code
- Web scraping strategy for live events
- Compliance guidelines (GDPR, UK Data Protection Act)
- Phase-by-phase implementation plan

---

## How the Data is Used for Threat Analysis

### 1. **Crowd Density = Risk Exposure**
- Higher traffic = more potential casualties in an incident
- TfL data shows which stations have the largest crowds
- Temporal patterns reveal when vulnerability is highest

### 2. **Infrastructure Criticality**
- Major interchange hubs (Bank, King's Cross, Waterloo) are symbolic targets
- Disruption to these stations has wider network impact
- Analysis identifies the most critical 20-30 stations

### 3. **Temporal Vulnerability Windows**
- Weekday rush hours (07:00-10:00, 17:00-19:00) are peak risk periods
- Weekend and holiday periods show reduced traffic
- Security resources can be allocated based on these patterns

### 4. **Geographic Clustering**
- Central London (Zone 1) has highest concentration of high-risk stations
- Helps identify areas needing enhanced security presence
- Supports emergency response planning

---

## Website Implementation Strategy

### Technical Architecture

**Frontend:**
- React.js or Vue.js framework
- Leaflet.js for interactive maps
- D3.js for charts and visualizations
- Material-UI or Tailwind CSS for design

**Backend:**
- Flask (Python) or Node.js/Express
- PostgreSQL with PostGIS for geospatial data
- Redis for caching live data
- Celery for scheduled tasks

**Data Pipeline:**
- Web scraping (Scrapy) for event data
- TfL Live API integration
- News feed monitoring
- Automated data updates

### Map Features

**Visual Elements:**
- Color-coded station markers:
  - 🔴 RED = HIGH threat (top 10%)
  - 🟠 ORANGE = MEDIUM threat (50th-90th percentile)
  - 🟢 GREEN = LOW threat (bottom 50%)
- Marker size proportional to traffic volume
- Interactive popups with detailed threat breakdowns

**User Controls:**
- Filter by threat level
- Filter by transport mode
- Time period selection
- Event overlay toggle
- Search for specific stations

**Information Panels:**
- Station detail view with risk breakdown
- Dashboard with summary statistics
- Top threat stations list
- Alert feed for elevated threats

### Data Integration Layers

**Layer 1: Static Threat Data** (Quarterly updates)
- TfL annual entry/exit data
- Pre-calculated threat scores
- Station attributes and classifications

**Layer 2: Live Event Data** (Hourly updates)
- Web-scraped event listings (Eventbrite, etc.)
- News mentions of security incidents
- Social media sentiment analysis

**Layer 3: Real-time Operations** (5-minute intervals)
- TfL service disruptions
- Emergency service activity
- Official threat level changes

**Layer 4: Historical Incidents** (Monthly updates)
- Global Terrorism Database
- Met Police crime statistics
- Past attack locations and patterns

---

## Key Recommendations for Website

### 1. **Dynamic Threat Scoring**
Base threat score is elevated by:
- Large nearby events (>10k attendees): 1.5x multiplier
- Peak commute hours: 1.3x multiplier
- Weekdays vs weekends: 1.2x multiplier
- News mentions/social media activity: 1.2x multiplier

### 2. **Security Applications**
- **Resource Allocation:** Deploy officers to HIGH threat stations
- **Event Planning:** Cross-reference events with nearby station risk
- **Emergency Drills:** Prioritize training at highest-risk locations
- **Public Awareness:** Educate travelers without creating panic

### 3. **Ethical Compliance**
✓ No personally identifiable information (PII)  
✓ Only aggregate, anonymized crowd data  
✓ Full transparency about data sources and methodology  
✓ Disclaimers about probabilistic (not deterministic) predictions  
✓ GDPR and UK Data Protection Act compliance  
✓ Regular ethical reviews and expert validation  

### 4. **Implementation Timeline**

**Phase 1 (Weeks 1-4):** Basic map with static threat data  
**Phase 2 (Weeks 5-8):** Live event integration and dynamic scoring  
**Phase 3 (Weeks 9-12):** Enhanced UI with filters and dashboards  
**Phase 4 (Weeks 13-16):** Testing, validation, security audits  
**Phase 5 (Weeks 17-20):** Production deployment and iteration  

---

## Running the Notebooks

### Prerequisites
```bash
pip install pandas numpy matplotlib seaborn scipy jupyter
```

### Execution Order
1. **01_TfL_Data_Exploration.ipynb** - Understand the data
2. **02_Threat_Scoring_Analysis.ipynb** - Calculate threat scores
3. **03_Website_Implementation_Strategy.ipynb** - Review implementation plan

### To start:
```bash
cd notebooks/
jupyter notebook
```

---

## Key Findings Summary

### Highest Threat Stations (Top 10)
Based on the composite threat scoring algorithm, these stations require priority security monitoring:

1. King's Cross St. Pancras (Major Hub, 100M+ annual traffic)
2. Waterloo (Major Hub, 90M+ annual traffic)
3. Bank and Monument (Financial District Hub)
4. Oxford Circus (Central shopping district)
5. Victoria (International transport hub)
6. Liverpool Street (Financial District, Eastern gateway)
7. London Bridge (Major interchange)
8. Stratford (Olympic Park, Eastern hub)
9. Paddington (Western gateway)
10. Canary Wharf (Financial District)

### Threat Level Distribution
- **HIGH:** ~30 stations (10%) - Enhanced security required
- **MEDIUM:** ~120 stations (40%) - Elevated awareness
- **LOW:** ~150 stations (50%) - Routine monitoring

### Temporal Risk Patterns
- **Highest Risk:** Monday-Friday, 07:00-10:00 and 17:00-19:00
- **Elevated Risk:** Weekdays (50-70% more traffic than weekends)
- **Reduced Risk:** Weekends and summer holidays (20-30% less traffic)

---

## Next Steps to Build the Website

1. **Review the notebooks** to understand the analysis methodology
2. **Run the notebooks** to generate threat assessment data
3. **Set up development environment:**
   - PostgreSQL + PostGIS database
   - Python Flask backend
   - React + Leaflet.js frontend
4. **Import threat data** into database
5. **Create API endpoints** to serve station data
6. **Build interactive map** with color-coded markers
7. **Integrate live data sources** (TfL API, event scraping)
8. **Test and validate** with security experts
9. **Deploy** to cloud platform (AWS/GCP)

---

## Ethical Considerations

### This system is designed to:
✓ Inform security planning and resource allocation  
✓ Support emergency preparedness  
✓ Increase public awareness responsibly  
✓ Respect privacy and civil liberties  

### This system is NOT designed to:
✗ Predict specific attacks  
✗ Surveil individuals  
✗ Create fear or panic  
✗ Replace human security judgment  

**Important:** All use must comply with UK law, counter-terrorism best practices, and ethical guidelines for responsible data use.

---

## Support Resources

- **TfL Open Data:** https://tfl.gov.uk/info-for/open-data-users/
- **Leaflet.js Documentation:** https://leafletjs.com/
- **React Leaflet:** https://react-leaflet.js.org/
- **PostGIS:** https://postgis.net/
- **Global Terrorism Database:** https://www.start.umd.edu/gtd/
- **UK Counter-Terrorism Policing:** https://www.counterterrorism.police.uk/

---

## Questions or Issues?

The notebooks contain extensive documentation, code examples, and explanations. Each cell includes comments explaining the analysis methodology and findings.

For technical implementation questions, refer to Notebook 3 which contains detailed architecture specifications and sample code.

---

*Created: November 2025*  
*Project: PERIL - Public Event Risk Intelligence London*
