resource "random_string" "uaa-password" {
  length = 16
  special = false
}

resource "random_string" "cc-password" {
  length = 16
  special = false
}

resource "random_string" "bbs-password" {
  length = 16
  special = false
}

resource "random_string" "routing_api-password" {
  length = 16
  special = false
}

resource "random_string" "policy_server-password" {
  length = 16
  special = false
}

resource "random_string" "silk_controller-password" {
  length = 16
  special = false
}

resource "random_string" "locket-password" {
  length = 16
  special = false
}

resource "google_sql_database_instance" "cf-db-instance" {
  region = "${var.region}"

  settings {
    tier = "db-n1-standard-2"
    ip_configuration {
      ipv4_enabled = "true"

      authorized_networks = [
        { value = "${module.terraform-gcp-natgateway.nat-gateway-ips["0"]}" },
      ]
    }
  }
}

resource "google_sql_database" "uaa_db" {
  name = "uaa_db"
  instance = "${google_sql_database_instance.cf-db-instance.name}"
  charset = "utf8"
  collation = "utf8_general_ci"
}

resource "google_sql_database" "cc_db" {
  name = "cc_db"
  instance = "${google_sql_database_instance.cf-db-instance.name}"
  charset = "utf8"
  collation = "utf8_general_ci"
}

resource "google_sql_database" "bbs_db" {
  name = "bbs_db"
  instance = "${google_sql_database_instance.cf-db-instance.name}"
  charset = "utf8"
  collation = "utf8_general_ci"
}

resource "google_sql_database" "routing_api_db" {
  name = "routing_api_db"
  instance = "${google_sql_database_instance.cf-db-instance.name}"
  charset = "utf8"
  collation = "utf8_general_ci"
}

resource "google_sql_database" "policy_server_db" {
  name = "policy_server_db"
  instance = "${google_sql_database_instance.cf-db-instance.name}"
  charset = "utf8"
  collation = "utf8_general_ci"
}

resource "google_sql_database" "silk_controller_db" {
  name = "silk_controller_db"
  instance = "${google_sql_database_instance.cf-db-instance.name}"
  charset = "utf8"
  collation = "utf8_general_ci"
}

resource "google_sql_database" "locket_db" {
  name = "locket_db"
  instance = "${google_sql_database_instance.cf-db-instance.name}"
  charset = "utf8"
  collation = "utf8_general_ci"
}

resource "google_sql_user" "uaa" {
  name = "uaa"
  instance = "${google_sql_database_instance.cf-db-instance.name}"
  host = "%"
  password = "${random_string.uaa-password.result}"
}

resource "google_sql_user" "cc" {
  name = "cc"
  instance = "${google_sql_database_instance.cf-db-instance.name}"
  host = "%"
  password = "${random_string.cc-password.result}"
}

resource "google_sql_user" "bbs" {
  name = "bbs"
  instance = "${google_sql_database_instance.cf-db-instance.name}"
  host = "%"
  password = "${random_string.bbs-password.result}"
}

resource "google_sql_user" "routing_api" {
  name = "routing_api"
  instance = "${google_sql_database_instance.cf-db-instance.name}"
  host = "%"
  password = "${random_string.routing_api-password.result}"
}

resource "google_sql_user" "policy_server" {
  name = "policy_server"
  instance = "${google_sql_database_instance.cf-db-instance.name}"
  host = "%"
  password = "${random_string.policy_server-password.result}"
}

resource "google_sql_user" "silk_controller" {
  name = "silk_controller"
  instance = "${google_sql_database_instance.cf-db-instance.name}"
  host = "%"
  password = "${random_string.silk_controller-password.result}"
}

resource "google_sql_user" "locket" {
  name = "locket"
  instance = "${google_sql_database_instance.cf-db-instance.name}"
  host = "%"
  password = "${random_string.locket-password.result}"
}

output "cf_db_host" {
  value = "${google_sql_database_instance.cf-db-instance.ip_address.0.ip_address}"
}

output "uaa-password" {
  value = "${random_string.uaa-password.result}"
}

output "cc-password" {
  value = "${random_string.cc-password.result}"
}

output "bbs-password" {
  value = "${random_string.bbs-password.result}"
}

output "routing_api-password" {
  value = "${random_string.routing_api-password.result}"
}

output "policy_server-password" {
  value = "${random_string.policy_server-password.result}"
}

output "silk_controller-password" {
  value = "${random_string.silk_controller-password.result}"
}

output "locket-password" {
  value = "${random_string.locket-password.result}"
}
