## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_null"></a> [null](#provider\_null) | n/a |
| <a name="provider_time"></a> [time](#provider\_time) | n/a |
| <a name="provider_vault"></a> [vault](#provider\_vault) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [null_resource.kv1_to_kv2_migration](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [time_sleep.wait_3_seconds](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/sleep) | resource |
| [vault_generic_secret.kv_secret](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/generic_secret) | resource |
| [vault_mount.kv](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/mount) | resource |
| [vault_policy.kv-policy](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_vault_address"></a> [vault\_address](#input\_vault\_address) | n/a | `string` | n/a | yes |
| <a name="input_vault_kv_json"></a> [vault\_kv\_json](#input\_vault\_kv\_json) | n/a | `string` | n/a | yes |
| <a name="input_vault_kv_path"></a> [vault\_kv\_path](#input\_vault\_kv\_path) | n/a | `string` | n/a | yes |
| <a name="input_vault_kv_policies"></a> [vault\_kv\_policies](#input\_vault\_kv\_policies) | n/a | `map(any)` | n/a | yes |
| <a name="input_vault_kv_secret"></a> [vault\_kv\_secret](#input\_vault\_kv\_secret) | n/a | `string` | n/a | yes |
| <a name="input_module_depends_on"></a> [module\_depends\_on](#input\_module\_depends\_on) | n/a | `any` | `[]` | no |

## Outputs

No outputs.
