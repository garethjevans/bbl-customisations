module "terraform-gcp-natgateway" {
  source = "https://github.com/migs/terraform-gcp-natgateway"
  project = "${var.project}"
  region = "${var.region}"
}
