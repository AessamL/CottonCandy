connection: "teebycotton"

# include all the views
include: "*.view"

datagroup: teebycotton_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: teebycotton_default_datagroup

explore: time {
  join: users {
    type: left_outer
    sql_on: ${time.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: users {}
