output "url" {
  value = "${aws_api_gateway_deployment.deployment.invoke_url}${aws_api_gateway_resource.resource.path}"
}

output "execution_arn" {
  value = aws_api_gateway_rest_api.api.execution_arn
}