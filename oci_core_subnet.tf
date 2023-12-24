resource "oci_core_subnet" "test_subnet" {
  cidr_block     = "10.0.0.0/16"
  compartment_id = oci_identity_compartment.VJ_P.id
  vcn_id         = oci_core_vcn.test_vcn.id
}