
name "kong"
description "Kong Role for Single node konging - does nothing"
run_list("recipe[kong::default]")
default_attributes()
override_attributes()
