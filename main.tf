terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "5.19.0"
    }
  }
}
variable "private_key_path" {
  default = "/Users/user/opc/.oci/oci_api_key.pem"
}
/*variable "instance_availability_domain" {
  default = "ikZL:AP-HYDERABAD-1-AD-1"
}
variable "compartment_id" {
  default = "ocid1.tenancy.oc1..aaaaaaaa............."
}*/
variable "public_key" {
  type        = string
  default     = "/Users/vijaynv/opc/.oci/oci_api_key_public.pem"
  description = "Path to your public key"
}

provider "oci" {
  tenancy_ocid     = "ocid1.tenancy.oc1..aaaaaaaa..........."
  user_ocid        = "ocid1.user.oc1..aaaaaaaa.............."
  private_key_path = var.private_key_path
  fingerprint      = "dd:f9:a4:3c:d8:8a:85:.............."
  region           = "ap-hyderabad-1"
}
