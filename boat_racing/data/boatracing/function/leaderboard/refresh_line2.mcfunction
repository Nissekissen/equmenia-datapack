# Ran with "line" argument

# updates the row at r
$data modify entity @n[type=text_display, tag=br_lb_$(r)] text set value [{text: "$(r). ", color: "gold"}, {text: "$(name)", color: "white"}, {text: " $(m):$(pad)$(s).$(d)", color: "green"}]
