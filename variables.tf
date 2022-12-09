variable "role_name" {
  description = "The name of the IAM role to create"
  type        = string
}

variable "max_session_duration" {
  description = "The maximum session duration (in seconds) that you want to set for the specified role. If you do not specify a value for this setting, the default maximum of one hour is applied. This setting can have a value from 1 hour to 12 hours"
  type        = number
  default     = 3600
}

variable "subjects" {
  description = "A map of GitHub orgs/repositories"
  type        = map(string)
  default     = {}
}

variable "policies" {
  description = "A map of IAM role names to IAM policy names"
  type        = map(list(string))
  default     = {}
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}
