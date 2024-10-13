# HSA_Attacks

## Fuck the Hack :)
1. Setup two docker containers:
- Attacker container  - there you need to write scripts that will implement 6 attacks (UDP Flood, ICMP flood, HTTP flood, Slowloris, SYN flood, Ping of Death)
- Defender container  - ubuntu & nginx with simple website.
2. Try to implement protection on Defender container.
3. Launch attacker scripts and examine you protection.

## Run the Project
````bash
docker-compose up --build
````

## Testing
Launch attacker scripts in attacker/scripts folder

## Dashboard
Open http://localhost:3000 and view the metrics

## Summary
### Attack:
- UDP Flood: Sends a large number of UDP packets to overload network and CPU resources.
- ICMP Flood (Ping Flood): Sends massive ICMP requests (ping) to overwhelm the server.
- HTTP Flood: Floods the server with numerous HTTP requests to exhaust resources.
- Slowloris: Slowly opens many connections and keeps them alive to drain server resources.
- SYN Flood: Sends numerous SYN packets to create half-open TCP connections and strain the TCP stack.
- Ping of Death: Sends malformed or oversized ICMP packets to potentially crash the system.
### Testing:
The attacks successfully created significant load on the Defender container, as observed via Docker stats.
However, Telegraf and Grafana failed to capture and display this load, despite the container being under heavy strain.