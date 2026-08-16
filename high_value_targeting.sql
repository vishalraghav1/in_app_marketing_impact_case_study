-- Identify segments with the strongest treatment lift
WITH rates AS (
    SELECT
        segment,
        AVG(CASE WHEN exposed = 1 THEN converted END) AS exposed_rate,
        AVG(CASE WHEN exposed = 0 THEN converted END) AS control_rate
    FROM user_campaign_data
    GROUP BY segment
)
SELECT
    segment,
    ROUND(exposed_rate * 100, 2) AS exposed_conversion_pct,
    ROUND(control_rate * 100, 2) AS control_conversion_pct,
    ROUND((exposed_rate - control_rate) * 100, 2) AS lift_percentage_points
FROM rates
ORDER BY lift_percentage_points DESC;
