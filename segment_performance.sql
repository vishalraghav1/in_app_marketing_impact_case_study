-- Treatment vs control by customer segment
SELECT
    segment,
    CASE WHEN exposed = 1 THEN 'Exposed' ELSE 'Control' END AS cohort,
    COUNT(*) AS users,
    ROUND(AVG(engaged) * 100, 2) AS engagement_rate_pct,
    ROUND(AVG(converted) * 100, 2) AS conversion_rate_pct,
    ROUND(SUM(revenue), 2) AS revenue
FROM user_campaign_data
GROUP BY segment, exposed
ORDER BY segment, exposed;
