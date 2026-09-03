{% macro amount_tag(amount) %}

    CASE
        WHEN {{ amount }} <= 1000 THEN 'poor'
        WHEN {{ amount }} <= 5000 THEN 'medium'
        WHEN {{ amount }} <= 10000 THEN 'good'
        ELSE 'very good'
    END

{% endmacro %}