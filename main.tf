terraform {}

provider "vault" {
  address      = var.vault_address
}

variable "module_depends_on" {
  type    = any
  default = []
}


resource "vault_mount" "kv" {
  depends_on = [ var.module_depends_on ]

  path        = var.vault_kv_path
  type        = "kv"
  options = {
    version = 2
  }
}

resource "time_sleep" "wait_3_seconds" {
  depends_on = [ vault_mount.kv ]
  create_duration = "3s"
}

resource "null_resource" "kv1_to_kv2_migration" {
  depends_on = [ time_sleep.wait_3_seconds ]
}

resource "vault_policy" "kv-policy" {
  for_each = var.vault_kv_policies

  name     = each.key
  policy   = each.value.policy
}

resource "vault_generic_secret" "kv_secret" {
  depends_on = [ null_resource.kv1_to_kv2_migration ]
  path       = "${var.vault_kv_path}/${var.vault_kv_secret}"

  data_json = var.vault_kv_json 
}
