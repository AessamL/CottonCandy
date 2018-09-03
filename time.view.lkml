view: time {
  sql_table_name: Cotton.Time ;;

  dimension: comment_agent {
    type: string
    sql: ${TABLE}.comment_agent ;;
  }

  dimension: comment_approved {
    type: number
    sql: ${TABLE}.comment_approved ;;
  }

  dimension: comment_author {
    type: string
    sql: ${TABLE}.comment_author ;;
  }

  dimension: comment_author_email {
    type: string
    sql: ${TABLE}.comment_author_email ;;
  }

  dimension: comment_author_ip {
    type: string
    sql: ${TABLE}.comment_author_IP ;;
  }

  dimension: comment_author_url {
    type: string
    sql: ${TABLE}.comment_author_url ;;
  }

  dimension: comment_content {
    type: string
    sql: ${TABLE}.comment_content ;;
  }

  dimension_group: comment {
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
    sql: ${TABLE}.comment_date ;;
  }

  dimension_group: comment_date_gmt {
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
    sql: ${TABLE}.comment_date_gmt ;;
  }

  dimension: comment_id {
    type: number
    sql: ${TABLE}.comment_ID ;;
  }

  dimension: comment_karma {
    type: number
    sql: ${TABLE}.comment_karma ;;
  }

  dimension: comment_parent {
    type: number
    sql: ${TABLE}.comment_parent ;;
  }

  dimension: comment_post_id {
    type: number
    sql: ${TABLE}.comment_post_ID ;;
  }

  dimension: comment_type {
    type: string
    sql: ${TABLE}.comment_type ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [users.user_nicename, users.id, users.display_name]
  }
}
