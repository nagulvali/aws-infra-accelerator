.PHONY: init plan apply destroy

init:
	cd envs/sandbox && terraform init

plan:
	cd envs/sandbox && terraform plan

apply:
	cd envs/sandbox && terraform apply -auto-approve

destroy:
	cd envs/sandbox && terraform destroy -auto-approve