{% macro cast_as_string() %}
    {{ return(adapter.dispatch('cast_as_string', 'salesforce_formula_udfs')()) }}
{% endmacro %}

{% macro default__cast_as_string() %}
    create or replace function cast_as_string(field varchar)
    returns varchar
    as
    $$
        cast(field as varchar)
    $$
    ;
{% endmacro %}

{% macro bigquery__cast_as_string() %}
    {{ log('bigquery udf here',info=true) }}
{% endmacro %}

{% macro redshift__cast_as_string() %}
    {{ log('redshift udf here',info=true) }}
{% endmacro %}