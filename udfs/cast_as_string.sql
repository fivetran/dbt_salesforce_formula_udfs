{% macro cast_as_string() %}
{% if target.type == 'snowflake' %}
    create or replace function cast_as_string(field varchar)
    returns varchar
    as
    $$
        cast(field as varchar)
    $$
    ;
{% elif target.type == 'bigquery' %}
    {{ log('bigquery udf here',info=true) }}

{% elif target.type == 'redshift' %}
    {{ log('redshift udf here',info=true) }}

{% endif %}

{% endmacro %}