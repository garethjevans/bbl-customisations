resource "google_storage_bucket" "buildpack" {
    name = "${var.env_id}-buildpack"
    location = "${var.region}"
    storage_class = "REGIONAL"
    force_destroy = true
}

resource "google_storage_bucket" "droplet" {
    name = "${var.env_id}-droplet"
    location = "${var.region}"
    storage_class = "REGIONAL"
    force_destroy = true
}

resource "google_storage_bucket" "package" {
    name = "${var.env_id}-package"
    location = "${var.region}"
    storage_class = "REGIONAL"
    force_destroy = true
}

resource "google_storage_bucket" "resource" {
    name = "${var.env_id}-resource"
    location = "${var.region}"
    storage_class = "REGIONAL"
    force_destroy = true
}
