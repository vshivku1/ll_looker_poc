view: reason {
  sql_table_name: [tpcds1gb.reason]
    ;;
  drill_fields: [r_reason_id]

  dimension: r_reason_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.r_reason_id ;;
  }

  dimension: r_reason_desc {
    type: string
    sql: ${TABLE}.r_reason_desc ;;
  }

  dimension: r_reason_sk {
    type: number
    sql: ${TABLE}.r_reason_sk ;;
  }

  measure: count {
    type: count
    approximate_threshold: 100000
    drill_fields: [r_reason_id]
  }
}
