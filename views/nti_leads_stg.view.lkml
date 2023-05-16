view: nti_leads_stg {
  sql_table_name: `nti_monitoring_dashboard.NTI_LEADS_STG`
    ;;

  dimension_group: _partitiondate {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._PARTITIONDATE ;;
  }

  dimension_group: _partitiontime {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._PARTITIONTIME ;;
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

  dimension: quarter {
    type: string
    sql: ${TABLE}.QUARTER ;;
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
    drill_fields: [area_name, region_name, branch_name]
  }
}
