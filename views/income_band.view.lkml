view: income_band {
  sql_table_name: [tpcds1gb.income_band]
    ;;

  dimension: ib_income_band_sk {
    type: number
    sql: ${TABLE}.ib_income_band_sk ;;
  }

  dimension: ib_lower_bound {
    type: number
    sql: ${TABLE}.ib_lower_bound ;;
  }

  dimension: ib_upper_bound {
    type: number
    sql: ${TABLE}.ib_upper_bound ;;
  }

  measure: count {
    type: count
    approximate_threshold: 100000
    drill_fields: []
  }
}
