# The outputs.tf file in this directory contains the single output variable for the network module. You will follow this subnetwork_id variable throughout this lab step to gain an understanding of how Terragrunt passes outputs to resources downstream. Remember, this must first be applied in order for this output to render and be passed down.

output "subnetwork_id" {
    description = "ID of Parent Subnetwork"
    value = google_compute_subnetwork.subnetwork.id
}