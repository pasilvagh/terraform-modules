# Include all settings from the root terragrunt.hcl file
# Similar to the network/terragrunt.hcl file, the include block will adopt the configurations of the root-level terragrunt.hcl file.
include {
  path = find_in_parent_folders()
}

# The dependency block is declared next with the network identifier. The config_path attribute of this block uses the built-in find_in_parent_folders helper to retrieve the network module. This is how you declare a dependency and access the output variables of separate modules in Terragrunt.
dependency "network" {
  config_path = find_in_parent_folders("network")
}

# Finally, the inputs object references the single expected input for the gcsql module, the subnetwork_id of the network module.
inputs = {
  subnetwork_id = dependency.network.outputs.subnetwork_id
}
