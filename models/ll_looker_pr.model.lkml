connection: "ll_looker"

# include all the views
include: "/views/**/*.view"

datagroup: ll_looker_pr_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: ll_looker_pr_default_datagroup

# NOTE: please see https://docs.looker.com/r/sql/bigquery?version=22.20
# NOTE: for BigQuery specific considerations

explore: catalog_sales {}

explore: customer_address {}

explore: call_center {}

explore: customer {}

explore: catalog_page {}

explore: date_dim {}

explore: catalog_returns {}

explore: customer_demographics {}

explore: household_demographics {}

explore: income_band {}

explore: inventory {}

explore: item {}

explore: promotion {}

explore: store {}

explore: reason {}

explore: ship_mode {}

explore: store_returns {}

explore: store_sales {}

explore: time_dim {}

explore: warehouse {}

explore: web_returns {}

explore: web_sales {}

explore: web_page {}

explore: web_site {}
