# In-App Marketing Impact Measurement

## Portfolio case study

**Important:** This is a recreated portfolio case study based on an analytics project I worked on professionally. All data, numbers, SQL, and visualizations in this repository are synthetic and created solely for demonstration. No confidential or proprietary information from any employer is included.

## Business problem

Marketing teams often optimize in-app campaigns using surface-level metrics such as clicks or engagement. The harder question is:

> **Did the in-app experience actually change customer behavior?**

The goal of this analysis is to create a repeatable framework for measuring incremental engagement and conversion across in-app placements and customer segments.

## What I built

- Synthetic user-level campaign dataset with 30,000 users
- Treatment/control analysis
- Placement-level performance analysis
- Segment-level lift analysis
- Revenue and engagement analysis
- SQL queries for reusable analysis
- Python analysis workflow
- Executive-friendly charts and recommendations

## Analytical approach

1. Define treatment and control cohorts.
2. Measure engagement and conversion outcomes.
3. Compare exposed users with a control group.
4. Quantify incremental lift rather than relying only on raw conversion.
5. Break results down by placement and customer segment.
6. Translate findings into targeting and placement recommendations.

## Key portfolio findings

The synthetic data is designed to illustrate a realistic decision-making pattern:

- Merchandising Cards produce the strongest incremental conversion lift.
- Banners provide meaningful but smaller incremental impact.
- Pop-ups show weaker incremental impact relative to their exposure.
- High-value and returning users demonstrate stronger response to relevant in-app experiences.

**These findings are illustrative and are not claims about the performance of any real company or campaign.**

## Tech stack

- SQL
- Python
- pandas / NumPy
- SQLite for reproducible SQL execution
- Matplotlib
- Experimentation / causal measurement concepts
- Dashboarding and data storytelling

## Repository structure

```text
.
├── synthetic_user_campaign_data.csv
├── placement_summary.csv
├── segment_summary.csv
├── weekly_campaign_trend.csv
├── portfolio.db
├── placement_performance.sql
├── segment_performance.sql
├── high_value_targeting.sql
├── analysis.py
├── chart_incremental_lift.png
├── chart_conversion_rate.png
├── chart_segment_conversion.png
└── README.md
```

## What this demonstrates

This case study demonstrates how I approach ambiguous analytics problems:

**Business question → measurement framework → data → analysis → insight → recommendation**

The emphasis is not only on producing a metric, but on determining whether the metric represents meaningful incremental business impact.

## Reproduction

```bash
pip install pandas numpy matplotlib
python analysis.py
```

The analysis script reads `synthetic_user_campaign_data.csv`, calculates placement and segment-level lift, prints the analytical outputs, and generates the incremental-lift chart.

## Portfolio disclaimer

This repository is a synthetic recreation intended to demonstrate analytical thinking, technical skills, and storytelling. It contains no confidential datasets, proprietary code, internal metrics, customer information, or company-specific documentation.
