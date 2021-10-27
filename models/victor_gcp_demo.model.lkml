connection: "victor_demo_gks_cluster"

# include all the views
include: "/views/**/*.view"

datagroup: victor_gcp_demo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: victor_gcp_demo_default_datagroup

explore: customers_carriers {}
# explore: customer {}

# explore: nation {}

# explore: orders {}

# explore: region {}

# explore: supplier {}
