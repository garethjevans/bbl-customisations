module "terraform-gcp-natgateway" {
  source = "../../terraform-gcp-natgateway"
  project = "${var.project}"
  region = "${var.region}"
}
