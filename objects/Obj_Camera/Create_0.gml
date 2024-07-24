if instance_number(Obj_Camera) > 1 {instance_destroy()}

view_width = room_width
view_height = room_height
window_scale = 4

window_set_size(view_width*window_scale, view_height*window_scale)
alarm[0] = 1

surface_resize(application_surface, view_width*window_scale, view_height*window_scale)