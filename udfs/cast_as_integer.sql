{% macro cast_as_integer() %}
{% if target.type == 'snowflake' %}
    create or replace function cast_as_integer(field integer)
    returns integer
    as
    $$
        cast(field as integer)
    $$
    ;
{% elif target.type == 'bigquery' %}
    {{ log('bigquery udf here',info=true) }}

{% elif target.type == 'redshift' %}
    {{ log('redshift udf here',info=true) }}

{% endif %}

{% endmacro %}