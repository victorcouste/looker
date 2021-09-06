view: eu_suppliers {
  sql_table_name: datalake.eu_suppliers ;;
  suggestions: no

  dimension: acctbal {
    type: number
    sql: ${TABLE}.acctbal ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}.comment ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: nation {
    type: string
    sql: ${TABLE}.nation ;;
  }

  dimension: nationkey {
    type: number
    sql: ${TABLE}.nationkey ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: suppkey {
    type: number
    sql: ${TABLE}.suppkey ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
