# Observing Crisis Landscape
The system concept originated from analyzing Indonesia’s recent disasters in 2025, which revealed a pattern of fragmented reporting and delayed coordination.

- [Boarding School Collapse - Al Khoziny, East Java](https://www.reuters.com/world/asia-pacific/indonesia-ends-search-victims-boarding-school-collapse-61-dead-2025-10-07/)
- [Flood & Landslide Events in Bali & East Nusa Tenggara (NTT)](https://people.com/catastrophic-flash-flooding-indonesia-leaves-15-dead-10-missing-rescues-continue-11807901)
- [Mining / Mud-flow Disaster - Grasberg Mine, Papua](https://www.reuters.com/world/asia-pacific/freeport-says-five-workers-found-dead-after-indonesian-mine-mud-flow-disaster-2025-10-06/  )
- [Quarry Collapse - West Java](https://www.reuters.com/business/environment/search-continues-indonesia-quarry-collapse-victims-death-toll-17-2025-06-01/)
- [Volcanic Activity - Mount Lewotobi (Flores)](https://apnews.com/article/indonesia-mount-lewotobi-laki-laki-volcano-eruption-04de50256887dab865c39b79aea7e198)
- [Earthquake - Central Sulawesi (Poso Regency)](https://www.euronews.com/2025/08/17/magnitude-58-earthquake-rocks-indonesias-sulawesi-island)
- [Expired Ammunition Disposal Explosion - Garut, West Java](https://apnews.com/article/indonesia-army-ammunition-disposal-blast-java-west-3b65f64d1158de9dd223a0fe923b1523)

These incidents were not random: they reflected recurring structural weaknesses — in infrastructure, information flow, and citizen engagement.

By surveying recent news and official sources, it became clear that:
- Disasters were **multiform**.

- The **information bottleneck** existed not in detection but in **coordination**. In other words, how reports reach the right responders.

- Public reporting and institutional response remained **fragmented** across agencies, media, and communication channels.

# Pattern Extraction from Disaster Types
Through clustering of the incidents, five broad categories emerged:
| Category                             | Typical Examples                    | Dominant Characteristics             |
| ------------------------------------ | ----------------------------------- | ------------------------------------ |
| **Structural & Industrial Failures** | Building, quarry, mining, explosion | Human error, poor oversight          |
| **Hydrometeorological Disasters**    | Floods, landslides, peat drainage   | Climate-driven, data-heavy, regional |
| **Geological Hazards**               | Earthquake, volcanic activity       | Sensor-based, spatially predictable  |
| **Transport & Maritime**             | Ferry sinking, air/road accidents   | Human + environmental overlap        |
| **Environmental/Technological**      | Radiation, chemical contamination   | Regulatory, lab-based detection      |

Across all these categories, the common traits surfaced:

- Multiple data sources: citizen reports, sensors, media feeds.

- Need for validation and triage before response.

- Shared information gap between local and institutional levels.

- Requirement for cross-channel alerts to public and agencies.

This synthesis allowed abstraction of disasters into **data flows** rather than event types — paving the way for modular backend thinking.

# Conceptual Leap
Instead of building one-off APIs per disaster type, the insight was:

> "All crises are signals that must be normalized, contextualized, and communicated."

That abstraction informed the three-module architecture; a minimal yet complete loop for input, reasoning, and output.

| Module                           | Core Purpose                                                                                      | Inspired by Common Trait                            |
| -------------------------------- | ------------------------------------------------------------------------------------------------- | --------------------------------------------------- |
| **Intake & Normalization**   | Unify heterogeneous reports (citizen, SMS, social media, sensors) into a consistent signal schema | Every disaster starts as a *fragmented signal*      |
| **Case Registry & Workflow** | Merge related signals into structured *cases* with trackable actions and statuses                 | All crises evolve; status transparency builds trust |
| **Subscriptions & Fan-Out**  | Deliver verified updates via SMS, social media, webhook, or app notifications                     | Timely awareness prevents escalation                |

# Rational for Modules

All three modules are combined to form an event-driven loop:

> Detect → Contextualize → Disseminate.

**Intake** answers the fragmentation problem. It receives and structure multiple fragmented signals (tweets, texts, API feeds).

**Case Registry** answers the coordination gap. It's a centralized place for governments, NGOs, and citizens to track progress and accountability.

**Subscriptions** answers the communication lag. One event triggers many notifications, ensuring inclusivity. This accomodates low-tech users through SMS.

This design allows:

- **Extensibility**: plug new sources or channels without altering the core.

- **Transparency**: citizens see where reports stand and who acted.

- **Interoperability**: open APIs support government dashboards, NGO tools, or public apps.