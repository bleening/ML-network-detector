# ML-network-detector
Captures network traffic,  Extracts flow features,  Trains an anomaly detection model,  Flags unusual behavior



📌 Project: Home ML-Based Network Anomaly Detector
🎯 Goal

Build a cheap, home-lab system that:

Captures network traffic

Extracts flow features

Trains an anomaly detection model

Flags unusual behavior

Phase 1 — Traffic Capture

Tools:

Suricata or Zeek

Or tcpdump for raw capture

Output:

JSON logs (preferred)

Or flow CSV

Deliverable:

Confirm we can capture and export structured flow data.

Phase 2 — Feature Engineering

Extract per-flow features like:

Duration

Total bytes

Packets

Avg packet size

Direction

Port

Protocol

Inter-arrival time

Output:

flow_features.csv

Phase 3 — Baseline Model

Start simple:

Isolation Forest (scikit-learn)

Or One-Class SVM

Train only on your “normal” traffic.

Goal:

Model what normal looks like.

Phase 4 — Generate Test Anomalies

Simulate:

Port scan

Large file transfer

Rapid DNS queries

Lateral movement between VMs

Then check:

Does the model flag them?

Phase 5 — Visualization (Optional but cool)

Plot anomaly scores over time

Highlight suspicious flows

🛠 Tech Stack

Python

scikit-learn

Pandas

Zeek or Suricata

Optional: Jupyter Notebook
