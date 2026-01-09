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
```
## Setup and Usage

### 2) Configure n8n Credentials

In **n8n Cloud**, configure the following credentials using the built-in Credentials manager:

- **Postgres (Supabase)** – database connection for provider KPI queries  
- **Google Sheets** – destination for KPI snapshot logging  
- **Google Gemini** – AI-generated operations summary  
- **Gmail** – automated email delivery of weekly KPI reports  

Credentials are managed securely within n8n and are **not** included in the exported workflow JSON.

---

### 3) Import the Workflow

1. Import the workflow JSON file:
   - `n8n/provider_kpi_workflow.json`
2. Open the imported workflow in n8n.
3. For each relevant node, select the appropriate credentials you configured in Step 2.

---

### 4) Configure Google Sheet Target

Create a Google Sheet and add a tab named kpi_snapshot.

Ensure the header row includes the following columns **in this order**:

- `run_date`
- `provider_name`
- `specialty`
- `appts_60d`
- `avg_resp_min`
- `completion_rate`
- `avg_rating`
- `feedback_count`
- `ops_status`

This sheet is used to store historical KPI snapshots for trend tracking.

---

### 5) Test a Run

1. Execute the workflow manually from n8n.
2. Confirm the following outcomes:
   - New KPI rows are appended to the `kpi_snapshot` Google Sheet.
   - A summary email is delivered via Gmail.
   - The email is properly formatted with section headers and bullet points (HTML rendering).

---

## How It Works (High Level)

- A scheduled trigger runs the workflow weekly.
- Postgres SQL computes provider KPIs and operational status.
- Results are appended to Google Sheets for historical tracking.
- Structured KPI JSON is sent to Google Gemini to generate a grounded operations summary.
- The summary is converted into HTML for readability.
- Gmail sends the final weekly KPI update to stakeholders.

---

## Notes and Safety

- No PHI is included (no diagnoses, medications, insurance, or patient identifiers).
- All data is synthetic and intentionally designed to surface clear operational signals:
  - Top-performing providers
  - Watch list providers
  - Providers requiring operational intervention



