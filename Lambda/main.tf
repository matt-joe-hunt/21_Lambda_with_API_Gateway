resource "aws_lambda_function" "lambda" {
  filename         = "${path.module}/data/lambda_function.zip"
  function_name    = "21-Lambda-${terraform.workspace}"
  role             = aws_iam_role.lambda_role.arn
  handler          = "sample.handler"
  source_code_hash = data.archive_file.lambda_zip.output_base64sha256
  runtime          = "nodejs12.x"
}

resource "aws_iam_role" "lambda_role" {
  name               = "20-Lambda-${terraform.workspace}"
  assume_role_policy = file("${path.module}/data/policy.json")
}

resource "aws_lambda_permission" "apigw_lambda" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.lambda.function_name
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${var.api_gw_execution_arn}/*/*/*"
}
