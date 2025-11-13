run "example_assert" {
  variables {
    filename = "main.tf"
  }
  assert {
    condition     = data.local_file.mylocalfile.filename == "${path.module}/${var.filename}"
    error_message = "Filename was not as expected"
  }
}