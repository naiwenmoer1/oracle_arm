provider "oci" {}

resource "oci_core_instance" "generated_oci_core_instance" {
	agent_config {
		is_management_disabled = "false"
		is_monitoring_disabled = "false"
		plugins_config {
			desired_state = "DISABLED"
			name = "Vulnerability Scanning"
		}
		plugins_config {
			desired_state = "ENABLED"
			name = "Compute Instance Monitoring"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Bastion"
		}
	}
	availability_config {
		recovery_action = "RESTORE_INSTANCE"
	}
	availability_domain = "ceaY:AP-CHUNCHEON-1-AD-1"
	compartment_id = "ocid1.tenancy.oc1..aaaaaaaanoqe3fo5gf27hcoqoewu2nkto7ljmzvlvkxqla7o6mtn7girgcda"
	create_vnic_details {
		assign_private_dns_record = "true"
		assign_public_ip = "true"
		subnet_id = "ocid1.subnet.oc1.ap-chuncheon-1.aaaaaaaa2c7452sakn553jrzjbie4yh7qqtgeimh554233vyx5hn63vczgfq"
	}
	display_name = "instance-20220206-2253"
	instance_options {
		are_legacy_imds_endpoints_disabled = "false"
	}
	is_pv_encryption_in_transit_enabled = "true"
	metadata = {
		"ssh_authorized_keys" = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDBl6yaU1mk6Wz2KIJfmaOiwIGp0JQmf7XJEzPm3zUHuKH7glgidwsqvhwrk/x6A7LJr+r6pOeQmB6LzVN9gZJgKoEijNk29JHf1VbrSAm3rmvFDJt7sieA3u08PevUvzNoDa1X+X2lbO9qynSpfLw4I44433Y2a+yUmvrGINnn0EvRoDiwFATCrfqarduFQ9sZdcHwZy623l7CS1+mKltvtaAzTDdLY+ty3cfiLtvsIDGFdQhL+RpTe9jf9MQnXF1OPCTlABy4/O7R7IIMDiWImW5leXLJdYP4GBHK/DYpyP5umAZ3ygzU7LZjzpJQ+nZqmq7pyjBV9NMhayTOwO5j ssh-key-2021-12-31"
	}
	shape = "VM.Standard.A1.Flex"
	shape_config {
		memory_in_gbs = "24"
		ocpus = "4"
	}
	source_details {
		boot_volume_size_in_gbs = "100"
		source_id = "ocid1.image.oc1.ap-chuncheon-1.aaaaaaaapwxk2b27mboilwxhpmz7way3ieph2en6fuzn7umvud5w2c73avdq"
		source_type = "image"
	}
}
