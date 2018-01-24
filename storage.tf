resource "google_storage_bucket" "buildpack" {
    name = "${var.projectid}-buildpack"
    location = "${var.region}"
    storage_class = "REGIONAL"
    force_destroy = true
}

resource "google_storage_bucket" "droplet" {
    name = "${var.projectid}-droplet"
    location = "${var.region}"
    storage_class = "REGIONAL"
    force_destroy = true
}

resource "google_storage_bucket" "package" {
    name = "${var.projectid}-package"
    location = "${var.region}"
    storage_class = "REGIONAL"
    force_destroy = true
}

resource "google_storage_bucket" "resource" {
    name = "${var.projectid}-resource"
    location = "${var.region}"
    storage_class = "REGIONAL"
    force_destroy = true
}
