{% macro cast_as_integer() %}
    {{ return(adapter.dispatch('cast_as_integer', 'salesforce_formula_udfs')()) }}
{% endmacro %}

{% macro default__cast_as_integer() %}
    create or replace function cast_as_integer(field integer)
    returns integer
    as
    $$
        cast(field as integer)
    $$
    ;
{% endmacro %}

{% macro bigquery__cast_as_integer() %}
    {{ log('bigquery udf here',info=true) }}
{% endmacro %}

{% macro redshift__cast_as_integer() %}
    {{ log('redshift udf here',info=true) }}
{% endmacro %}