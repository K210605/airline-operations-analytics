-- =====================================================
-- PROJECT: AIRLINE DATA ANALYSIS & OPERATIONS DASHBOARD
-- DATABASE: PostgreSQL
-- TOOL: pgAdmin 4
-- =====================================================


-- =====================================================
-- 1. AIRLINE-WISE DELAY ANALYSIS
-- Purpose: Identify airlines with the highest delay rates.
-- =====================================================

SELECT
    a.airline,
    COUNT(f.isdelayed) AS flights_flown,
    ROUND(100.0 * AVG(f.isdelayed), 2) AS delay_rate_pct,
    ROUND(AVG(f.arrival_delay)::numeric, 1) AS avg_arrival_delay_min
FROM flights f
JOIN airlines a
    ON a.iata_code = f.airline
GROUP BY a.airline
ORDER BY delay_rate_pct DESC;


-- =====================================================
-- 2. AIRPORT-WISE FLIGHT ANALYSIS
-- Purpose: Find the top 10 busiest origin airports.
-- =====================================================

SELECT
    f.origin_airport,
    ap.airport,
    COUNT(*) AS flights,
    ROUND(100.0 * AVG(f.isdelayed), 2) AS delay_rate_pct
FROM flights f
JOIN airports ap
    ON ap.iata_code = f.origin_airport
GROUP BY f.origin_airport, ap.airport
ORDER BY flights DESC
LIMIT 10;


-- =====================================================
-- 3. FLIGHT CANCELLATION ANALYSIS
-- Purpose: Analyze cancellation reasons and their share.
-- =====================================================

SELECT
    cancellationreason,
    COUNT(*) AS cancelled_flights,
    ROUND(
        100.0 * COUNT(*) / SUM(COUNT(*)) OVER (),
        2
    ) AS share_pct
FROM flights
WHERE cancelled = 1
GROUP BY cancellationreason
ORDER BY cancelled_flights DESC;


-- =====================================================
-- 4. MONTHLY AIRLINE DELAY RANKING
-- Purpose: Rank airlines based on monthly delay rates.
-- =====================================================

WITH m AS (
    SELECT
        month,
        airline,
        ROUND(100.0 * AVG(isdelayed), 2) AS delay_rate_pct
    FROM flights
    GROUP BY month, airline
)

SELECT
    month,
    airline,
    delay_rate_pct,
    RANK() OVER (
        PARTITION BY month
        ORDER BY delay_rate_pct DESC
    ) AS delay_rank
FROM m
ORDER BY month, delay_rank;


-- =====================================================
-- 5. MONTH-OVER-MONTH DELAY ANALYSIS
-- Purpose: Track monthly changes in flight delay rates.
-- =====================================================

WITH m AS (
    SELECT
        month,
        ROUND(100.0 * AVG(isdelayed), 2) AS delay_rate_pct
    FROM flights
    GROUP BY month
)

SELECT
    month,
    delay_rate_pct,
    LAG(delay_rate_pct) OVER (
        ORDER BY month
    ) AS prev_month,

    ROUND(
        delay_rate_pct -
        LAG(delay_rate_pct) OVER (ORDER BY month),
        2
    ) AS mom_change_pp

FROM m
ORDER BY month;


-- =====================================================
-- 6. FLIGHT DELAY CAUSE ANALYSIS
-- Purpose: Identify major contributors to flight delays.
-- =====================================================

SELECT
    'Airline' AS cause,
    SUM(airline_delay) AS minutes
FROM flights
WHERE isdelayed = 1

UNION ALL

SELECT
    'Late aircraft',
    SUM(late_aircraft_delay)
FROM flights
WHERE isdelayed = 1

UNION ALL

SELECT
    'Air system',
    SUM(air_system_delay)
FROM flights
WHERE isdelayed = 1

UNION ALL

SELECT
    'Weather',
    SUM(weather_delay)
FROM flights
WHERE isdelayed = 1

UNION ALL

SELECT
    'Security',
    SUM(security_delay)
FROM flights
WHERE isdelayed = 1

ORDER BY minutes DESC;


-- =====================================================
-- 7. HOUR-WISE FLIGHT DELAY ANALYSIS
-- Purpose: Identify hours with the highest delay rates.
-- =====================================================

SELECT
    scheduledhour,
    COUNT(isdelayed) AS flights_flown,
    ROUND(100.0 * AVG(isdelayed), 2) AS delay_rate_pct
FROM flights
GROUP BY scheduledhour
ORDER BY scheduledhour;


-- =====================================================
-- 8. DAY-WISE FLIGHT DELAY ANALYSIS
-- Purpose: Compare flight delays across weekdays.
-- =====================================================

SELECT
    day_of_week,
    COUNT(isdelayed) AS flights_flown,
    ROUND(100.0 * AVG(isdelayed), 2) AS delay_rate_pct
FROM flights
GROUP BY day_of_week
ORDER BY day_of_week;


-- =====================================================
-- END OF SQL ANALYTICAL QUERIES
-- =====================================================