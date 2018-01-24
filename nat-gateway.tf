module "terraform-gcp-natgateway" {
  source = "github.com/migs/terraform-gcp-natgateway"
  project = "${var.project_id}"
  region = "${var.region}"
  network = "${var.env_id}-network"
  subnetwork = "${var.env_id}-subnetwork"
}
