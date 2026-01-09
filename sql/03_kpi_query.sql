-- Provider KPI query (last 60 days)
-- Calculates response time, completion rate, patient satisfaction
-- Used by n8n workflow: provider_kpi_workflow.json

SELECT
  provider_name,
  specialty,
  appts_60d,
  avg_resp_min,
  completion_rate,
  avg_rating,
  CASE
    WHEN avg_resp_min >= 35
      OR completion_rate < 0.80
      OR avg_rating < 3.0
      THEN 'NEEDS INTERVENTION'
    WHEN avg_resp_min BETWEEN 20 AND 34
      OR completion_rate BETWEEN 0.80 AND 0.92
      OR avg_rating BETWEEN 3.0 AND 3.7
      THEN 'WATCH'
    ELSE 'TOP PERFORMER'
  END AS ops_status
FROM (
  SELECT
    p.provider_name,
    p.specialty,
    COUNT(a.appointment_id) AS appts_60d,
    ROUND(AVG(a.response_time_minutes)::numeric, 1) AS avg_resp_min,
    ROUND(AVG(CASE WHEN a.completed THEN 1 ELSE 0 END)::numeric, 3) AS completion_rate,
    ROUND(AVG(f.rating)::numeric, 2) AS avg_rating
  FROM providers p
  LEFT JOIN appointments a ON a.provider_id = p.provider_id
  LEFT JOIN patient_feedback f ON f.appointment_id = a.appointment_id
  WHERE a.appointment_date >= (CURRENT_DATE - 60)
  GROUP BY p.provider_name, p.specialty
) x
ORDER BY ops_status DESC, avg_resp_min DESC;
