select * from healthcare_operational_analytics_dataset;

-- KPI 1 — Referral Turnaround Performance --
SELECT
    department,
    AVG(referral_turnaround_days) AS avg_turnaround_days
FROM healthcare_operational_analytics_dataset
GROUP BY department
ORDER BY avg_turnaround_days;

-- KPI 2 — Scheduling Delays --
SELECT
    location,
    AVG(scheduling_wait_days) AS avg_wait_days
FROM healthcare_operational_analytics_dataset
GROUP BY location;

-- KPI 3 — SLA Breach Analysis --
SELECT
    COUNT(*) AS breached_cases
FROM healthcare_operational_analytics_dataset
WHERE preauth_actual_days > preauth_sla_target_days;

-- KPI 4 — Capacity Utilization --
SELECT
    department,
    AVG(capacity_utilization_percent) AS avg_capacity
FROM healthcare_operational_analytics_dataset
GROUP BY department;

-- KPI 5 — Workflow Bottleneck Identification --
SELECT
    workflow_bottleneck_flag,
    COUNT(*) AS cases
FROM healthcare_operational_analytics_dataset
GROUP BY workflow_bottleneck_flag;

