# Workflow Architecture

This project uses Supabase (Postgres) as the system of record for provider activity.
An n8n workflow orchestrates KPI computation, snapshot logging, AI summarization,
and email delivery.

## Data Flow
Supabase (Postgres)
→ n8n (SQL + logic)
→ Google Sheets (historical KPI snapshots)
→ Google Gemini (AI summary)
→ Gmail (weekly ops email)

## Design Principles
- SQL as source of truth
- No PHI stored or transmitted
- AI used only for summarization, not decision-making
