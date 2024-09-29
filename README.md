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