view: users {
  sql_table_name: Cotton.Users ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: display_name {
    type: string
    sql: ${TABLE}.display_name ;;
  }

  dimension: user_activation_key {
    type: string
    sql: ${TABLE}.user_activation_key ;;
  }

  dimension: user_email {
    type: string
    sql: ${TABLE}.user_email ;;
  }

  dimension: user_login {
    type: string
    sql: ${TABLE}.user_login ;;
  }

  dimension: user_nicename {
    type: string
    sql: ${TABLE}.user_nicename ;;
  }

  dimension: user_pass {
    type: string
    sql: ${TABLE}.user_pass ;;
  }

  dimension_group: user_registered {
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
    sql: ${TABLE}.user_registered ;;
  }
  dimension: dateFormated {
    type:date
    sql: FORMAT_DATE('%Y-%m-%d',DATE(${TABLE}.user_registered)) ;;
  }

  dimension: user_status {
    hidden: yes
    description: "Only 0 Value , No Clear Meaning "
    type: number
    sql: ${TABLE}.user_status ;;
  }

  dimension: user_url {
    hidden: yes
    description: "Irrelevant"
    type: string
    sql: ${TABLE}.user_url ;;
  }

  measure: count {
    type: count
    drill_fields: [id, user_nicename, display_name, time.count]
  }
  measure: CountUnique {
    type: count_distinct
    sql: ${TABLE}.user_email ;;
    drill_fields: [id, user_nicename, display_name, time.count]
  }
}
