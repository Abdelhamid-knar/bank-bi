# Bank BI Project

BI pipeline for client equipment analysis.
Stack: Apache NiFi → PostgreSQL (Bronze / Silver / Gold) → Power BI.

## Setup
1. Copy `.env.example` to `.env` and fill in the values.
2. Download the PostgreSQL JDBC driver into `drivers/`.
3. `docker compose up -d nifi`

## Progress log
- [x] Environment (Docker, PostgreSQL on Windows, NiFi)
- [x] Ingestion: Table_Clients to bronze
- [ ] Ingestion: lookup tables
- [ ] Silver layer
- [ ] Gold star schema
- [ ] Power BI dashboards
- [ ] Chatbot
