{% macro generate_schema_name(custom_schema_name, node) -%}
    {{ custom_schema_name if custom_schema_name else target.schema }}
{%- endmacro %}

-- if custom_schema_name exists → use it          → DEV
-- if custom_schema_name is None → use target     → RAW

-- dbt_project.yml
-- marts:
--   +materialized: table
--   +schema: dev            ← you typed lowercase 'dev'

-- dbt_project.yml          macro                    Snowflake
-- +schema: dev    →    custom_schema_name = dev  →  creates schema DEV