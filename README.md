# Provider-KPI-Dashboard-Automation-Workflow-n8n ⚕️💊🩺

Automated provider performance monitoring workflow for a Clinical Operations team.  
Pulls KPIs from Postgres (Supabase), logs historical snapshots to Google Sheets, generates an AI-assisted ops summary (Gemini), and sends a formatted weekly KPI email via Gmail.

## Why this project
Clinical Ops teams need consistent, data-driven visibility into provider performance. This workflow simulates a real KPI-driven operations loop:
**SQL → KPI classification → dashboard logging → AI summary → stakeholder email**

## What it does
- Queries provider KPIs from Supabase Postgres (last 60 days)
- Calculates and classifies providers into:
  - `TOP PERFORMER`
  - `WATCH`
  - `NEEDS INTERVENTION`
- Appends KPI snapshots to Google Sheets (`kpi_snapshot`)
- Uses Google Gemini to generate a grounded weekly summary
- Converts the summary to HTML and emails it via Gmail

## Tech stack
- Supabase (Postgres)
- n8n Cloud
- Google Sheets
- Google Gemini (LLM summary)
- Gmail (email delivery)

---

# Quick Start

## 1) Create and seed the database (Supabase)
In Supabase SQL Editor, run:
1. `sql/01_schema.sql`
2. `sql/02_seed_data.sql`

Then sanity check:
```sql
select count(*) from providers;
select count(*) from appointments;
select count(*) from patient_feedback;
