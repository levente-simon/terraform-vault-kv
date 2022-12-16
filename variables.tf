variable "vault_kv_path"     { type = string   }
variable "vault_kv_policies" { type = map(any) }
variable "vault_kv_json"     { type = string   }
variable "vault_address" {
  type = string
  default = "https://127.0.0.1:8200"
}
variable "vault_kv_secret" {
  type      = string
  sensitive = true
}
