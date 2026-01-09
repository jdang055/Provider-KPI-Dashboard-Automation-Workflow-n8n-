# Troubleshooting

## Postgres Connection Errors
- IPv6 ENETUNREACH: Use Supabase pooler/session connection
- Tenant or user not found: Verify pooler host and database user

## Gmail Issues
- OAuth permission errors: Reconnect Gmail credential
- Email renders as plain text: Ensure HTML content is enabled

## LLM Issues
- Hallucinated data: Ensure KPI JSON is explicitly passed to Gemini
- Missing summary text: Verify multi-item merge step
