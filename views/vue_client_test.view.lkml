view: vue_client_test {
  derived_table: {
    sql: select
          cust.*,
          ca.carrname as carrier_name,
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
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: form {
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

  dimension: custtype {
    type: string
    sql: ${TABLE}.custtype ;;
  }

  dimension: discount {
    type: string
    sql: ${TABLE}.discount ;;
  }

  dimension: langu {
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
    sql: ${TABLE}.carrier_name ;;
  }

  dimension: luggweight {
    type: number
    sql: ${TABLE}.luggweight ;;
    hidden: yes
  }
  measure: average_luggweight {
    type: average
    sql: ${luggweight} ;;
  }


  set: detail {
    fields: [
      mandt,
      id,
      name,
      form,
      street,
      postbox,
      postcode,
      city,
      country,
      region,
      telephone,
      custtype,
      discount,
      langu,
      email,
      webuser,
      carrier_name,
      luggweight
    ]
  }
}
