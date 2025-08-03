.PHONY: init plan apply destroy

init:
	cd envs/dev && terraform init

plan:
	cd envs/dev && terraform plan

apply:
	cd envs/dev && terraform apply -auto-approve

destroy:
	cd envs/dev && terraform destroy -auto-approve