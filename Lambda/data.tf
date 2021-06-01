data "archive_file" "lambda_zip" {
  type        = "zip"
  source_file = "${path.module}/data/sample.js"
  output_path = "${path.module}/data/lambda_function.zip"
}