variable "filename" {
  type    = string
  default = "versions.tf"
  validation {
    condition     = length(var.filename) > 0
    error_message = "The 'filename' variable cannot be an empty string."
  }
}
