-- Placement performance and incremental lift
WITH base AS (
    SELECT
        placement,
        COUNT(*) AS users,
        AVG(engaged) AS engagement_rate,
        AVG(converted) AS conversion_rate,
        SUM(revenue) AS revenue
    FROM user_campaign_data
    GROUP BY placement
),
control AS (
    SELECT conversion_rate AS control_conversion_rate
    FROM base
    WHERE placement = 'Control'
)
SELECT
    b.*,
    ROUND((b.conversion_rate - c.control_conversion_rate) * 100, 2)
        AS incremental_lift_percentage_points,
    ROUND((b.conversion_rate / c.control_conversion_rate - 1) * 100, 2)
        AS relative_lift_percent
FROM base b
CROSS JOIN control c
ORDER BY conversion_rate DESC;
