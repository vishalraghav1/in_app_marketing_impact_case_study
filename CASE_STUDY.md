# In-App Marketing Impact Measurement

### From engagement metrics to incremental business impact

> **Portfolio case study:** This is a synthetic recreation of a professional analytics project. All data and numerical results shown here are illustrative.

---

## 01 — The challenge

Marketing teams were investing heavily in in-app experiences such as banners, merchandising cards, and pop-ups.

The challenge was that traditional engagement metrics could not answer the most important question:

**Were these experiences actually changing customer behavior, or were they simply capturing users who were already likely to convert?**

I set out to build a repeatable measurement framework that could distinguish **activity from incremental impact**.

---

## 02 — My role

I owned the analytical work end-to-end:

- Framed the measurement problem
- Defined the primary KPIs
- Designed the treatment/control comparison
- Built the analytical data layer
- Performed user and segment-level analysis
- Evaluated incremental conversion
- Built reporting outputs
- Translated findings into actionable recommendations

---

## 03 — Measurement framework

### Primary KPI

**Incremental Conversion Lift**

Instead of optimizing purely for clicks or engagement, the framework compared conversion between exposed and control cohorts.

**Incremental lift = Exposed conversion rate − Control conversion rate**

Supporting metrics included:

- Engagement rate
- Conversion rate
- Revenue per user
- Placement performance
- Segment-level response

---

## 04 — Analytical workflow

**Business question**

↓

**Define treatment & control**

↓

**Build clean analytical dataset**

↓

**Measure conversion + engagement**

↓

**Calculate incremental lift**

↓

**Segment by placement and customer type**

↓

**Identify high-impact opportunities**

↓

**Recommend where marketing should invest**

---

## 05 — Synthetic results

The recreated dataset contains 30,000 synthetic users.

The analysis illustrates a clear pattern: some placements generate substantially more incremental conversion than others.

The important analytical distinction is between **observed conversion** and **incremental conversion**.

A placement can have a high conversion rate while still creating limited incremental value if the users exposed to it were already highly likely to convert.

---

## 06 — What the analysis suggests

### 1. Prioritize high-incremental-impact placements

The synthetic analysis indicates that merchandising cards create the strongest incremental conversion improvement.

### 2. Avoid optimizing purely for engagement

Engagement is useful as a diagnostic metric, but it should not be treated as proof of business impact.

### 3. Use segment-level measurement

The same in-app experience can perform very differently across customer segments.

### 4. Make targeting part of the measurement framework

The biggest opportunity is not simply choosing the best placement, but determining **which users should receive which experience**.

---

## 07 — Business recommendation

A practical decision framework would be:

| Decision | Recommended approach |
|---|---|
| Placement | Prioritize placements with positive incremental lift |
| Targeting | Focus exposure on segments with stronger incremental response |
| Measurement | Use treatment/control comparisons rather than clicks alone |
| Investment | Scale experiences that demonstrate incremental value |
| Monitoring | Track lift over time and by customer segment |

---

## 08 — Technical implementation

**SQL**

Used for data extraction, transformation, cohort creation, aggregation, and reusable analytical queries.

**Python**

Used for exploratory analysis, segment-level analysis, statistical workflows, and visualization.

**Data warehouse**

The original professional work used company data infrastructure; this public portfolio version uses a local SQLite database and synthetic data.

**Visualization**

The case study uses Python-generated charts. The same analytical outputs can be surfaced through Tableau, Looker, or Power BI.

---

## 09 — What I learned

The biggest lesson from this type of project is that **measurement design matters as much as the analysis itself**.

A dashboard can tell a team what happened.

A good analytical framework should help answer:

> **What changed because of our intervention, who did it work for, and what should we do next?**

That distinction is what turns marketing analytics from reporting into decision support.

---

## 10 — Repository

The accompanying repository contains:

- Synthetic user-level data
- SQL analysis
- Python analysis
- Reproducible SQLite database
- Charts
- Segment-level analysis
- Documentation

**No proprietary company data or code is included.**
