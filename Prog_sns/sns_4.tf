variable "sns_policy_document_map" {
  description = "Defines the SNS policy for the module."
  type = map(object({
    actions       = list(string)  # List of allowed actions (e.g., sns:publish)
    principal_arn = list(string)  # List of ARNs for allowed principals
    resources     = list(string)  # List of ARNs for target resources
    effect        = string        # Specifies Allow or Deny
  }))
  nullable = false

  # Validation to ensure overly permissive policies are rejected
  validation {
    condition = alltrue([
      # Ensure "*" is not in any principal ARN list
      !contains(var.sns_policy_document_map.principal_arn, "*")
    ])
    error_message = "Invalid SNS policy: You cannot use '*' in principal ARN. Specify specific principal ARNs instead."
  }   

