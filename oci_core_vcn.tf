/*variable "compartment_id" {
    type = string
  default = ["oci_identity_compartment.VJ_P.id"]
}*/
variable "vcn_cidr_block" {
  default = "10.0.0.0/16"
}

output "compartment-OCID1" {
  value = oci_identity_compartment.VJ_P.id
}

resource "oci_core_vcn" "test_vcn" {
  compartment_id = oci_identity_compartment.VJ_P.id
  cidr_block     = var.vcn_cidr_block
}