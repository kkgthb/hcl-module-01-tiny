data "local_file" "mylocalfile" {
  filename = "${path.module}/${var.filename}"
}