module "terraform-gcp-natgateway" {
  source = "github.com/migs/terraform-gcp-natgateway"
  project = "${var.project_id}"
  region = "${var.region}"
  network = "${var.project_id}-network"
  subnetwork = "${var.project_id}-subnetwork"
}
