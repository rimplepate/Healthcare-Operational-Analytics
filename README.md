# Healthcare Operational Analytics Dashboard

## Project Overview

This project focuses on building an end-to-end healthcare operational analytics solution designed to monitor and improve operational performance across patient referral workflows, scheduling operations, eligibility verification, and insurance pre-authorization processes.

The solution leverages SQL, PostgreSQL, Excel Power Query, and Tableau Public to automate KPI reporting, identify workflow bottlenecks, and deliver actionable operational insights for leadership teams.

The dashboard provides operational visibility into:

* Referral turnaround performance
* Scheduling wait times
* Capacity utilization
* Eligibility verification status
* Insurance pre-authorization SLA compliance
* Workflow bottleneck analysis

# Business Problem

Healthcare operational teams often face challenges related to:

* Delayed patient referrals
* Scheduling inefficiencies
* Insurance authorization bottlenecks
* Capacity planning issues
* Lack of centralized operational reporting

The goal of this project was to create a centralized analytics dashboard that enables leadership teams to monitor operational KPIs, identify delays proactively, and support data-driven operational planning decisions.

# Tools & Technologies Used

| Tool              | Purpose                                |
| ----------------- | -------------------------------------- |
| PostgreSQL        | Database storage and SQL querying      |
| SQL               | KPI analysis and operational reporting |
| Excel Power Query | Data cleaning and transformation       |
| Tableau Public    | Interactive dashboard visualization    |
| CSV / Excel       | Data source                            |

# Dataset Overview

The dataset simulates healthcare operational workflows and contains information related to:

* Patient intake
* Referral processing
* Scheduling operations
* Eligibility verification
* Insurance authorization
* Operational SLA monitoring
* Capacity utilization

### Key Dataset Columns

* Patient_ID
* Department
* Location
* Insurance_Type
* Referral_Status
* Referral_Turnaround_Days
* Scheduling_Wait_Days
* Capacity_Utilization_Percent
* Eligibility_Status
* Authorization_Status
* PreAuth_Actual_Days
* Workflow_Bottleneck_Flag
* Monthly_Operational_Score

# Project Workflow

## 1. Data Preparation

* Imported CSV dataset into PostgreSQL
* Validated data types and operational metrics
* Cleaned and transformed data using SQL and Power Query

## 2. KPI Development

Created operational KPIs including:

* Average referral turnaround time
* Scheduling wait time
* SLA breach percentage
* Capacity utilization rate
* Workflow bottleneck frequency

## 3. Dashboard Development

Built interactive Tableau dashboards to monitor:

* Referral operations
* Scheduling performance
* SLA compliance
* Operational throughput
* Department-level trends

## 4. Business Insights

Generated operational insights to support:

* Staffing optimization
* Workflow improvement
* SLA monitoring
* Operational planning
* Leadership reporting

# Dashboard Features

## Executive KPI Dashboard

* Total Patients
* Avg Referral Turnaround
* Avg Scheduling Wait Time
* SLA Breach Monitoring
* Capacity Utilization Metrics

## Referral Operations Dashboard

* Referral status tracking
* Delayed referral identification
* Department turnaround analysis

## Scheduling Analytics Dashboard

* Scheduling trends
* Utilization heatmaps
* Appointment throughput analysis

## Insurance & SLA Dashboard

* Eligibility verification monitoring
* Pre-authorization SLA breaches
* High-risk workflow identification

# Sample SQL Queries

## Average Referral Turnaround by Department

SELECT
    department,
    AVG(referral_turnaround_days) AS avg_turnaround_days
FROM operational_metrics
GROUP BY department
ORDER BY avg_turnaround_days;

## SLA Breach Analysis

SELECT
    COUNT(*) AS breached_cases
FROM operational_metrics
WHERE preauth_actual_days > preauth_sla_target_days;

# Key Business Insights

* Referral turnaround delays were highest in Radiology and Neurology departments.
* Capacity utilization exceeded optimal thresholds in several locations.
* Insurance pre-authorization delays contributed to scheduling bottlenecks.
* Workflow bottlenecks impacted operational throughput and patient scheduling efficiency.
* Operational performance improved in departments with lower referral turnaround times.

# Recommendations

* Implement automated SLA breach alerts for delayed authorization cases.
* Improve staffing allocation during peak scheduling periods.
* Standardize eligibility verification workflows.
* Enhance operational monitoring through real-time dashboards.
* Improve communication between clinical operations, billing, and IT teams.

# Tableau Dashboard

Tableau Public Dashboard Link: https://public.tableau.com/views/HealthcareOperationalAnalyticsDashboard/HealthcareOperationsDashboard?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link

# Project Structure

Healthcare-Operational-Analytics/
│
├── dataset/
│   ├── healthcare_operational_analytics_dataset.csv
│
├── sql_queries/
│   ├── operational_kpis.sql
│
├── tableau_dashboard/
│   ├── healthcare_dashboard.twb
│
├── screenshots/
│   ├── executive_dashboard.png
│   ├── referral_analysis.png
│
├── README.md
│
└── insights/
    ├── business_insights.md

# Skills Demonstrated

* SQL Querying
* PostgreSQL
* Tableau Dashboard Development
* Healthcare Analytics
* Operational KPI Reporting
* Data Cleaning & Transformation
* Workflow Analysis
* SLA Monitoring
* Business Intelligence
* Data Storytelling
* Stakeholder Reporting

# Future Enhancements

* Predictive analytics for SLA breach forecasting
* Patient scheduling demand forecasting
* Python-based operational risk analysis
* Automated reporting pipelines
* Advanced Tableau drill-down functionality

# Author

Rimple Patel

LinkedIn: www.linkedin.com/in/rimplepatel2308


