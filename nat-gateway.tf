module "nat-gateway" {
  source  = "GoogleCloudPlatform/nat-gateway/google"
  version = "1.1.2"
  region = "${var.region}"
}
