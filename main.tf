terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "5.19.0"
    }
  }
}
variable "private_key_path" {
  default = "/Users/vijaynv/opc/.oci/oci_api_key.pem"
}
/*variable "instance_availability_domain" {
  default = "ikZL:AP-HYDERABAD-1-AD-1"
}
variable "compartment_id" {
  default = "ocid1.tenancy.oc1..aaaaaaaabqz5tqblgsr7qa4dbwi7h6pbnf4ifnvo32sj4z6y2gjc4afi7i3a"
}*/
variable "public_key" {
  type        = string
  default     = "/Users/vijaynv/opc/.oci/oci_api_key_public.pem"
  description = "Path to your public key"
}

provider "oci" {
  tenancy_ocid     = "ocid1.tenancy.oc1..aaaaaaaabqz5tqblgsr7qa4dbwi7h6pbnf4ifnvo32sj4z6y2gjc4afi7i3a"
  user_ocid        = "ocid1.user.oc1..aaaaaaaaq3fdqhbkyh55c6acjuizpadp43gzhhbyhqnnpzyikjpz3jirompq"
  private_key_path = var.private_key_path
  fingerprint      = "dd:f9:a4:3c:d8:8a:85:e6:ac:c4:8b:85:9d:59:0a:1d"
  region           = "ap-hyderabad-1"
}
