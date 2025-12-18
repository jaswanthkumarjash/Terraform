output "console_output_1" {
    value = "${var.console_input}"
}

output "console_output_2" {
    value = "length of list is ${length(var.console_input)}"
}