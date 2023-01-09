view: inventory {
  sql_table_name: [tpcds1gb.inventory]
    ;;

  dimension: inv_date_sk {
    type: number
    sql: ${TABLE}.inv_date_sk ;;
  }

  measure: inv_item_sk {
    type: number
    sql: ${TABLE}.inv_item_sk ;;
  }

  dimension: inv_quantity_on_hand {
    type: number
    sql: ${TABLE}.inv_quantity_on_hand ;;
  }

  dimension: inv_warehouse_sk {
    type: number
    sql: ${TABLE}.inv_warehouse_sk ;;
  }

  measure: count {
    type: count
    approximate_threshold: 100000
    drill_fields: []
  }
}
