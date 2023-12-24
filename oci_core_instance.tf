resource "oci_core_instance" "linux9" {
  availability_domain = "ikZL:AP-HYDERABAD-1-AD-1"
  compartment_id      =  oci_identity_compartment.VJ_P.id
  #compartment_id = [newcompute.compartment-OCID1]
  shape = "VM.Standard.A1.Flex"
  shape_config {
    baseline_ocpu_utilization = null
    memory_in_gbs             = 6
    ocpus                     = 1
  }
  source_details {
    source_id   = "ocid1.image.oc1.ap-hyderabad-1.aaaaaaaavnnozlfmsyjajkksdlcpuvxpjhygbmkowokdxlcktk3zdfknbx3a"
    source_type = "image"
  }
  display_name = "AVijayPriya123"
  create_vnic_details {
    assign_private_dns_record = true
    assign_public_ip          = true
    subnet_id                 = oci_core_subnet.test_subnet.id
    #subnet_id = "ocid1.vcn.oc1.ap-hyderabad-1.amaaaaaa3gynwiyawriotc2spi2c5wuw74jwcjgautcehswqje4nyebfh5jq"
  }
  /*metadata = {
    ssh_authorized_keys = file(var.public_key)
  }*/
  preserve_boot_volume = false
}

