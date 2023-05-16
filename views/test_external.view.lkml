view: test_external {
  sql_table_name: `nti_monitoring_dashboard.test_external`
    ;;

  dimension: anp_idr {
    type: number
    value_format_name: id
    sql: ${TABLE}.ANP_IDR ;;
  }

  dimension: anp_usd {
    type: number
    sql: ${TABLE}.ANP_USD ;;
  }

  dimension: application_status {
    type: string
    sql: ${TABLE}.APPLICATION_STATUS ;;
  }

  dimension: area_name {
    type: string
    sql: ${TABLE}.AREA_NAME ;;
  }

  dimension: branch_name {
    type: string
    sql: ${TABLE}.BRANCH_NAME ;;
  }

  dimension_group: closing {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.CLOSING_DATE ;;
  }

  dimension: fbi_gross_idr {
    type: number
    value_format_name: id
    sql: ${TABLE}.FBI_GROSS_IDR ;;
  }

  dimension: fbi_gross_usd {
    type: number
    sql: ${TABLE}.FBI_GROSS_USD ;;
  }

  dimension: fbi_net_idr {
    type: number
    value_format_name: id
    sql: ${TABLE}.FBI_NET_IDR ;;
  }

  dimension: fbi_net_usd {
    type: number
    sql: ${TABLE}.FBI_NET_USD ;;
  }

  dimension: gcif_no {
    type: string
    sql: ${TABLE}.GCIF_NO ;;
  }

  dimension: micro_segment {
    type: string
    sql: ${TABLE}.MICRO_SEGMENT ;;
  }

  dimension: policy_number {
    type: string
    sql: ${TABLE}.POLICY_NUMBER ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.PRODUCT_NAME ;;
  }

  dimension: region_name {
    type: string
    sql: ${TABLE}.REGION_NAME ;;
  }

  dimension: segment {
    type: string
    sql: ${TABLE}.SEGMENT ;;
  }

  measure: count {
    type: count
    drill_fields: [area_name, product_name, region_name, branch_name]
  }
}
