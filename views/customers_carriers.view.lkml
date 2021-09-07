view: vue_client_test {
  derived_table: {
    sql: select
          cust.*,
          ca.carrname,
          b.luggweight
      from
          bigquery.default.bookings b,
          sqlserver.flights.carriers ca,
          saphana.sflight.scustom cust
      where
          cust.id = b.customid
          and b.invoice='X'
          and ca.carrid = b.carrid
       ;;
  }

  suggestions: no

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: mandt {
    type: string
    sql: ${TABLE}.mandt ;;
    hidden: yes
  }

  dimension: id {
    type: string
    sql: ${TABLE}.id ;;
    hidden: yes
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.form ;;
  }

  dimension: street {
    type: string
    sql: ${TABLE}.street ;;
  }

  dimension: postbox {
    type: string
    sql: ${TABLE}.postbox ;;
  }

  dimension: postcode {
    type: string
    sql: ${TABLE}.postcode ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country {
    type: string
    sql: ${TABLE}.country ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: telephone {
    type: string
    sql: ${TABLE}.telephone ;;
  }

  dimension: customer_type {
    type: string
    sql: ${TABLE}.custtype ;;
  }

  dimension: discount {
    type: string
    sql: ${TABLE}.discount ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}.langu ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: webuser {
    type: string
    sql: ${TABLE}.webuser ;;
  }

  dimension: carrier_name {
    type: string
    sql: ${TABLE}.carrname ;;
  }

  dimension: luggage_weight {
    type: number
    sql: ${TABLE}.luggweight ;;
  }
  measure: average_luggage_weight {
    type: average
    sql: ${luggage_weight} ;;
  }


  set: detail {
    fields: [
      mandt,
      id,
      name,
      title,
      street,
      postbox,
      postcode,
      city,
      country,
      region,
      telephone,
      customer_type,
      discount,
      language,
      email,
      webuser,
      carrier_name,
      luggage_weight
    ]
  }
}
