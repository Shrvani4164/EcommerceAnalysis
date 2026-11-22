-- funnel_analysis.sql
-- Author: Tarun Sai Reddy Kummetha
-- Description: SQL-based funnel analysis for e-commerce user journey


-- E-Commerce Funnel Analysis

WITH session_funnel AS (
    SELECT
        SessionID,
        MAX(CASE WHEN PageType = 'home' THEN 1 ELSE 0 END) AS home,
        MAX(CASE WHEN PageType = 'product_page' THEN 1 ELSE 0 END) AS product_view,
        MAX(CASE WHEN PageType = 'cart' THEN 1 ELSE 0 END) AS add_to_cart,
        MAX(CASE WHEN PageType = 'checkout' THEN 1 ELSE 0 END) AS checkout,
        MAX(CASE WHEN PageType = 'confirmation' THEN 1 ELSE 0 END) AS confirmation,
        MAX(Purchased) AS purchase
    FROM customer_journey
    GROUP BY SessionID
),

funnel_totals AS (
    SELECT
        SUM(home) AS home_sessions,
        SUM(product_view) AS product_views,
        SUM(add_to_cart) AS cart_sessions,
        SUM(checkout) AS checkout_sessions,
        SUM(confirmation) AS confirmations,
        SUM(purchase) AS purchases
    FROM session_funnel
)

SELECT
    home_sessions,
    product_views,
    cart_sessions,
    checkout_sessions,
    confirmations,
    purchases,
    ROUND(100.0 * product_views / NULLIF(home_sessions, 0), 2) AS home_to_product_pct,
    ROUND(100.0 * cart_sessions / NULLIF(product_views, 0), 2) AS product_to_cart_pct,
    ROUND(100.0 * checkout_sessions / NULLIF(cart_sessions, 0), 2) AS cart_to_checkout_pct,
    ROUND(100.0 * confirmations / NULLIF(checkout_sessions, 0), 2) AS checkout_to_confirmation_pct
FROM funnel_totals;
