# Stage 1: Define Scope and Requirements

1. **Define Scope and Requirements**
   - Select the target city (London) and specify core features: satellite basemap, overlay for threat zones, user interactivity, scalability for other cities.
   - Decide map symbols (colors, lines, boxes) and threat scoring logic, as established in your initial guide.

2. **Collect and Prepare Data**
   - Gather static threat data: download open datasets listing critical infrastructure (e.g. OpenStreetMap extracts for London, police/crime data, transport hubs, government buildings).
   - Obtain previous terror attack/local incident data: sources may include Global Terrorism Database, ONS Crime stats, local council safety reports.
   - Format all datasets in common geospatial formats (GeoJSON, CSV with coordinates).
   - Optionally, enrich data with vulnerability attributes such as population density, proximity to borders, building accessibility.

3. **Develop Threat Scoring and Classification Logic**
   - Create a simple scoring algorithm (e.g., assign points for each risk factor: previous incident nearby, critical infrastructure type, crowd density, etc.).
   - Classify all map areas/buildings into high, medium, or low threat, and assign colours for each class (red, yellow, green).

4. **Choose Satellite Map Technology**
   - **Recommended Mapping Libraries:**
     - Leaflet.js – Free and flexible JavaScript library for interactive maps; supports overlays and custom layers.
     - OpenLayers – Open source with strong support for high-performance overlays and multiple data formats.
     - MapTiler or Google Maps API – If higher-quality imagery is required; both provide satellite basemaps and custom overlays.
   - **Satellite Imagery Sources:**
     - OpenStreetMap for base layers (London).
     - Free satellite imagery API (e.g., Sentinel, MapTiler, or Google Maps Satellite view).

5. **Build Map Overlays**
   - Use overlays (polygons, boxes, lines) in your chosen JavaScript mapping library to visualize threat zones.
   - Connect overlay features to your threat dataset (geospatial coordinates mapped to colored polygons/boxes).

6. **Design and Build the Website**
   - Build a web front-end using lightweight frameworks (e.g., React.js, Vue.js, or plain HTML/JS if rapid prototyping).
   - Integrate map component and ensure interactive controls: zooming, switching layers, viewing info on click.
   - Develop backend/API for serving threat data (if dynamic). Use Node.js/Python Flask for easy integration.
   - Add basic site pages: about, methodology, data sources, city selector.

7. **Test and Deploy**
   - Test overlays and threat mapping for accuracy; ensure correct colour logic and responsiveness.