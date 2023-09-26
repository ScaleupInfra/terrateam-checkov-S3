package terraform.analysis

import input as tfplan

resource_changes[rc] {
  some resource_type
  resource_type = "aws_s3_bucket"
  rc = tfplan.resource_changes[_]
  rc.type == resource_type
  rc.change.actions[_] == "create"
  rc.change.after.bucket != "sidvjsingh"
}

deny[msg] {
  some rc
  rc = resource_changes[_]
  msg = "Bucket name must be 'sidvjsingh'"
}

result := {msg | deny[msg]}

allow = "pass" {
  count(resource_changes) == 0
} else = "fail" {
  count(resource_changes) > 0
}

main = {
  "result": allow,
  "violations": {msg | deny[msg]}
}

output = {
  "result" : main
}
