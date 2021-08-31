[![Apache License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0) ![dbt logo and version](https://img.shields.io/static/v1?logo=dbt&label=dbt-version&message=0.20.x&color=orange)
# Fivetran Salesforce Formula UDFs

This package includes udfs to be used within the [dbt_salesforce_formula_utils](https://github.com/fivetran/dbt_salesforce_formula_utils) dbt package. These UDFs will be:
- Created as macros within the `udf` folder and contain warehouse specific UDF logic.
- Each of these udf macros will then be added to the `on-run-start` configuration within the `dbt_project.yml`.
- The udf macros will then be executed on `dbt run` and generated within the user warehouse to be leveraged by the translated Salesforce Object Query Language (SOQL) to sql formula within the `fivetran_formula` table.

# Further documentation to be added.
