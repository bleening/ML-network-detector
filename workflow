Step 1: Make pfSense Export Flow Data

Install on pfSense:

softflowd package

Enable:

NetFlow export

Send to a collector VM (could be Win11 or a new Linux VM)

This gives you structured flow data like:

source IP

dest IP

ports

protocol

bytes

packets

timestamps

Perfect for ML.

Step 2: Add a Monitoring VM (Linux preferred)

Small Ubuntu VM:

Install:

nfdump (NetFlow collector)

Python

Pandas

scikit-learn

Now:

pfSense → NetFlow → Linux VM → flow logs

Step 3: Generate Controlled Attacks

From Kali:

nmap scans

smb brute force

exploit metasploitable

reverse shell

simulated data exfil (scp big file repeatedly)

Now you have:

Known benign traffic

Known malicious traffic

Clean labels

This is huge.

🔥 What Makes This Powerful

Because you control both sides, you can:

Label exact timestamps of attacks

Train supervised models

Test anomaly detection

Measure false positives

Most researchers don’t get this clean of a dataset.

🧠 Advanced Option

Since you have Wazuh:

You could correlate:

Host-based events

Network flow events

ML anomaly score

Now you're approaching real SOC-level research.

⚠️ Important

Do NOT train directly on raw packet dumps at first.

Start with:

NetFlow → flow features → anomaly detection.

Packet-level experiments can come later.
