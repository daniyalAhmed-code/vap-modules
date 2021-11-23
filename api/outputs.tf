output "id" {
  value = aws_api_gateway_rest_api.this.id
}

output "stage" {
  value = aws_api_gateway_stage.this.stage_name
}