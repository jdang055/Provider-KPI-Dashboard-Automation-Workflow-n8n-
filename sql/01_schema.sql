-- Schema for Provider KPI Dashboard Automation

CREATE TABLE providers (
  provider_id BIGSERIAL PRIMARY KEY,
  provider_name TEXT NOT NULL,
  specialty TEXT,
  active BOOLEAN DEFAULT true,
  created_at TIMESTAMPTZ DEFAULT now()
);

CREATE TABLE appointments (
  appointment_id BIGSERIAL PRIMARY KEY,
  provider_id BIGINT NOT NULL REFERENCES providers(provider_id),
  scheduled_time TIMESTAMPTZ NOT NULL,
  appointment_date DATE NOT NULL,
  response_time_minutes INTEGER,
  completed BOOLEAN DEFAULT false,
  created_at TIMESTAMPTZ DEFAULT now()
);

CREATE TABLE patient_feedback (
  feedback_id BIGSERIAL PRIMARY KEY,
  provider_id BIGINT NOT NULL REFERENCES providers(provider_id),
  appointment_id BIGINT,
  rating SMALLINT CHECK (rating BETWEEN 1 AND 5),
  submitted_at TIMESTAMPTZ DEFAULT now(),
  comment TEXT
);
