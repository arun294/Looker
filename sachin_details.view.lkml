view: sachin_details {
  sql_table_name: SRT.Sachin_Details ;;

  dimension: balls {
    type: number
    sql: ${TABLE}.BALLS ;;
  }

  dimension: batting_position {
    type: number
    sql: ${TABLE}.BATTING_POSITION ;;
  }

  dimension: bowling {
    type: string
    sql: ${TABLE}.BOWLING ;;
  }

  dimension: fours {
    type: number
    sql: ${TABLE}.FOURS ;;
  }

  dimension: innings {
    type: number
    sql: ${TABLE}.INNINGS ;;
  }

  dimension: match_id {
    type: number
    sql: ${TABLE}.MATCH_ID ;;
  }

  dimension: minutes {
    type: number
    sql: ${TABLE}.MINUTES ;;
  }

  dimension: out_type {
    type: string
    sql: ${TABLE}.OUT_TYPE ;;
  }

  dimension: runs {
    type: number
    sql: ${TABLE}.RUNS ;;
  }
 dimension: century {
  type: number
  sql: (CASE WHEN ${runs}>100 then 1 else 0 end) ;;
}
  dimension: fifty {
    type: number
    sql:(case when (${runs}>=50 AND ${runs}<100) then 1 else 0 end);;
  }
  dimension: second_player {
    type: string
    sql: ${TABLE}.SECOND_PLAYER ;;
  }

  dimension: sixes {
    type: number
    sql: ${TABLE}.SIXES ;;
  }
measure: FiftyCount {
  type: sum
  sql: ${fifty} ;;

}
  measure: CenturyCount {
    type: sum
    sql: ${century} ;;

  }
  measure: count {
    type: count
    drill_fields: []
  }
}
