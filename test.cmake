enable_testing()
add_test(NAME output_usage COMMAND cxjser)
set_tests_properties(output_usage PROPERTIES PASS_REGULAR_EXPRESSION "Usage")
