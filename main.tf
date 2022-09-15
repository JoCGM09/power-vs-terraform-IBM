resource "ibm_pi_key" "power_sshkey" {
  pi_key_name          = var.ssh_key_name
  pi_ssh_key           = var.ssh_key
  pi_cloud_instance_id = local.cloud_instance_id
}
data "ibm_pi_key" "key" {
  depends_on           = [ibm_pi_key.power_sshkey]
  pi_cloud_instance_id = local.cloud_instance_id
  pi_key_name          = var.ssh_key_name
}

data "ibm_pi_image" "power_image" {
 pi_cloud_instance_id = local.cloud_instance_id
 pi_image_name        = var.image_name
}

resource "ibm_pi_image" "power_image"{
  pi_image_name       = var.image_name
  pi_cloud_instance_id = local.cloud_instance_id
  pi_image_bucket_name = "terraform-os-jgm-cos-standard-rjk"
  pi_image_bucket_access = "public"
  pi_image_bucket_region = "us-east"
  pi_image_bucket_file_name = "ubuntu-22.04.1-live-server-ppc64el.iso"
  pi_image_storage_type = "tier1"
}

resource "ibm_pi_network" "power_pub_network" {
  count                = 1
  pi_network_name      = "pub-network"  
  pi_cloud_instance_id = local.cloud_instance_id
  pi_network_type      = "pub-vlan"
  pi_dns               = ["9.9.9.9"]
  pi_cidr              = "192.168.129.0/29"
  pi_gateway           = "192.168.0.1"
  pi_ipaddress_range {
    pi_starting_ip_address  = "192.168.0.2"
    pi_ending_ip_address    = "192.168.0.6"
  }
}

resource "ibm_pi_network" "power_priv_network" {
  count                = 1
  pi_network_name      = "priv-network" 
  pi_cloud_instance_id = local.cloud_instance_id
  pi_network_type      = "vlan"
  pi_dns               = ["127.0.0.1"]
  pi_cidr              = "192.168.0.0/24"
  pi_gateway           = "192.168.0.1"
  pi_ipaddress_range {
    pi_starting_ip_address  = "192.168.0.2"
    pi_ending_ip_address    = "192.168.0.254"
  }
}

data "ibm_pi_network" "pub-network" {
  depends_on           = [ibm_pi_network.power_pub_network]
  pi_cloud_instance_id = local.cloud_instance_id
  pi_network_name = "pub-network"
}  
  
data "ibm_pi_network" "priv-network" {
  depends_on           = [ibm_pi_network.power_priv_network]
  pi_cloud_instance_id = local.cloud_instance_id
  pi_network_name = "priv-network"
}


resource "ibm_pi_instance" "instance" {
  pi_cloud_instance_id = local.cloud_instance_id
  pi_memory            = var.memory
  pi_processors        = var.processors
  pi_instance_name     = var.instance_name
  pi_proc_type         = var.processor_type
  pi_image_id          = data.ibm_pi_image.power_image.id
  pi_key_pair_name     = data.ibm_pi_key.key.id
  pi_sys_type          = var.sys_type
  pi_storage_type      = var.storage_type
  pi_network {
    network_id = data.ibm_pi_network.pub-network.id  
  }
  pi_network {
    network_id = data.ibm_pi_network.priv-network.id  
  }
}