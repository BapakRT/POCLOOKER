view: tbl_reconcile {
  sql_table_name: `nti_monitoring_dashboard.tblReconcile`
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

  dimension: area_name {
    type: string
    sql: ${TABLE}.AREA_NAME ;;
  }

  dimension: book {
    type: number
    sql: ${TABLE}.BOOK ;;
  }

  dimension: branch_name {
    type: string
    sql: ${TABLE}.BRANCH_NAME ;;
  }

  dimension: call {
    type: number
    sql: ${TABLE}.CALL ;;
  }

  dimension_group: data_generated {
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
    sql: ${TABLE}.DATA_GENERATED ;;
  }

  dimension_group: dt {
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
    sql: ${TABLE}.DT ;;
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

  dimension: pipeline {
    type: number
    sql: ${TABLE}.PIPELINE ;;
  }

  dimension: policy_number {
    type: string
    sql: ${TABLE}.POLICY_NUMBER ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.PRODUCT_NAME ;;
  }

  dimension: quarter {
    type: string
    sql: ${TABLE}.QUARTER ;;
  }

  dimension: quarter_flag {
    type: string
    sql: ${TABLE}.QUARTER_FLAG ;;
  }

  dimension: region_name {
    type: string
    sql: ${TABLE}.REGION_NAME ;;
  }

  dimension: sales {
    type: number
    sql: ${TABLE}.SALES ;;
  }

  dimension: segment {
    type: string
    sql: ${TABLE}.SEGMENT ;;
  }

  dimension: visit {
    type: number
    sql: ${TABLE}.VISIT ;;
  }

  measure: count {
    type: count
    drill_fields: [area_name, product_name, region_name, branch_name]
  }
}
