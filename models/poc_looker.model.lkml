connection: "big_query_connection_test"

# include all the views
include: "/views/**/*.view"

datagroup: poc_looker_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}
access_grant:  admin_only{
  user_attribute: region_filter
  allowed_values: ["1"]
}


persist_with: poc_looker_default_datagroup

explore: test_nti_leads_stg {}

explore: nti_deal_stg {}

explore: nti_reconcile_stg {}

explore: test_nti_deal_stg {}

explore: tbl_deal {
  required_access_grants: [admin_only]
}

explore: tbl_leads {}

explore: test_nti_reconcile_stg {}

explore: nti_leads_stg {}

explore: tbl_reconcile {}

explore: test_external {}
