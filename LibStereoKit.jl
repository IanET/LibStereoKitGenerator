module LibStereoKit

using CEnum

# 
# Automatically generated file - do not edit
#

StereoKitC = joinpath(@__DIR__, "StereoKitC.dll")


const uint64_t = Culonglong

const char16_t = Cushort

const char32_t = Cuint

const bool32_t = Int32

@cenum display_mode_::UInt32 begin
    display_mode_mixedreality = 0
    display_mode_flatscreen = 1
    display_mode_none = 2
end

@cenum depth_mode_::UInt32 begin
    depth_mode_balanced = 0
    depth_mode_d16 = 1
    depth_mode_d32 = 2
    depth_mode_stencil = 3
end

@cenum display_::UInt32 begin
    display_none = 0
    display_opaque = 1
    display_additive = 2
    display_blend = 4
    display_passthrough = 4
    display_any_transparent = 6
end

@cenum display_blend_::UInt32 begin
    display_blend_none = 0
    display_blend_opaque = 1
    display_blend_additive = 2
    display_blend_blend = 4
    display_blend_any_transparent = 6
end

@cenum log_::UInt32 begin
    log_none = 0
    log_diagnostic = 1
    log_inform = 2
    log_warning = 3
    log_error = 4
end

@cenum render_layer_::UInt32 begin
    render_layer_0 = 1
    render_layer_1 = 2
    render_layer_2 = 4
    render_layer_3 = 8
    render_layer_4 = 16
    render_layer_5 = 32
    render_layer_6 = 64
    render_layer_7 = 128
    render_layer_8 = 256
    render_layer_9 = 512
    render_layer_vfx = 1024
    render_layer_all = 65535
    render_layer_all_regular = 1023
end

struct sk_settings_t
    app_name::Ptr{Cchar}
    assets_folder::Ptr{Cchar}
    display_preference::display_mode_
    blend_preference::display_blend_
    no_flatscreen_fallback::bool32_t
    depth_mode::depth_mode_
    log_filter::log_
    overlay_app::bool32_t
    overlay_priority::UInt32
    flatscreen_pos_x::Int32
    flatscreen_pos_y::Int32
    flatscreen_width::Int32
    flatscreen_height::Int32
    disable_flatscreen_mr_sim::bool32_t
    android_java_vm::Ptr{Cvoid}
    android_activity::Ptr{Cvoid}
end

struct system_info_t
    display_type::display_
    display_width::Int32
    display_height::Int32
    spatial_bridge_present::bool32_t
    perception_bridge_present::bool32_t
    eye_tracking_present::bool32_t
    overlay_app::bool32_t
    world_occlusion_present::bool32_t
    world_raycast_present::bool32_t
end

function sk_init(settings)
    ccall((:sk_init, StereoKitC), bool32_t, (sk_settings_t,), settings)
end

function sk_set_window(window)
    ccall((:sk_set_window, StereoKitC), Cvoid, (Ptr{Cvoid},), window)
end

function sk_set_window_xam(window)
    ccall((:sk_set_window_xam, StereoKitC), Cvoid, (Ptr{Cvoid},), window)
end

# no prototype is found for this function at stereokit.h:147:22, please use with caution
function sk_shutdown()
    ccall((:sk_shutdown, StereoKitC), Cvoid, ())
end

# no prototype is found for this function at stereokit.h:148:22, please use with caution
function sk_quit()
    ccall((:sk_quit, StereoKitC), Cvoid, ())
end

function sk_step(app_update)
    ccall((:sk_step, StereoKitC), bool32_t, (Ptr{Cvoid},), app_update)
end

# no prototype is found for this function at stereokit.h:150:22, please use with caution
function sk_active_display_mode()
    ccall((:sk_active_display_mode, StereoKitC), display_mode_, ())
end

# no prototype is found for this function at stereokit.h:151:22, please use with caution
function sk_get_settings()
    ccall((:sk_get_settings, StereoKitC), sk_settings_t, ())
end

# no prototype is found for this function at stereokit.h:152:22, please use with caution
function sk_system_info()
    ccall((:sk_system_info, StereoKitC), system_info_t, ())
end

# no prototype is found for this function at stereokit.h:153:22, please use with caution
function sk_version_name()
    ccall((:sk_version_name, StereoKitC), Ptr{Cchar}, ())
end

# no prototype is found for this function at stereokit.h:154:22, please use with caution
function sk_version_id()
    ccall((:sk_version_id, StereoKitC), uint64_t, ())
end

# no prototype is found for this function at stereokit.h:158:22, please use with caution
function time_getf_unscaled()
    ccall((:time_getf_unscaled, StereoKitC), Cfloat, ())
end

# no prototype is found for this function at stereokit.h:159:22, please use with caution
function time_get_unscaled()
    ccall((:time_get_unscaled, StereoKitC), Cdouble, ())
end

# no prototype is found for this function at stereokit.h:160:22, please use with caution
function time_getf()
    ccall((:time_getf, StereoKitC), Cfloat, ())
end

# no prototype is found for this function at stereokit.h:161:22, please use with caution
function time_get()
    ccall((:time_get, StereoKitC), Cdouble, ())
end

# no prototype is found for this function at stereokit.h:162:22, please use with caution
function time_elapsedf_unscaled()
    ccall((:time_elapsedf_unscaled, StereoKitC), Cfloat, ())
end

# no prototype is found for this function at stereokit.h:163:22, please use with caution
function time_elapsed_unscaled()
    ccall((:time_elapsed_unscaled, StereoKitC), Cdouble, ())
end

# no prototype is found for this function at stereokit.h:164:22, please use with caution
function time_elapsedf()
    ccall((:time_elapsedf, StereoKitC), Cfloat, ())
end

# no prototype is found for this function at stereokit.h:165:22, please use with caution
function time_elapsed()
    ccall((:time_elapsed, StereoKitC), Cdouble, ())
end

function time_scale(scale)
    ccall((:time_scale, StereoKitC), Cvoid, (Cdouble,), scale)
end

function time_set_time(total_seconds, frame_elapsed_seconds)
    ccall((:time_set_time, StereoKitC), Cvoid, (Cdouble, Cdouble), total_seconds, frame_elapsed_seconds)
end

struct vec2
    x::Cfloat
    y::Cfloat
end

struct vec3
    x::Cfloat
    y::Cfloat
    z::Cfloat
end

struct vec4
    x::Cfloat
    y::Cfloat
    z::Cfloat
    w::Cfloat
end

struct quat
    x::Cfloat
    y::Cfloat
    z::Cfloat
    w::Cfloat
end

struct matrix
    data::NTuple{64, UInt8}
end

function Base.getproperty(x::Ptr{matrix}, f::Symbol)
    f === :row && return Ptr{NTuple{4, vec4}}(x + 0)
    f === :m && return Ptr{NTuple{16, Cfloat}}(x + 0)
    return getfield(x, f)
end

function Base.getproperty(x::matrix, f::Symbol)
    r = Ref{matrix}(x)
    ptr = Base.unsafe_convert(Ptr{matrix}, r)
    fptr = getproperty(ptr, f)
    GC.@preserve r unsafe_load(fptr)
end

function Base.setproperty!(x::Ptr{matrix}, f::Symbol, v)
    unsafe_store!(getproperty(x, f), v)
end

struct rect_t
    x::Cfloat
    y::Cfloat
    w::Cfloat
    h::Cfloat
end

struct ray_t
    pos::vec3
    dir::vec3
end

struct bounds_t
    center::vec3
    dimensions::vec3
end

struct plane_t
    normal::vec3
    d::Cfloat
end

struct sphere_t
    center::vec3
    radius::Cfloat
end

struct pose_t
    position::vec3
    orientation::quat
end

function vec3_cross(a, b)
    ccall((:vec3_cross, StereoKitC), vec3, (Ptr{vec3}, Ptr{vec3}), a, b)
end

function quat_difference(a, b)
    ccall((:quat_difference, StereoKitC), quat, (Ptr{quat}, Ptr{quat}), a, b)
end

function quat_lookat(from, at)
    ccall((:quat_lookat, StereoKitC), quat, (Ptr{vec3}, Ptr{vec3}), from, at)
end

function quat_lookat_up(from, at, up)
    ccall((:quat_lookat_up, StereoKitC), quat, (Ptr{vec3}, Ptr{vec3}, Ptr{vec3}), from, at, up)
end

function quat_from_angles(pitch_x_deg, yaw_y_deg, roll_z_deg)
    ccall((:quat_from_angles, StereoKitC), quat, (Cfloat, Cfloat, Cfloat), pitch_x_deg, yaw_y_deg, roll_z_deg)
end

function quat_slerp(a, b, t)
    ccall((:quat_slerp, StereoKitC), quat, (Ptr{quat}, Ptr{quat}, Cfloat), a, b, t)
end

function quat_normalize(a)
    ccall((:quat_normalize, StereoKitC), quat, (Ptr{quat},), a)
end

function quat_inverse(a)
    ccall((:quat_inverse, StereoKitC), quat, (Ptr{quat},), a)
end

function quat_mul(a, b)
    ccall((:quat_mul, StereoKitC), quat, (Ptr{quat}, Ptr{quat}), a, b)
end

function quat_mul_vec(a, b)
    ccall((:quat_mul_vec, StereoKitC), vec3, (Ptr{quat}, Ptr{vec3}), a, b)
end

function pose_matrix(pose, scale)
    ccall((:pose_matrix, StereoKitC), matrix, (Ptr{pose_t}, vec3), pose, scale)
end

function pose_matrix_out(pose, out_result, scale)
    ccall((:pose_matrix_out, StereoKitC), Cvoid, (Ptr{pose_t}, Ptr{matrix}, vec3), pose, out_result, scale)
end

function matrix_inverse(a, out_matrix)
    ccall((:matrix_inverse, StereoKitC), Cvoid, (Ptr{matrix}, Ptr{matrix}), a, out_matrix)
end

function matrix_invert(a)
    ccall((:matrix_invert, StereoKitC), matrix, (Ptr{matrix},), a)
end

function matrix_mul(a, b, out_matrix)
    ccall((:matrix_mul, StereoKitC), Cvoid, (Ptr{matrix}, Ptr{matrix}, Ptr{matrix}), a, b, out_matrix)
end

function matrix_mul_point(transform, point)
    ccall((:matrix_mul_point, StereoKitC), vec3, (Ptr{matrix}, Ptr{vec3}), transform, point)
end

function matrix_mul_point4(transform, point)
    ccall((:matrix_mul_point4, StereoKitC), vec4, (Ptr{matrix}, Ptr{vec4}), transform, point)
end

function matrix_mul_direction(transform, direction)
    ccall((:matrix_mul_direction, StereoKitC), vec3, (Ptr{matrix}, Ptr{vec3}), transform, direction)
end

function matrix_mul_rotation(transform, orientation)
    ccall((:matrix_mul_rotation, StereoKitC), quat, (Ptr{matrix}, Ptr{quat}), transform, orientation)
end

function matrix_mul_pose(transform, pose)
    ccall((:matrix_mul_pose, StereoKitC), pose_t, (Ptr{matrix}, Ptr{pose_t}), transform, pose)
end

function matrix_transform_pt(transform, point)
    ccall((:matrix_transform_pt, StereoKitC), vec3, (matrix, vec3), transform, point)
end

function matrix_transform_pt4(transform, point)
    ccall((:matrix_transform_pt4, StereoKitC), vec4, (matrix, vec4), transform, point)
end

function matrix_transform_dir(transform, direction)
    ccall((:matrix_transform_dir, StereoKitC), vec3, (matrix, vec3), transform, direction)
end

function matrix_transform_ray(transform, ray)
    ccall((:matrix_transform_ray, StereoKitC), ray_t, (matrix, ray_t), transform, ray)
end

function matrix_transform_quat(transform, rotation)
    ccall((:matrix_transform_quat, StereoKitC), quat, (matrix, quat), transform, rotation)
end

function matrix_transform_pose(transform, pose)
    ccall((:matrix_transform_pose, StereoKitC), pose_t, (matrix, pose_t), transform, pose)
end

function matrix_to_angles(transform)
    ccall((:matrix_to_angles, StereoKitC), vec3, (Ptr{matrix},), transform)
end

function matrix_trs(position, orientation, scale)
    ccall((:matrix_trs, StereoKitC), matrix, (Ptr{vec3}, Ptr{quat}, Ptr{vec3}), position, orientation, scale)
end

function matrix_trs_out(out_result, position, orientation, scale)
    ccall((:matrix_trs_out, StereoKitC), Cvoid, (Ptr{matrix}, Ptr{vec3}, Ptr{quat}, Ptr{vec3}), out_result, position, orientation, scale)
end

function matrix_perspective(fov_degrees, aspect_ratio, near_clip, far_clip)
    ccall((:matrix_perspective, StereoKitC), matrix, (Cfloat, Cfloat, Cfloat, Cfloat), fov_degrees, aspect_ratio, near_clip, far_clip)
end

function matrix_orthographic(width, height, near_clip, far_clip)
    ccall((:matrix_orthographic, StereoKitC), matrix, (Cfloat, Cfloat, Cfloat, Cfloat), width, height, near_clip, far_clip)
end

function matrix_decompose(transform, out_position, out_scale, out_orientation)
    ccall((:matrix_decompose, StereoKitC), bool32_t, (Ptr{matrix}, Ptr{vec3}, Ptr{vec3}, Ptr{quat}), transform, out_position, out_scale, out_orientation)
end

function matrix_extract_translation(transform)
    ccall((:matrix_extract_translation, StereoKitC), vec3, (Ptr{matrix},), transform)
end

function matrix_extract_scale(transform)
    ccall((:matrix_extract_scale, StereoKitC), vec3, (Ptr{matrix},), transform)
end

function matrix_extract_rotation(transform)
    ccall((:matrix_extract_rotation, StereoKitC), quat, (Ptr{matrix},), transform)
end

function matrix_extract_pose(transform)
    ccall((:matrix_extract_pose, StereoKitC), pose_t, (Ptr{matrix},), transform)
end

function ray_intersect_plane(ray, plane_pt, plane_normal, out_t)
    ccall((:ray_intersect_plane, StereoKitC), bool32_t, (ray_t, vec3, vec3, Ptr{Cfloat}), ray, plane_pt, plane_normal, out_t)
end

function ray_from_mouse(screen_pixel_pos, out_ray)
    ccall((:ray_from_mouse, StereoKitC), bool32_t, (vec2, Ptr{ray_t}), screen_pixel_pos, out_ray)
end

function plane_from_points(p1, p2, p3)
    ccall((:plane_from_points, StereoKitC), plane_t, (vec3, vec3, vec3), p1, p2, p3)
end

function plane_from_ray(ray)
    ccall((:plane_from_ray, StereoKitC), plane_t, (ray_t,), ray)
end

function vec3_magnitude(a)
    ccall((:vec3_magnitude, StereoKitC), Cfloat, (vec3,), a)
end

function vec2_magnitude(a)
    ccall((:vec2_magnitude, StereoKitC), Cfloat, (vec2,), a)
end

function vec3_magnitude_sq(a)
    ccall((:vec3_magnitude_sq, StereoKitC), Cfloat, (vec3,), a)
end

function vec2_magnitude_sq(a)
    ccall((:vec2_magnitude_sq, StereoKitC), Cfloat, (vec2,), a)
end

function vec3_dot(a, b)
    ccall((:vec3_dot, StereoKitC), Cfloat, (vec3, vec3), a, b)
end

function vec2_dot(a, b)
    ccall((:vec2_dot, StereoKitC), Cfloat, (vec2, vec2), a, b)
end

function vec3_distance_sq(a, b)
    ccall((:vec3_distance_sq, StereoKitC), Cfloat, (vec3, vec3), a, b)
end

function vec2_distance_sq(a, b)
    ccall((:vec2_distance_sq, StereoKitC), Cfloat, (vec2, vec2), a, b)
end

function vec3_distance(a, b)
    ccall((:vec3_distance, StereoKitC), Cfloat, (vec3, vec3), a, b)
end

function vec2_distance(a, b)
    ccall((:vec2_distance, StereoKitC), Cfloat, (vec2, vec2), a, b)
end

function vec3_normalize(a)
    ccall((:vec3_normalize, StereoKitC), vec3, (vec3,), a)
end

function vec2_normalize(a)
    ccall((:vec2_normalize, StereoKitC), vec2, (vec2,), a)
end

function vec3_abs(a)
    ccall((:vec3_abs, StereoKitC), vec3, (vec3,), a)
end

function vec2_abs(a)
    ccall((:vec2_abs, StereoKitC), vec2, (vec2,), a)
end

function vec3_lerp(a, b, t)
    ccall((:vec3_lerp, StereoKitC), vec3, (vec3, vec3, Cfloat), a, b, t)
end

function vec2_lerp(a, b, t)
    ccall((:vec2_lerp, StereoKitC), vec2, (vec2, vec2, Cfloat), a, b, t)
end

function vec3_in_radius(pt, center, radius)
    ccall((:vec3_in_radius, StereoKitC), bool32_t, (vec3, vec3, Cfloat), pt, center, radius)
end

function vec2_in_radius(pt, center, radius)
    ccall((:vec2_in_radius, StereoKitC), bool32_t, (vec2, vec2, Cfloat), pt, center, radius)
end

function plane_ray_intersect(plane, ray, out_pt)
    ccall((:plane_ray_intersect, StereoKitC), bool32_t, (plane_t, ray_t, Ptr{vec3}), plane, ray, out_pt)
end

function plane_line_intersect(plane, p1, p2, out_pt)
    ccall((:plane_line_intersect, StereoKitC), bool32_t, (plane_t, vec3, vec3, Ptr{vec3}), plane, p1, p2, out_pt)
end

function plane_point_closest(plane, pt)
    ccall((:plane_point_closest, StereoKitC), vec3, (plane_t, vec3), plane, pt)
end

function sphere_ray_intersect(sphere, ray, out_pt)
    ccall((:sphere_ray_intersect, StereoKitC), bool32_t, (sphere_t, ray_t, Ptr{vec3}), sphere, ray, out_pt)
end

function sphere_point_contains(sphere, pt)
    ccall((:sphere_point_contains, StereoKitC), bool32_t, (sphere_t, vec3), sphere, pt)
end

function bounds_ray_intersect(bounds, ray, out_pt)
    ccall((:bounds_ray_intersect, StereoKitC), bool32_t, (bounds_t, ray_t, Ptr{vec3}), bounds, ray, out_pt)
end

function bounds_point_contains(bounds, pt)
    ccall((:bounds_point_contains, StereoKitC), bool32_t, (bounds_t, vec3), bounds, pt)
end

function bounds_line_contains(bounds, pt1, pt2)
    ccall((:bounds_line_contains, StereoKitC), bool32_t, (bounds_t, vec3, vec3), bounds, pt1, pt2)
end

function bounds_capsule_contains(bounds, pt1, pt2, radius)
    ccall((:bounds_capsule_contains, StereoKitC), bool32_t, (bounds_t, vec3, vec3, Cfloat), bounds, pt1, pt2, radius)
end

function ray_point_closest(ray, pt)
    ccall((:ray_point_closest, StereoKitC), vec3, (ray_t, vec3), ray, pt)
end

struct color32
    r::UInt8
    g::UInt8
    b::UInt8
    a::UInt8
end

struct color128
    r::Cfloat
    g::Cfloat
    b::Cfloat
    a::Cfloat
end

function color_hsv(hue, saturation, value, transparency)
    ccall((:color_hsv, StereoKitC), color128, (Cfloat, Cfloat, Cfloat, Cfloat), hue, saturation, value, transparency)
end

function color_to_hsv(color)
    ccall((:color_to_hsv, StereoKitC), vec3, (Ptr{color128},), color)
end

function color_lab(l, a, b, transparency)
    ccall((:color_lab, StereoKitC), color128, (Cfloat, Cfloat, Cfloat, Cfloat), l, a, b, transparency)
end

function color_to_lab(color)
    ccall((:color_to_lab, StereoKitC), vec3, (Ptr{color128},), color)
end

function color_to_linear(srgb_gamma_correct)
    ccall((:color_to_linear, StereoKitC), color128, (color128,), srgb_gamma_correct)
end

function color_to_gamma(srgb_linear)
    ccall((:color_to_gamma, StereoKitC), color128, (color128,), srgb_linear)
end

function color_lerp(a, b, t)
    ccall((:color_lerp, StereoKitC), color128, (color128, color128, Cfloat), a, b, t)
end

function color_to_32(a)
    ccall((:color_to_32, StereoKitC), color32, (color128,), a)
end

function color32_to_128(color)
    ccall((:color32_to_128, StereoKitC), color128, (color32,), color)
end

function color32_hex(hex)
    ccall((:color32_hex, StereoKitC), color32, (UInt32,), hex)
end

function color_hex(hex)
    ccall((:color_hex, StereoKitC), color128, (UInt32,), hex)
end

mutable struct _gradient_t end

const gradient_t = Ptr{_gradient_t}

mutable struct _mesh_t end

const mesh_t = Ptr{_mesh_t}

mutable struct _tex_t end

const tex_t = Ptr{_tex_t}

mutable struct _font_t end

const font_t = Ptr{_font_t}

mutable struct _shader_t end

const shader_t = Ptr{_shader_t}

mutable struct _material_t end

const material_t = Ptr{_material_t}

mutable struct _model_t end

const model_t = Ptr{_model_t}

mutable struct _sprite_t end

const sprite_t = Ptr{_sprite_t}

mutable struct _sound_t end

const sound_t = Ptr{_sound_t}

struct gradient_key_t
    color::color128
    position::Cfloat
end

# no prototype is found for this function at stereokit.h:411:19, please use with caution
function gradient_create()
    ccall((:gradient_create, StereoKitC), gradient_t, ())
end

function gradient_create_keys(keys, count)
    ccall((:gradient_create_keys, StereoKitC), gradient_t, (Ptr{gradient_key_t}, Int32), keys, count)
end

function gradient_add(gradient, color_linear, position)
    ccall((:gradient_add, StereoKitC), Cvoid, (gradient_t, color128, Cfloat), gradient, color_linear, position)
end

function gradient_set(gradient, index, color_linear, position)
    ccall((:gradient_set, StereoKitC), Cvoid, (gradient_t, Int32, color128, Cfloat), gradient, index, color_linear, position)
end

function gradient_remove(gradient, index)
    ccall((:gradient_remove, StereoKitC), Cvoid, (gradient_t, Int32), gradient, index)
end

function gradient_count(gradient)
    ccall((:gradient_count, StereoKitC), Int32, (gradient_t,), gradient)
end

function gradient_get(gradient, at)
    ccall((:gradient_get, StereoKitC), color128, (gradient_t, Cfloat), gradient, at)
end

function gradient_get32(gradient, at)
    ccall((:gradient_get32, StereoKitC), color32, (gradient_t, Cfloat), gradient, at)
end

function gradient_release(gradient)
    ccall((:gradient_release, StereoKitC), Cvoid, (gradient_t,), gradient)
end

struct spherical_harmonics_t
    coefficients::NTuple{9, vec3}
end

struct sh_light_t
    dir_to::vec3
    color::color128
end

function sh_create(lights, light_count)
    ccall((:sh_create, StereoKitC), spherical_harmonics_t, (Ptr{sh_light_t}, Int32), lights, light_count)
end

function sh_brightness(harmonics, scale)
    ccall((:sh_brightness, StereoKitC), Cvoid, (Ptr{spherical_harmonics_t}, Cfloat), harmonics, scale)
end

function sh_add(harmonics, light_dir, light_color)
    ccall((:sh_add, StereoKitC), Cvoid, (Ptr{spherical_harmonics_t}, vec3, vec3), harmonics, light_dir, light_color)
end

function sh_lookup(harmonics, normal)
    ccall((:sh_lookup, StereoKitC), color128, (Ptr{spherical_harmonics_t}, vec3), harmonics, normal)
end

function sh_dominant_dir(harmonics)
    ccall((:sh_dominant_dir, StereoKitC), vec3, (Ptr{spherical_harmonics_t},), harmonics)
end

struct vert_t
    pos::vec3
    norm::vec3
    uv::vec2
    col::color32
end

const vind_t = UInt32

function mesh_find(name)
    ccall((:mesh_find, StereoKitC), mesh_t, (Ptr{Cchar},), name)
end

# no prototype is found for this function at stereokit.h:454:17, please use with caution
function mesh_create()
    ccall((:mesh_create, StereoKitC), mesh_t, ())
end

function mesh_copy(mesh)
    ccall((:mesh_copy, StereoKitC), mesh_t, (mesh_t,), mesh)
end

function mesh_set_id(mesh, id)
    ccall((:mesh_set_id, StereoKitC), Cvoid, (mesh_t, Ptr{Cchar}), mesh, id)
end

function mesh_addref(mesh)
    ccall((:mesh_addref, StereoKitC), Cvoid, (mesh_t,), mesh)
end

function mesh_release(mesh)
    ccall((:mesh_release, StereoKitC), Cvoid, (mesh_t,), mesh)
end

function mesh_draw(mesh, material, transform, color_linear, layer)
    ccall((:mesh_draw, StereoKitC), Cvoid, (mesh_t, material_t, matrix, color128, render_layer_), mesh, material, transform, color_linear, layer)
end

function mesh_set_keep_data(mesh, keep_data)
    ccall((:mesh_set_keep_data, StereoKitC), Cvoid, (mesh_t, bool32_t), mesh, keep_data)
end

function mesh_get_keep_data(mesh)
    ccall((:mesh_get_keep_data, StereoKitC), bool32_t, (mesh_t,), mesh)
end

function mesh_set_verts(mesh, vertices, vertex_count, calculate_bounds)
    ccall((:mesh_set_verts, StereoKitC), Cvoid, (mesh_t, Ptr{vert_t}, Int32, bool32_t), mesh, vertices, vertex_count, calculate_bounds)
end

function mesh_get_verts(mesh, out_vertices, out_vertex_count)
    ccall((:mesh_get_verts, StereoKitC), Cvoid, (mesh_t, Ptr{Ptr{vert_t}}, Ptr{Int32}), mesh, out_vertices, out_vertex_count)
end

function mesh_set_inds(mesh, indices, index_count)
    ccall((:mesh_set_inds, StereoKitC), Cvoid, (mesh_t, Ptr{vind_t}, Int32), mesh, indices, index_count)
end

function mesh_get_inds(mesh, out_indices, out_index_count)
    ccall((:mesh_get_inds, StereoKitC), Cvoid, (mesh_t, Ptr{Ptr{vind_t}}, Ptr{Int32}), mesh, out_indices, out_index_count)
end

function mesh_set_draw_inds(mesh, index_count)
    ccall((:mesh_set_draw_inds, StereoKitC), Cvoid, (mesh_t, Int32), mesh, index_count)
end

function mesh_set_bounds(mesh, bounds)
    ccall((:mesh_set_bounds, StereoKitC), Cvoid, (mesh_t, Ptr{bounds_t}), mesh, bounds)
end

function mesh_get_bounds(mesh)
    ccall((:mesh_get_bounds, StereoKitC), bounds_t, (mesh_t,), mesh)
end

function mesh_has_skin(mesh)
    ccall((:mesh_has_skin, StereoKitC), bool32_t, (mesh_t,), mesh)
end

function mesh_set_skin(mesh, bone_ids_4, bone_id_4_count, bone_weights, bone_weight_count, bone_resting_transforms, bone_count)
    ccall((:mesh_set_skin, StereoKitC), Cvoid, (mesh_t, Ptr{UInt16}, Int32, Ptr{vec4}, Int32, Ptr{matrix}, Int32), mesh, bone_ids_4, bone_id_4_count, bone_weights, bone_weight_count, bone_resting_transforms, bone_count)
end

function mesh_update_skin(mesh, bone_transforms, bone_count)
    ccall((:mesh_update_skin, StereoKitC), Cvoid, (mesh_t, Ptr{matrix}, Int32), mesh, bone_transforms, bone_count)
end

function mesh_ray_intersect(mesh, model_space_ray, out_pt)
    ccall((:mesh_ray_intersect, StereoKitC), bool32_t, (mesh_t, ray_t, Ptr{ray_t}), mesh, model_space_ray, out_pt)
end

function mesh_gen_plane(dimensions, plane_normal, plane_top_direction, subdivisions)
    ccall((:mesh_gen_plane, StereoKitC), mesh_t, (vec2, vec3, vec3, Int32), dimensions, plane_normal, plane_top_direction, subdivisions)
end

function mesh_gen_cube(dimensions, subdivisions)
    ccall((:mesh_gen_cube, StereoKitC), mesh_t, (vec3, Int32), dimensions, subdivisions)
end

function mesh_gen_sphere(diameter, subdivisions)
    ccall((:mesh_gen_sphere, StereoKitC), mesh_t, (Cfloat, Int32), diameter, subdivisions)
end

function mesh_gen_rounded_cube(dimensions, edge_radius, subdivisions)
    ccall((:mesh_gen_rounded_cube, StereoKitC), mesh_t, (vec3, Cfloat, Int32), dimensions, edge_radius, subdivisions)
end

function mesh_gen_cylinder(diameter, depth, direction, subdivisions)
    ccall((:mesh_gen_cylinder, StereoKitC), mesh_t, (Cfloat, Cfloat, vec3, Int32), diameter, depth, direction, subdivisions)
end

@cenum tex_type_::UInt32 begin
    tex_type_image_nomips = 1
    tex_type_cubemap = 2
    tex_type_rendertarget = 4
    tex_type_depth = 8
    tex_type_mips = 16
    tex_type_dynamic = 32
    tex_type_image = 17
end

@cenum tex_format_::UInt32 begin
    tex_format_none = 0
    tex_format_rgba32 = 1
    tex_format_rgba32_linear = 2
    tex_format_bgra32 = 3
    tex_format_bgra32_linear = 4
    tex_format_rg11b10 = 5
    tex_format_rgb10a2 = 6
    tex_format_rgba64 = 7
    tex_format_rgba64s = 8
    tex_format_rgba64f = 9
    tex_format_rgba128 = 10
    tex_format_r8 = 11
    tex_format_r16 = 12
    tex_format_r32 = 13
    tex_format_depthstencil = 14
    tex_format_depth32 = 15
    tex_format_depth16 = 16
    tex_format_rgba64u = 7
end

@cenum tex_sample_::UInt32 begin
    tex_sample_linear = 0
    tex_sample_point = 1
    tex_sample_anisotropic = 2
end

@cenum tex_address_::UInt32 begin
    tex_address_wrap = 0
    tex_address_clamp = 1
    tex_address_mirror = 2
end

function tex_find(id)
    ccall((:tex_find, StereoKitC), tex_t, (Ptr{Cchar},), id)
end

function tex_create(type, format)
    ccall((:tex_create, StereoKitC), tex_t, (tex_type_, tex_format_), type, format)
end

function tex_create_mem(file_data, file_size, srgb_data)
    ccall((:tex_create_mem, StereoKitC), tex_t, (Ptr{Cvoid}, Csize_t, bool32_t), file_data, file_size, srgb_data)
end

function tex_create_color32(data, width, height, srgb_data)
    ccall((:tex_create_color32, StereoKitC), tex_t, (Ptr{color32}, Int32, Int32, bool32_t), data, width, height, srgb_data)
end

function tex_create_color128(data, width, height, srgb_data)
    ccall((:tex_create_color128, StereoKitC), tex_t, (Ptr{color128}, Int32, Int32, bool32_t), data, width, height, srgb_data)
end

function tex_create_file(file, srgb_data)
    ccall((:tex_create_file, StereoKitC), tex_t, (Ptr{Cchar}, bool32_t), file, srgb_data)
end

function tex_create_file_arr(files, file_count, srgb_data)
    ccall((:tex_create_file_arr, StereoKitC), tex_t, (Ptr{Ptr{Cchar}}, Int32, bool32_t), files, file_count, srgb_data)
end

function tex_create_cubemap_file(equirectangular_file, srgb_data, out_sh_lighting_info)
    ccall((:tex_create_cubemap_file, StereoKitC), tex_t, (Ptr{Cchar}, bool32_t, Ptr{spherical_harmonics_t}), equirectangular_file, srgb_data, out_sh_lighting_info)
end

function tex_create_cubemap_files(cube_face_file_xxyyzz, srgb_data, out_sh_lighting_info)
    ccall((:tex_create_cubemap_files, StereoKitC), tex_t, (Ptr{Ptr{Cchar}}, bool32_t, Ptr{spherical_harmonics_t}), cube_face_file_xxyyzz, srgb_data, out_sh_lighting_info)
end

function tex_set_id(texture, id)
    ccall((:tex_set_id, StereoKitC), Cvoid, (tex_t, Ptr{Cchar}), texture, id)
end

function tex_set_surface(texture, native_surface, type, native_fmt, width, height, surface_count)
    ccall((:tex_set_surface, StereoKitC), Cvoid, (tex_t, Ptr{Cvoid}, tex_type_, Int64, Int32, Int32, Int32), texture, native_surface, type, native_fmt, width, height, surface_count)
end

function tex_addref(texture)
    ccall((:tex_addref, StereoKitC), Cvoid, (tex_t,), texture)
end

function tex_release(texture)
    ccall((:tex_release, StereoKitC), Cvoid, (tex_t,), texture)
end

function tex_set_colors(texture, width, height, data)
    ccall((:tex_set_colors, StereoKitC), Cvoid, (tex_t, Int32, Int32, Ptr{Cvoid}), texture, width, height, data)
end

function tex_set_color_arr(texture, width, height, data, data_count, out_sh_lighting_info, multisample)
    ccall((:tex_set_color_arr, StereoKitC), Cvoid, (tex_t, Int32, Int32, Ptr{Ptr{Cvoid}}, Int32, Ptr{spherical_harmonics_t}, Int32), texture, width, height, data, data_count, out_sh_lighting_info, multisample)
end

function tex_add_zbuffer(texture, format)
    ccall((:tex_add_zbuffer, StereoKitC), tex_t, (tex_t, tex_format_), texture, format)
end

function tex_get_data(texture, out_data, out_data_size)
    ccall((:tex_get_data, StereoKitC), Cvoid, (tex_t, Ptr{Cvoid}, Csize_t), texture, out_data, out_data_size)
end

function tex_gen_cubemap(gradient, gradient_dir, resolution, out_sh_lighting_info)
    ccall((:tex_gen_cubemap, StereoKitC), tex_t, (gradient_t, vec3, Int32, Ptr{spherical_harmonics_t}), gradient, gradient_dir, resolution, out_sh_lighting_info)
end

function tex_gen_cubemap_sh(lookup, face_size, light_spot_size_pct, light_spot_intensity)
    ccall((:tex_gen_cubemap_sh, StereoKitC), tex_t, (Ptr{spherical_harmonics_t}, Int32, Cfloat, Cfloat), lookup, face_size, light_spot_size_pct, light_spot_intensity)
end

function tex_get_format(texture)
    ccall((:tex_get_format, StereoKitC), tex_format_, (tex_t,), texture)
end

function tex_get_width(texture)
    ccall((:tex_get_width, StereoKitC), Int32, (tex_t,), texture)
end

function tex_get_height(texture)
    ccall((:tex_get_height, StereoKitC), Int32, (tex_t,), texture)
end

function tex_set_sample(texture, sample)
    ccall((:tex_set_sample, StereoKitC), Cvoid, (tex_t, tex_sample_), texture, sample)
end

function tex_get_sample(texture)
    ccall((:tex_get_sample, StereoKitC), tex_sample_, (tex_t,), texture)
end

function tex_set_address(texture, address_mode)
    ccall((:tex_set_address, StereoKitC), Cvoid, (tex_t, tex_address_), texture, address_mode)
end

function tex_get_address(texture)
    ccall((:tex_get_address, StereoKitC), tex_address_, (tex_t,), texture)
end

function tex_set_anisotropy(texture, anisotropy_level)
    ccall((:tex_set_anisotropy, StereoKitC), Cvoid, (tex_t, Int32), texture, anisotropy_level)
end

function tex_get_anisotropy(texture)
    ccall((:tex_get_anisotropy, StereoKitC), Int32, (tex_t,), texture)
end

function font_find(id)
    ccall((:font_find, StereoKitC), font_t, (Ptr{Cchar},), id)
end

function font_create(file)
    ccall((:font_create, StereoKitC), font_t, (Ptr{Cchar},), file)
end

function font_create_files(files, file_count)
    ccall((:font_create_files, StereoKitC), font_t, (Ptr{Ptr{Cchar}}, Int32), files, file_count)
end

function font_set_id(font, id)
    ccall((:font_set_id, StereoKitC), Cvoid, (font_t, Ptr{Cchar}), font, id)
end

function font_addref(font)
    ccall((:font_addref, StereoKitC), Cvoid, (font_t,), font)
end

function font_release(font)
    ccall((:font_release, StereoKitC), Cvoid, (font_t,), font)
end

function font_get_tex(font)
    ccall((:font_get_tex, StereoKitC), tex_t, (font_t,), font)
end

function shader_find(id)
    ccall((:shader_find, StereoKitC), shader_t, (Ptr{Cchar},), id)
end

function shader_create_file(filename)
    ccall((:shader_create_file, StereoKitC), shader_t, (Ptr{Cchar},), filename)
end

function shader_create_mem(data, data_size)
    ccall((:shader_create_mem, StereoKitC), shader_t, (Ptr{Cvoid}, Csize_t), data, data_size)
end

function shader_set_id(shader, id)
    ccall((:shader_set_id, StereoKitC), Cvoid, (shader_t, Ptr{Cchar}), shader, id)
end

function shader_get_name(shader)
    ccall((:shader_get_name, StereoKitC), Ptr{Cchar}, (shader_t,), shader)
end

function shader_addref(shader)
    ccall((:shader_addref, StereoKitC), Cvoid, (shader_t,), shader)
end

function shader_release(shader)
    ccall((:shader_release, StereoKitC), Cvoid, (shader_t,), shader)
end

@cenum transparency_::UInt32 begin
    transparency_none = 1
    transparency_blend = 2
    transparency_add = 3
end

@cenum cull_::UInt32 begin
    cull_back = 0
    cull_front = 1
    cull_none = 2
end

@cenum depth_test_::UInt32 begin
    depth_test_less = 0
    depth_test_less_or_eq = 1
    depth_test_greater = 2
    depth_test_greater_or_eq = 3
    depth_test_equal = 4
    depth_test_not_equal = 5
    depth_test_always = 6
    depth_test_never = 7
end

@cenum material_param_::UInt32 begin
    material_param_float = 0
    material_param_color128 = 1
    material_param_vector = 2
    material_param_matrix = 3
    material_param_texture = 4
end

mutable struct _material_buffer_t end

const material_buffer_t = Ptr{_material_buffer_t}

function material_find(id)
    ccall((:material_find, StereoKitC), material_t, (Ptr{Cchar},), id)
end

function material_create(shader)
    ccall((:material_create, StereoKitC), material_t, (shader_t,), shader)
end

function material_copy(material)
    ccall((:material_copy, StereoKitC), material_t, (material_t,), material)
end

function material_copy_id(id)
    ccall((:material_copy_id, StereoKitC), material_t, (Ptr{Cchar},), id)
end

function material_set_id(material, id)
    ccall((:material_set_id, StereoKitC), Cvoid, (material_t, Ptr{Cchar}), material, id)
end

function material_addref(material)
    ccall((:material_addref, StereoKitC), Cvoid, (material_t,), material)
end

function material_release(material)
    ccall((:material_release, StereoKitC), Cvoid, (material_t,), material)
end

function material_set_transparency(material, mode)
    ccall((:material_set_transparency, StereoKitC), Cvoid, (material_t, transparency_), material, mode)
end

function material_set_cull(material, mode)
    ccall((:material_set_cull, StereoKitC), Cvoid, (material_t, cull_), material, mode)
end

function material_set_wireframe(material, wireframe)
    ccall((:material_set_wireframe, StereoKitC), Cvoid, (material_t, bool32_t), material, wireframe)
end

function material_set_depth_test(material, depth_test_mode)
    ccall((:material_set_depth_test, StereoKitC), Cvoid, (material_t, depth_test_), material, depth_test_mode)
end

function material_set_depth_write(material, write_enabled)
    ccall((:material_set_depth_write, StereoKitC), Cvoid, (material_t, bool32_t), material, write_enabled)
end

function material_set_queue_offset(material, offset)
    ccall((:material_set_queue_offset, StereoKitC), Cvoid, (material_t, Int32), material, offset)
end

function material_get_transparency(material)
    ccall((:material_get_transparency, StereoKitC), transparency_, (material_t,), material)
end

function material_get_cull(material)
    ccall((:material_get_cull, StereoKitC), cull_, (material_t,), material)
end

function material_get_wireframe(material)
    ccall((:material_get_wireframe, StereoKitC), bool32_t, (material_t,), material)
end

function material_get_depth_test(material)
    ccall((:material_get_depth_test, StereoKitC), depth_test_, (material_t,), material)
end

function material_get_depth_write(material)
    ccall((:material_get_depth_write, StereoKitC), bool32_t, (material_t,), material)
end

function material_get_queue_offset(material)
    ccall((:material_get_queue_offset, StereoKitC), Int32, (material_t,), material)
end

function material_set_float(material, name, value)
    ccall((:material_set_float, StereoKitC), Cvoid, (material_t, Ptr{Cchar}, Cfloat), material, name, value)
end

function material_set_color(material, name, color_gamma)
    ccall((:material_set_color, StereoKitC), Cvoid, (material_t, Ptr{Cchar}, color128), material, name, color_gamma)
end

function material_set_vector4(material, name, value)
    ccall((:material_set_vector4, StereoKitC), Cvoid, (material_t, Ptr{Cchar}, vec4), material, name, value)
end

function material_set_vector3(material, name, value)
    ccall((:material_set_vector3, StereoKitC), Cvoid, (material_t, Ptr{Cchar}, vec3), material, name, value)
end

function material_set_vector2(material, name, value)
    ccall((:material_set_vector2, StereoKitC), Cvoid, (material_t, Ptr{Cchar}, vec2), material, name, value)
end

function material_set_vector(material, name, value)
    ccall((:material_set_vector, StereoKitC), Cvoid, (material_t, Ptr{Cchar}, vec4), material, name, value)
end

function material_set_matrix(material, name, value)
    ccall((:material_set_matrix, StereoKitC), Cvoid, (material_t, Ptr{Cchar}, matrix), material, name, value)
end

function material_set_texture(material, name, value)
    ccall((:material_set_texture, StereoKitC), bool32_t, (material_t, Ptr{Cchar}, tex_t), material, name, value)
end

function material_set_texture_id(material, id, value)
    ccall((:material_set_texture_id, StereoKitC), bool32_t, (material_t, uint64_t, tex_t), material, id, value)
end

function material_has_param(material, name, type)
    ccall((:material_has_param, StereoKitC), bool32_t, (material_t, Ptr{Cchar}, material_param_), material, name, type)
end

function material_set_param(material, name, type, value)
    ccall((:material_set_param, StereoKitC), Cvoid, (material_t, Ptr{Cchar}, material_param_, Ptr{Cvoid}), material, name, type, value)
end

function material_set_param_id(material, id, type, value)
    ccall((:material_set_param_id, StereoKitC), Cvoid, (material_t, uint64_t, material_param_, Ptr{Cvoid}), material, id, type, value)
end

function material_get_param(material, name, type, out_value)
    ccall((:material_get_param, StereoKitC), bool32_t, (material_t, Ptr{Cchar}, material_param_, Ptr{Cvoid}), material, name, type, out_value)
end

function material_get_param_id(material, id, type, out_value)
    ccall((:material_get_param_id, StereoKitC), bool32_t, (material_t, uint64_t, material_param_, Ptr{Cvoid}), material, id, type, out_value)
end

function material_get_param_info(material, index, out_name, out_type)
    ccall((:material_get_param_info, StereoKitC), Cvoid, (material_t, Int32, Ptr{Ptr{Cchar}}, Ptr{material_param_}), material, index, out_name, out_type)
end

function material_get_param_count(material)
    ccall((:material_get_param_count, StereoKitC), Cint, (material_t,), material)
end

function material_set_shader(material, shader)
    ccall((:material_set_shader, StereoKitC), Cvoid, (material_t, shader_t), material, shader)
end

function material_get_shader(material)
    ccall((:material_get_shader, StereoKitC), shader_t, (material_t,), material)
end

function material_buffer_create(register_slot, size)
    ccall((:material_buffer_create, StereoKitC), material_buffer_t, (Int32, Int32), register_slot, size)
end

function material_buffer_set_data(buffer, data)
    ccall((:material_buffer_set_data, StereoKitC), Cvoid, (material_buffer_t, Ptr{Cvoid}), buffer, data)
end

function material_buffer_release(buffer)
    ccall((:material_buffer_release, StereoKitC), Cvoid, (material_buffer_t,), buffer)
end

@cenum text_fit_::UInt32 begin
    text_fit_wrap = 1
    text_fit_clip = 2
    text_fit_squeeze = 4
    text_fit_exact = 8
    text_fit_overflow = 16
end

@cenum text_align_::UInt32 begin
    text_align_x_left = 1
    text_align_y_top = 2
    text_align_x_center = 4
    text_align_y_center = 8
    text_align_x_right = 16
    text_align_y_bottom = 32
    text_align_center = 12
    text_align_center_left = 9
    text_align_center_right = 24
    text_align_top_center = 6
    text_align_top_left = 3
    text_align_top_right = 18
    text_align_bottom_center = 36
    text_align_bottom_left = 33
    text_align_bottom_right = 48
end

const text_style_t = UInt32

function text_make_style(font, character_height, color_gamma)
    ccall((:text_make_style, StereoKitC), text_style_t, (font_t, Cfloat, color128), font, character_height, color_gamma)
end

function text_make_style_shader(font, character_height, shader, color_gamma)
    ccall((:text_make_style_shader, StereoKitC), text_style_t, (font_t, Cfloat, shader_t, color128), font, character_height, shader, color_gamma)
end

function text_make_style_mat(font, character_height, material, color_gamma)
    ccall((:text_make_style_mat, StereoKitC), text_style_t, (font_t, Cfloat, material_t, color128), font, character_height, material, color_gamma)
end

function text_add_at(text_utf8, transform, style, position, align, off_x, off_y, off_z)
    ccall((:text_add_at, StereoKitC), Cvoid, (Ptr{Cchar}, Ptr{matrix}, text_style_t, text_align_, text_align_, Cfloat, Cfloat, Cfloat), text_utf8, transform, style, position, align, off_x, off_y, off_z)
end

function text_add_at_16(text_utf16, transform, style, position, align, off_x, off_y, off_z)
    ccall((:text_add_at_16, StereoKitC), Cvoid, (Ptr{char16_t}, Ptr{matrix}, text_style_t, text_align_, text_align_, Cfloat, Cfloat, Cfloat), text_utf16, transform, style, position, align, off_x, off_y, off_z)
end

function text_add_in(text_utf8, transform, size, fit, style, position, align, off_x, off_y, off_z)
    ccall((:text_add_in, StereoKitC), Cfloat, (Ptr{Cchar}, Ptr{matrix}, vec2, text_fit_, text_style_t, text_align_, text_align_, Cfloat, Cfloat, Cfloat), text_utf8, transform, size, fit, style, position, align, off_x, off_y, off_z)
end

function text_add_in_16(text_utf16, transform, size, fit, style, position, align, off_x, off_y, off_z)
    ccall((:text_add_in_16, StereoKitC), Cfloat, (Ptr{char16_t}, Ptr{matrix}, vec2, text_fit_, text_style_t, text_align_, text_align_, Cfloat, Cfloat, Cfloat), text_utf16, transform, size, fit, style, position, align, off_x, off_y, off_z)
end

function text_size(text_utf8, style)
    ccall((:text_size, StereoKitC), vec2, (Ptr{Cchar}, text_style_t), text_utf8, style)
end

function text_size_16(text_utf16, style)
    ccall((:text_size_16, StereoKitC), vec2, (Ptr{char16_t}, text_style_t), text_utf16, style)
end

function text_style_get_material(style)
    ccall((:text_style_get_material, StereoKitC), material_t, (text_style_t,), style)
end

function text_style_get_char_height(style)
    ccall((:text_style_get_char_height, StereoKitC), Cfloat, (text_style_t,), style)
end

@cenum solid_type_::UInt32 begin
    solid_type_normal = 0
    solid_type_immovable = 1
    solid_type_unaffected = 2
end

const solid_t = Ptr{Cvoid}

function solid_create(position, rotation, type)
    ccall((:solid_create, StereoKitC), solid_t, (Ptr{vec3}, Ptr{quat}, solid_type_), position, rotation, type)
end

function solid_release(solid)
    ccall((:solid_release, StereoKitC), Cvoid, (solid_t,), solid)
end

function solid_add_sphere(solid, diameter, kilograms, offset)
    ccall((:solid_add_sphere, StereoKitC), Cvoid, (solid_t, Cfloat, Cfloat, Ptr{vec3}), solid, diameter, kilograms, offset)
end

function solid_add_box(solid, dimensions, kilograms, offset)
    ccall((:solid_add_box, StereoKitC), Cvoid, (solid_t, Ptr{vec3}, Cfloat, Ptr{vec3}), solid, dimensions, kilograms, offset)
end

function solid_add_capsule(solid, diameter, height, kilograms, offset)
    ccall((:solid_add_capsule, StereoKitC), Cvoid, (solid_t, Cfloat, Cfloat, Cfloat, Ptr{vec3}), solid, diameter, height, kilograms, offset)
end

function solid_set_type(solid, type)
    ccall((:solid_set_type, StereoKitC), Cvoid, (solid_t, solid_type_), solid, type)
end

function solid_set_enabled(solid, enabled)
    ccall((:solid_set_enabled, StereoKitC), Cvoid, (solid_t, bool32_t), solid, enabled)
end

function solid_move(solid, position, rotation)
    ccall((:solid_move, StereoKitC), Cvoid, (solid_t, Ptr{vec3}, Ptr{quat}), solid, position, rotation)
end

function solid_teleport(solid, position, rotation)
    ccall((:solid_teleport, StereoKitC), Cvoid, (solid_t, Ptr{vec3}, Ptr{quat}), solid, position, rotation)
end

function solid_set_velocity(solid, meters_per_second)
    ccall((:solid_set_velocity, StereoKitC), Cvoid, (solid_t, Ptr{vec3}), solid, meters_per_second)
end

function solid_set_velocity_ang(solid, radians_per_second)
    ccall((:solid_set_velocity_ang, StereoKitC), Cvoid, (solid_t, Ptr{vec3}), solid, radians_per_second)
end

function solid_get_pose(solid, out_pose)
    ccall((:solid_get_pose, StereoKitC), Cvoid, (solid_t, Ptr{pose_t}), solid, out_pose)
end

const model_node_id = Int32

@cenum anim_mode_::UInt32 begin
    anim_mode_loop = 0
    anim_mode_once = 1
    anim_mode_manual = 2
end

function model_find(id)
    ccall((:model_find, StereoKitC), model_t, (Ptr{Cchar},), id)
end

function model_copy(model)
    ccall((:model_copy, StereoKitC), model_t, (model_t,), model)
end

# no prototype is found for this function at stereokit.h:732:22, please use with caution
function model_create()
    ccall((:model_create, StereoKitC), model_t, ())
end

function model_create_mesh(mesh, material)
    ccall((:model_create_mesh, StereoKitC), model_t, (mesh_t, material_t), mesh, material)
end

function model_create_mem(filename, data, data_size, shader)
    ccall((:model_create_mem, StereoKitC), model_t, (Ptr{Cchar}, Ptr{Cvoid}, Csize_t, shader_t), filename, data, data_size, shader)
end

function model_create_file(filename, shader)
    ccall((:model_create_file, StereoKitC), model_t, (Ptr{Cchar}, shader_t), filename, shader)
end

function model_set_id(model, id)
    ccall((:model_set_id, StereoKitC), Cvoid, (model_t, Ptr{Cchar}), model, id)
end

function model_addref(model)
    ccall((:model_addref, StereoKitC), Cvoid, (model_t,), model)
end

function model_release(model)
    ccall((:model_release, StereoKitC), Cvoid, (model_t,), model)
end

function model_draw(model, transform, color_linear, layer)
    ccall((:model_draw, StereoKitC), Cvoid, (model_t, matrix, color128, render_layer_), model, transform, color_linear, layer)
end

function model_recalculate_bounds(model)
    ccall((:model_recalculate_bounds, StereoKitC), Cvoid, (model_t,), model)
end

function model_set_bounds(model, bounds)
    ccall((:model_set_bounds, StereoKitC), Cvoid, (model_t, Ptr{bounds_t}), model, bounds)
end

function model_get_bounds(model)
    ccall((:model_get_bounds, StereoKitC), bounds_t, (model_t,), model)
end

function model_ray_intersect(model, model_space_ray, out_pt)
    ccall((:model_ray_intersect, StereoKitC), bool32_t, (model_t, ray_t, Ptr{ray_t}), model, model_space_ray, out_pt)
end

function model_step_anim(model)
    ccall((:model_step_anim, StereoKitC), Cvoid, (model_t,), model)
end

function model_play_anim(model, animation_name, mode)
    ccall((:model_play_anim, StereoKitC), bool32_t, (model_t, Ptr{Cchar}, anim_mode_), model, animation_name, mode)
end

function model_play_anim_idx(model, index, mode)
    ccall((:model_play_anim_idx, StereoKitC), Cvoid, (model_t, Int32, anim_mode_), model, index, mode)
end

function model_set_anim_time(model, time)
    ccall((:model_set_anim_time, StereoKitC), Cvoid, (model_t, Cfloat), model, time)
end

function model_set_anim_completion(model, percent)
    ccall((:model_set_anim_completion, StereoKitC), Cvoid, (model_t, Cfloat), model, percent)
end

function model_anim_find(model, animation_name)
    ccall((:model_anim_find, StereoKitC), Int32, (model_t, Ptr{Cchar}), model, animation_name)
end

function model_anim_count(model)
    ccall((:model_anim_count, StereoKitC), Int32, (model_t,), model)
end

function model_anim_active(model)
    ccall((:model_anim_active, StereoKitC), Int32, (model_t,), model)
end

function model_anim_active_mode(model)
    ccall((:model_anim_active_mode, StereoKitC), anim_mode_, (model_t,), model)
end

function model_anim_active_time(model)
    ccall((:model_anim_active_time, StereoKitC), Cfloat, (model_t,), model)
end

function model_anim_active_completion(model)
    ccall((:model_anim_active_completion, StereoKitC), Cfloat, (model_t,), model)
end

function model_anim_get_name(model, index)
    ccall((:model_anim_get_name, StereoKitC), Ptr{Cchar}, (model_t, Int32), model, index)
end

function model_anim_get_duration(model, index)
    ccall((:model_anim_get_duration, StereoKitC), Cfloat, (model_t, Int32), model, index)
end

function model_get_name(model, subset)
    ccall((:model_get_name, StereoKitC), Ptr{Cchar}, (model_t, Int32), model, subset)
end

function model_get_material(model, subset)
    ccall((:model_get_material, StereoKitC), material_t, (model_t, Int32), model, subset)
end

function model_get_mesh(model, subset)
    ccall((:model_get_mesh, StereoKitC), mesh_t, (model_t, Int32), model, subset)
end

function model_get_transform(model, subset)
    ccall((:model_get_transform, StereoKitC), matrix, (model_t, Int32), model, subset)
end

function model_set_material(model, subset, material)
    ccall((:model_set_material, StereoKitC), Cvoid, (model_t, Int32, material_t), model, subset, material)
end

function model_set_mesh(model, subset, mesh)
    ccall((:model_set_mesh, StereoKitC), Cvoid, (model_t, Int32, mesh_t), model, subset, mesh)
end

function model_set_transform(model, subset, transform)
    ccall((:model_set_transform, StereoKitC), Cvoid, (model_t, Int32, Ptr{matrix}), model, subset, transform)
end

function model_remove_subset(model, subset)
    ccall((:model_remove_subset, StereoKitC), Cvoid, (model_t, Int32), model, subset)
end

function model_add_named_subset(model, name, mesh, material, transform)
    ccall((:model_add_named_subset, StereoKitC), Int32, (model_t, Ptr{Cchar}, mesh_t, material_t, Ptr{matrix}), model, name, mesh, material, transform)
end

function model_add_subset(model, mesh, material, transform)
    ccall((:model_add_subset, StereoKitC), Int32, (model_t, mesh_t, material_t, Ptr{matrix}), model, mesh, material, transform)
end

function model_add_subset_n(model, name, mesh, material, transform)
    ccall((:model_add_subset_n, StereoKitC), Int32, (model_t, Ptr{Cchar}, mesh_t, material_t, Ptr{matrix}), model, name, mesh, material, transform)
end

function model_subset_count(model)
    ccall((:model_subset_count, StereoKitC), Int32, (model_t,), model)
end

function model_node_add(model, name, model_transform, mesh, material, solid)
    ccall((:model_node_add, StereoKitC), model_node_id, (model_t, Ptr{Cchar}, matrix, mesh_t, material_t, bool32_t), model, name, model_transform, mesh, material, solid)
end

function model_node_add_child(model, parent, name, local_transform, mesh, material, solid)
    ccall((:model_node_add_child, StereoKitC), model_node_id, (model_t, model_node_id, Ptr{Cchar}, matrix, mesh_t, material_t, bool32_t), model, parent, name, local_transform, mesh, material, solid)
end

function model_node_find(model, name)
    ccall((:model_node_find, StereoKitC), model_node_id, (model_t, Ptr{Cchar}), model, name)
end

function model_node_sibling(model, node)
    ccall((:model_node_sibling, StereoKitC), model_node_id, (model_t, model_node_id), model, node)
end

function model_node_parent(model, node)
    ccall((:model_node_parent, StereoKitC), model_node_id, (model_t, model_node_id), model, node)
end

function model_node_child(model, node)
    ccall((:model_node_child, StereoKitC), model_node_id, (model_t, model_node_id), model, node)
end

function model_node_count(model)
    ccall((:model_node_count, StereoKitC), Int32, (model_t,), model)
end

function model_node_index(model, index)
    ccall((:model_node_index, StereoKitC), model_node_id, (model_t, Int32), model, index)
end

function model_node_visual_count(model)
    ccall((:model_node_visual_count, StereoKitC), Int32, (model_t,), model)
end

function model_node_visual_index(model, index)
    ccall((:model_node_visual_index, StereoKitC), model_node_id, (model_t, Int32), model, index)
end

function model_node_iterate(model, node)
    ccall((:model_node_iterate, StereoKitC), model_node_id, (model_t, model_node_id), model, node)
end

function model_node_get_root(model)
    ccall((:model_node_get_root, StereoKitC), model_node_id, (model_t,), model)
end

function model_node_get_name(model, node)
    ccall((:model_node_get_name, StereoKitC), Ptr{Cchar}, (model_t, model_node_id), model, node)
end

function model_node_get_solid(model, node)
    ccall((:model_node_get_solid, StereoKitC), bool32_t, (model_t, model_node_id), model, node)
end

function model_node_get_material(model, node)
    ccall((:model_node_get_material, StereoKitC), material_t, (model_t, model_node_id), model, node)
end

function model_node_get_mesh(model, node)
    ccall((:model_node_get_mesh, StereoKitC), mesh_t, (model_t, model_node_id), model, node)
end

function model_node_get_transform_model(model, node)
    ccall((:model_node_get_transform_model, StereoKitC), matrix, (model_t, model_node_id), model, node)
end

function model_node_get_transform_local(model, node)
    ccall((:model_node_get_transform_local, StereoKitC), matrix, (model_t, model_node_id), model, node)
end

function model_node_set_name(model, node, name)
    ccall((:model_node_set_name, StereoKitC), Cvoid, (model_t, model_node_id, Ptr{Cchar}), model, node, name)
end

function model_node_set_solid(model, node, solid)
    ccall((:model_node_set_solid, StereoKitC), Cvoid, (model_t, model_node_id, bool32_t), model, node, solid)
end

function model_node_set_material(model, node, material)
    ccall((:model_node_set_material, StereoKitC), Cvoid, (model_t, model_node_id, material_t), model, node, material)
end

function model_node_set_mesh(model, node, mesh)
    ccall((:model_node_set_mesh, StereoKitC), Cvoid, (model_t, model_node_id, mesh_t), model, node, mesh)
end

function model_node_set_transform_model(model, node, transform_model_space)
    ccall((:model_node_set_transform_model, StereoKitC), Cvoid, (model_t, model_node_id, matrix), model, node, transform_model_space)
end

function model_node_set_transform_local(model, node, transform_local_space)
    ccall((:model_node_set_transform_local, StereoKitC), Cvoid, (model_t, model_node_id, matrix), model, node, transform_local_space)
end

@cenum sprite_type_::UInt32 begin
    sprite_type_atlased = 0
    sprite_type_single = 1
end

function sprite_create(sprite, type, atlas_id)
    ccall((:sprite_create, StereoKitC), sprite_t, (tex_t, sprite_type_, Ptr{Cchar}), sprite, type, atlas_id)
end

function sprite_create_file(filename, type, atlas_id)
    ccall((:sprite_create_file, StereoKitC), sprite_t, (Ptr{Cchar}, sprite_type_, Ptr{Cchar}), filename, type, atlas_id)
end

function sprite_set_id(sprite, id)
    ccall((:sprite_set_id, StereoKitC), Cvoid, (sprite_t, Ptr{Cchar}), sprite, id)
end

function sprite_addref(sprite)
    ccall((:sprite_addref, StereoKitC), Cvoid, (sprite_t,), sprite)
end

function sprite_release(sprite)
    ccall((:sprite_release, StereoKitC), Cvoid, (sprite_t,), sprite)
end

function sprite_get_aspect(sprite)
    ccall((:sprite_get_aspect, StereoKitC), Cfloat, (sprite_t,), sprite)
end

function sprite_get_width(sprite)
    ccall((:sprite_get_width, StereoKitC), Int32, (sprite_t,), sprite)
end

function sprite_get_height(sprite)
    ccall((:sprite_get_height, StereoKitC), Int32, (sprite_t,), sprite)
end

function sprite_get_dimensions_normalized(sprite)
    ccall((:sprite_get_dimensions_normalized, StereoKitC), vec2, (sprite_t,), sprite)
end

function sprite_draw(sprite, transform, color)
    ccall((:sprite_draw, StereoKitC), Cvoid, (sprite_t, Ptr{matrix}, color32), sprite, transform, color)
end

struct line_point_t
    pt::vec3
    thickness::Cfloat
    color::color32
end

function line_add(start, _end, color_start, color_end, thickness)
    ccall((:line_add, StereoKitC), Cvoid, (vec3, vec3, color32, color32, Cfloat), start, _end, color_start, color_end, thickness)
end

function line_addv(start, _end)
    ccall((:line_addv, StereoKitC), Cvoid, (line_point_t, line_point_t), start, _end)
end

function line_add_axis(pose, size)
    ccall((:line_add_axis, StereoKitC), Cvoid, (pose_t, Cfloat), pose, size)
end

function line_add_list(points, count, color, thickness)
    ccall((:line_add_list, StereoKitC), Cvoid, (Ptr{vec3}, Int32, color32, Cfloat), points, count, color, thickness)
end

function line_add_listv(points, count)
    ccall((:line_add_listv, StereoKitC), Cvoid, (Ptr{line_point_t}, Int32), points, count)
end

@cenum render_clear_::UInt32 begin
    render_clear_none = 0
    render_clear_color = 1
    render_clear_depth = 2
    render_clear_all = 3
end

function render_set_clip(near_plane, far_plane)
    ccall((:render_set_clip, StereoKitC), Cvoid, (Cfloat, Cfloat), near_plane, far_plane)
end

function render_set_fov(field_of_view_degrees)
    ccall((:render_set_fov, StereoKitC), Cvoid, (Cfloat,), field_of_view_degrees)
end

# no prototype is found for this function at stereokit.h:842:30, please use with caution
function render_get_cam_root()
    ccall((:render_get_cam_root, StereoKitC), matrix, ())
end

function render_set_cam_root(cam_root)
    ccall((:render_set_cam_root, StereoKitC), Cvoid, (Ptr{matrix},), cam_root)
end

function render_set_skytex(sky_texture)
    ccall((:render_set_skytex, StereoKitC), Cvoid, (tex_t,), sky_texture)
end

# no prototype is found for this function at stereokit.h:845:30, please use with caution
function render_get_skytex()
    ccall((:render_get_skytex, StereoKitC), tex_t, ())
end

function render_set_skylight(light_info)
    ccall((:render_set_skylight, StereoKitC), Cvoid, (Ptr{spherical_harmonics_t},), light_info)
end

# no prototype is found for this function at stereokit.h:847:30, please use with caution
function render_get_skylight()
    ccall((:render_get_skylight, StereoKitC), spherical_harmonics_t, ())
end

function render_set_filter(layer_filter)
    ccall((:render_set_filter, StereoKitC), Cvoid, (render_layer_,), layer_filter)
end

# no prototype is found for this function at stereokit.h:849:30, please use with caution
function render_get_filter()
    ccall((:render_get_filter, StereoKitC), render_layer_, ())
end

function render_override_capture_filter(use_override_filter, layer_filter)
    ccall((:render_override_capture_filter, StereoKitC), Cvoid, (bool32_t, render_layer_), use_override_filter, layer_filter)
end

# no prototype is found for this function at stereokit.h:851:30, please use with caution
function render_get_capture_filter()
    ccall((:render_get_capture_filter, StereoKitC), render_layer_, ())
end

# no prototype is found for this function at stereokit.h:852:30, please use with caution
function render_has_capture_filter()
    ccall((:render_has_capture_filter, StereoKitC), bool32_t, ())
end

function render_set_clear_color(color_gamma)
    ccall((:render_set_clear_color, StereoKitC), Cvoid, (color128,), color_gamma)
end

function render_enable_skytex(show_sky)
    ccall((:render_enable_skytex, StereoKitC), Cvoid, (bool32_t,), show_sky)
end

# no prototype is found for this function at stereokit.h:855:30, please use with caution
function render_enabled_skytex()
    ccall((:render_enabled_skytex, StereoKitC), bool32_t, ())
end

function render_add_mesh(mesh, material, transform, color_linear, layer)
    ccall((:render_add_mesh, StereoKitC), Cvoid, (mesh_t, material_t, Ptr{matrix}, color128, render_layer_), mesh, material, transform, color_linear, layer)
end

function render_add_model(model, transform, color_linear, layer)
    ccall((:render_add_model, StereoKitC), Cvoid, (model_t, Ptr{matrix}, color128, render_layer_), model, transform, color_linear, layer)
end

function render_blit(to_rendertarget, material)
    ccall((:render_blit, StereoKitC), Cvoid, (tex_t, material_t), to_rendertarget, material)
end

function render_screenshot(file, from_viewpt, at, width, height, field_of_view_degrees)
    ccall((:render_screenshot, StereoKitC), Cvoid, (Ptr{Cchar}, vec3, vec3, Cint, Cint, Cfloat), file, from_viewpt, at, width, height, field_of_view_degrees)
end

function render_to(to_rendertarget, camera, projection, layer_filter, clear, viewport)
    ccall((:render_to, StereoKitC), Cvoid, (tex_t, Ptr{matrix}, Ptr{matrix}, render_layer_, render_clear_, rect_t), to_rendertarget, camera, projection, layer_filter, clear, viewport)
end

function render_get_device(device, context)
    ccall((:render_get_device, StereoKitC), Cvoid, (Ptr{Ptr{Cvoid}}, Ptr{Ptr{Cvoid}}), device, context)
end

function hierarchy_push(transform)
    ccall((:hierarchy_push, StereoKitC), Cvoid, (Ptr{matrix},), transform)
end

# no prototype is found for this function at stereokit.h:866:22, please use with caution
function hierarchy_pop()
    ccall((:hierarchy_pop, StereoKitC), Cvoid, ())
end

function hierarchy_set_enabled(enabled)
    ccall((:hierarchy_set_enabled, StereoKitC), Cvoid, (bool32_t,), enabled)
end

# no prototype is found for this function at stereokit.h:868:22, please use with caution
function hierarchy_is_enabled()
    ccall((:hierarchy_is_enabled, StereoKitC), bool32_t, ())
end

# no prototype is found for this function at stereokit.h:869:22, please use with caution
function hierarchy_to_world()
    ccall((:hierarchy_to_world, StereoKitC), Ptr{matrix}, ())
end

# no prototype is found for this function at stereokit.h:870:22, please use with caution
function hierarchy_to_local()
    ccall((:hierarchy_to_local, StereoKitC), Ptr{matrix}, ())
end

function hierarchy_to_local_point(world_pt)
    ccall((:hierarchy_to_local_point, StereoKitC), vec3, (Ptr{vec3},), world_pt)
end

function hierarchy_to_local_direction(world_dir)
    ccall((:hierarchy_to_local_direction, StereoKitC), vec3, (Ptr{vec3},), world_dir)
end

function hierarchy_to_local_rotation(world_orientation)
    ccall((:hierarchy_to_local_rotation, StereoKitC), quat, (Ptr{quat},), world_orientation)
end

function hierarchy_to_local_pose(world_pose)
    ccall((:hierarchy_to_local_pose, StereoKitC), pose_t, (Ptr{pose_t},), world_pose)
end

function hierarchy_to_world_point(local_pt)
    ccall((:hierarchy_to_world_point, StereoKitC), vec3, (Ptr{vec3},), local_pt)
end

function hierarchy_to_world_direction(local_dir)
    ccall((:hierarchy_to_world_direction, StereoKitC), vec3, (Ptr{vec3},), local_dir)
end

function hierarchy_to_world_rotation(local_orientation)
    ccall((:hierarchy_to_world_rotation, StereoKitC), quat, (Ptr{quat},), local_orientation)
end

function hierarchy_to_world_pose(local_pose)
    ccall((:hierarchy_to_world_pose, StereoKitC), pose_t, (Ptr{pose_t},), local_pose)
end

struct sound_inst_t
    _id::UInt16
    _slot::Int16
end

function sound_find(id)
    ccall((:sound_find, StereoKitC), sound_t, (Ptr{Cchar},), id)
end

function sound_set_id(sound, id)
    ccall((:sound_set_id, StereoKitC), Cvoid, (sound_t, Ptr{Cchar}), sound, id)
end

function sound_create(filename)
    ccall((:sound_create, StereoKitC), sound_t, (Ptr{Cchar},), filename)
end

function sound_create_stream(buffer_duration)
    ccall((:sound_create_stream, StereoKitC), sound_t, (Cfloat,), buffer_duration)
end

function sound_generate(_function, duration)
    ccall((:sound_generate, StereoKitC), sound_t, (Ptr{Cvoid}, Cfloat), _function, duration)
end

function sound_write_samples(sound, samples, sample_count)
    ccall((:sound_write_samples, StereoKitC), Cvoid, (sound_t, Ptr{Cfloat}, uint64_t), sound, samples, sample_count)
end

function sound_read_samples(sound, out_samples, sample_count)
    ccall((:sound_read_samples, StereoKitC), uint64_t, (sound_t, Ptr{Cfloat}, uint64_t), sound, out_samples, sample_count)
end

function sound_unread_samples(sound)
    ccall((:sound_unread_samples, StereoKitC), uint64_t, (sound_t,), sound)
end

function sound_total_samples(sound)
    ccall((:sound_total_samples, StereoKitC), uint64_t, (sound_t,), sound)
end

function sound_cursor_samples(sound)
    ccall((:sound_cursor_samples, StereoKitC), uint64_t, (sound_t,), sound)
end

function sound_play(sound, at, volume)
    ccall((:sound_play, StereoKitC), sound_inst_t, (sound_t, vec3, Cfloat), sound, at, volume)
end

function sound_duration(sound)
    ccall((:sound_duration, StereoKitC), Cfloat, (sound_t,), sound)
end

function sound_addref(sound)
    ccall((:sound_addref, StereoKitC), Cvoid, (sound_t,), sound)
end

function sound_release(sound)
    ccall((:sound_release, StereoKitC), Cvoid, (sound_t,), sound)
end

function sound_inst_stop(sound_inst)
    ccall((:sound_inst_stop, StereoKitC), Cvoid, (sound_inst_t,), sound_inst)
end

function sound_inst_is_playing(sound_inst)
    ccall((:sound_inst_is_playing, StereoKitC), bool32_t, (sound_inst_t,), sound_inst)
end

function sound_inst_set_pos(sound_inst, pos)
    ccall((:sound_inst_set_pos, StereoKitC), Cvoid, (sound_inst_t, vec3), sound_inst, pos)
end

function sound_inst_get_pos(sound_inst)
    ccall((:sound_inst_get_pos, StereoKitC), vec3, (sound_inst_t,), sound_inst)
end

function sound_inst_set_volume(sound_inst, volume)
    ccall((:sound_inst_set_volume, StereoKitC), Cvoid, (sound_inst_t, Cfloat), sound_inst, volume)
end

function sound_inst_get_volume(sound_inst)
    ccall((:sound_inst_get_volume, StereoKitC), Cfloat, (sound_inst_t,), sound_inst)
end

# no prototype is found for this function at stereokit.h:911:21, please use with caution
function mic_device_count()
    ccall((:mic_device_count, StereoKitC), Int32, ())
end

function mic_device_name(index)
    ccall((:mic_device_name, StereoKitC), Ptr{Cchar}, (Int32,), index)
end

function mic_start(device_name)
    ccall((:mic_start, StereoKitC), bool32_t, (Ptr{Cchar},), device_name)
end

# no prototype is found for this function at stereokit.h:914:21, please use with caution
function mic_stop()
    ccall((:mic_stop, StereoKitC), Cvoid, ())
end

# no prototype is found for this function at stereokit.h:915:21, please use with caution
function mic_get_stream()
    ccall((:mic_get_stream, StereoKitC), sound_t, ())
end

# no prototype is found for this function at stereokit.h:916:21, please use with caution
function mic_is_recording()
    ccall((:mic_is_recording, StereoKitC), bool32_t, ())
end

struct file_filter_t
    ext::NTuple{32, Cchar}
end

@cenum picker_mode_::UInt32 begin
    picker_mode_open = 0
    picker_mode_save = 1
end

function platform_file_picker(mode, callback_data, on_confirm, filters, filter_count)
    ccall((:platform_file_picker, StereoKitC), Cvoid, (picker_mode_, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{file_filter_t}, Int32), mode, callback_data, on_confirm, filters, filter_count)
end

# no prototype is found for this function at stereokit.h:930:17, please use with caution
function platform_file_picker_close()
    ccall((:platform_file_picker_close, StereoKitC), Cvoid, ())
end

# no prototype is found for this function at stereokit.h:931:17, please use with caution
function platform_file_picker_visible()
    ccall((:platform_file_picker_visible, StereoKitC), bool32_t, ())
end

function platform_read_file(filename, out_data, out_size)
    ccall((:platform_read_file, StereoKitC), bool32_t, (Ptr{Cchar}, Ptr{Ptr{Cvoid}}, Ptr{Csize_t}), filename, out_data, out_size)
end

function platform_write_file(filename, data, size)
    ccall((:platform_write_file, StereoKitC), bool32_t, (Ptr{Cchar}, Ptr{Cvoid}, Csize_t), filename, data, size)
end

@cenum input_source_::UInt32 begin
    input_source_any = 2147483647
    input_source_hand = 1
    input_source_hand_left = 2
    input_source_hand_right = 4
    input_source_gaze = 16
    input_source_gaze_head = 32
    input_source_gaze_eyes = 64
    input_source_gaze_cursor = 128
    input_source_can_press = 256
end

@cenum handed_::UInt32 begin
    handed_left = 0
    handed_right = 1
    handed_max = 2
end

@cenum button_state_::UInt32 begin
    button_state_inactive = 0
    button_state_active = 1
    button_state_just_inactive = 2
    button_state_just_active = 4
    button_state_changed = 6
end

@cenum track_state_::UInt32 begin
    track_state_lost = 0
    track_state_inferred = 1
    track_state_known = 2
end

struct pointer_t
    source::input_source_
    tracked::button_state_
    state::button_state_
    ray::ray_t
    orientation::quat
end

struct hand_joint_t
    position::vec3
    orientation::quat
    radius::Cfloat
end

struct hand_t
    fingers::NTuple{5, NTuple{5, hand_joint_t}}
    wrist::pose_t
    palm::pose_t
    pinch_pt::vec3
    handedness::handed_
    tracked_state::button_state_
    pinch_state::button_state_
    grip_state::button_state_
    size::Cfloat
    pinch_activation::Cfloat
    grip_activation::Cfloat
end

struct controller_t
    pose::pose_t
    aim::pose_t
    tracked::button_state_
    tracked_pos::track_state_
    tracked_rot::track_state_
    stick_click::button_state_
    x1::button_state_
    x2::button_state_
    trigger::Cfloat
    grip::Cfloat
    stick::vec2
end

struct mouse_t
    available::bool32_t
    pos::vec2
    pos_change::vec2
    scroll::Cfloat
    scroll_change::Cfloat
end

@cenum key_::UInt32 begin
    key_none = 0
    key_mouse_left = 1
    key_mouse_right = 2
    key_mouse_center = 4
    key_mouse_forward = 5
    key_mouse_back = 6
    key_backspace = 8
    key_tab = 9
    key_return = 13
    key_shift = 16
    key_ctrl = 17
    key_alt = 18
    key_caps_lock = 20
    key_esc = 27
    key_space = 32
    key_end = 35
    key_home = 36
    key_left = 37
    key_right = 39
    key_up = 38
    key_down = 40
    key_page_up = 33
    key_page_down = 34
    key_printscreen = 42
    key_insert = 45
    key_del = 46
    key_0 = 48
    key_1 = 49
    key_2 = 50
    key_3 = 51
    key_4 = 52
    key_5 = 53
    key_6 = 54
    key_7 = 55
    key_8 = 56
    key_9 = 57
    key_a = 65
    key_b = 66
    key_c = 67
    key_d = 68
    key_e = 69
    key_f = 70
    key_g = 71
    key_h = 72
    key_i = 73
    key_j = 74
    key_k = 75
    key_l = 76
    key_m = 77
    key_n = 78
    key_o = 79
    key_p = 80
    key_q = 81
    key_r = 82
    key_s = 83
    key_t = 84
    key_u = 85
    key_v = 86
    key_w = 87
    key_x = 88
    key_y = 89
    key_z = 90
    key_comma = 188
    key_period = 190
    key_slash_fwd = 191
    key_slash_back = 220
    key_semicolon = 186
    key_apostrophe = 222
    key_bracket_open = 219
    key_bracket_close = 221
    key_minus = 189
    key_equals = 187
    key_backtick = 192
    key_lcmd = 91
    key_rcmd = 92
    key_num0 = 96
    key_num1 = 97
    key_num2 = 98
    key_num3 = 99
    key_num4 = 100
    key_num5 = 101
    key_num6 = 102
    key_num7 = 103
    key_num8 = 104
    key_num9 = 105
    key_multiply = 106
    key_add = 107
    key_subtract = 109
    key_decimal = 110
    key_divide = 111
    key_f1 = 112
    key_f2 = 113
    key_f3 = 114
    key_f4 = 115
    key_f5 = 116
    key_f6 = 117
    key_f7 = 118
    key_f8 = 119
    key_f9 = 120
    key_f10 = 121
    key_f11 = 122
    key_f12 = 123
    key_MAX = 255
end

function input_pointer_count(filter)
    ccall((:input_pointer_count, StereoKitC), Cint, (input_source_,), filter)
end

function input_pointer(index, filter)
    ccall((:input_pointer, StereoKitC), pointer_t, (Int32, input_source_), index, filter)
end

function input_hand(hand)
    ccall((:input_hand, StereoKitC), Ptr{hand_t}, (handed_,), hand)
end

function input_hand_override(hand, hand_joints)
    ccall((:input_hand_override, StereoKitC), Cvoid, (handed_, Ptr{hand_joint_t}), hand, hand_joints)
end

function input_controller(hand)
    ccall((:input_controller, StereoKitC), Ptr{controller_t}, (handed_,), hand)
end

# no prototype is found for this function at stereokit.h:1050:30, please use with caution
function input_controller_menu()
    ccall((:input_controller_menu, StereoKitC), button_state_, ())
end

# no prototype is found for this function at stereokit.h:1051:30, please use with caution
function input_head()
    ccall((:input_head, StereoKitC), Ptr{pose_t}, ())
end

# no prototype is found for this function at stereokit.h:1052:30, please use with caution
function input_eyes()
    ccall((:input_eyes, StereoKitC), Ptr{pose_t}, ())
end

# no prototype is found for this function at stereokit.h:1053:30, please use with caution
function input_eyes_tracked()
    ccall((:input_eyes_tracked, StereoKitC), button_state_, ())
end

# no prototype is found for this function at stereokit.h:1054:30, please use with caution
function input_mouse()
    ccall((:input_mouse, StereoKitC), Ptr{mouse_t}, ())
end

function input_key(key)
    ccall((:input_key, StereoKitC), button_state_, (key_,), key)
end

# no prototype is found for this function at stereokit.h:1056:30, please use with caution
function input_text_consume()
    ccall((:input_text_consume, StereoKitC), char32_t, ())
end

# no prototype is found for this function at stereokit.h:1057:30, please use with caution
function input_text_reset()
    ccall((:input_text_reset, StereoKitC), Cvoid, ())
end

function input_hand_visible(hand, visible)
    ccall((:input_hand_visible, StereoKitC), Cvoid, (handed_, bool32_t), hand, visible)
end

function input_hand_solid(hand, solid)
    ccall((:input_hand_solid, StereoKitC), Cvoid, (handed_, bool32_t), hand, solid)
end

function input_hand_material(hand, material)
    ccall((:input_hand_material, StereoKitC), Cvoid, (handed_, material_t), hand, material)
end

function input_subscribe(source, event, event_callback)
    ccall((:input_subscribe, StereoKitC), Cvoid, (input_source_, button_state_, Ptr{Cvoid}), source, event, event_callback)
end

function input_unsubscribe(source, event, event_callback)
    ccall((:input_unsubscribe, StereoKitC), Cvoid, (input_source_, button_state_, Ptr{Cvoid}), source, event, event_callback)
end

function input_fire_event(source, event, pointer)
    ccall((:input_fire_event, StereoKitC), Cvoid, (input_source_, button_state_, Ptr{pointer_t}), source, event, pointer)
end

# no prototype is found for this function at stereokit.h:1068:19, please use with caution
function world_has_bounds()
    ccall((:world_has_bounds, StereoKitC), bool32_t, ())
end

# no prototype is found for this function at stereokit.h:1069:19, please use with caution
function world_get_bounds_size()
    ccall((:world_get_bounds_size, StereoKitC), vec2, ())
end

# no prototype is found for this function at stereokit.h:1070:19, please use with caution
function world_get_bounds_pose()
    ccall((:world_get_bounds_pose, StereoKitC), pose_t, ())
end

function world_from_spatial_graph(spatial_graph_node_id, dynamic, qpc_time)
    ccall((:world_from_spatial_graph, StereoKitC), pose_t, (Ptr{UInt8}, bool32_t, Int64), spatial_graph_node_id, dynamic, qpc_time)
end

function world_from_perception_anchor(perception_spatial_anchor)
    ccall((:world_from_perception_anchor, StereoKitC), pose_t, (Ptr{Cvoid},), perception_spatial_anchor)
end

function world_try_from_spatial_graph(spatial_graph_node_id, dynamic, qpc_time, out_pose)
    ccall((:world_try_from_spatial_graph, StereoKitC), bool32_t, (Ptr{UInt8}, bool32_t, Int64, Ptr{pose_t}), spatial_graph_node_id, dynamic, qpc_time, out_pose)
end

function world_try_from_perception_anchor(perception_spatial_anchor, out_pose)
    ccall((:world_try_from_perception_anchor, StereoKitC), bool32_t, (Ptr{Cvoid}, Ptr{pose_t}), perception_spatial_anchor, out_pose)
end

function world_raycast(ray, out_intersection)
    ccall((:world_raycast, StereoKitC), bool32_t, (ray_t, Ptr{ray_t}), ray, out_intersection)
end

function world_set_occlusion_enabled(enabled)
    ccall((:world_set_occlusion_enabled, StereoKitC), Cvoid, (bool32_t,), enabled)
end

# no prototype is found for this function at stereokit.h:1077:19, please use with caution
function world_get_occlusion_enabled()
    ccall((:world_get_occlusion_enabled, StereoKitC), bool32_t, ())
end

function world_set_raycast_enabled(enabled)
    ccall((:world_set_raycast_enabled, StereoKitC), Cvoid, (bool32_t,), enabled)
end

# no prototype is found for this function at stereokit.h:1079:19, please use with caution
function world_get_raycast_enabled()
    ccall((:world_get_raycast_enabled, StereoKitC), bool32_t, ())
end

function world_set_occlusion_material(material)
    ccall((:world_set_occlusion_material, StereoKitC), Cvoid, (material_t,), material)
end

# no prototype is found for this function at stereokit.h:1081:19, please use with caution
function world_get_occlusion_material()
    ccall((:world_get_occlusion_material, StereoKitC), material_t, ())
end

@cenum log_colors_::UInt32 begin
    log_colors_ansi = 0
    log_colors_none = 1
end

function log_diag(text)
    ccall((:log_diag, StereoKitC), Cvoid, (Ptr{Cchar},), text)
end

function log_info(text)
    ccall((:log_info, StereoKitC), Cvoid, (Ptr{Cchar},), text)
end

function log_warn(text)
    ccall((:log_warn, StereoKitC), Cvoid, (Ptr{Cchar},), text)
end

function log_err(text)
    ccall((:log_err, StereoKitC), Cvoid, (Ptr{Cchar},), text)
end

function log_write(level, text)
    ccall((:log_write, StereoKitC), Cvoid, (log_, Ptr{Cchar}), level, text)
end

function log_set_filter(level)
    ccall((:log_set_filter, StereoKitC), Cvoid, (log_,), level)
end

function log_set_colors(colors)
    ccall((:log_set_colors, StereoKitC), Cvoid, (log_colors_,), colors)
end

function log_subscribe(on_log)
    ccall((:log_subscribe, StereoKitC), Cvoid, (Ptr{Cvoid},), on_log)
end

function log_unsubscribe(on_log)
    ccall((:log_unsubscribe, StereoKitC), Cvoid, (Ptr{Cvoid},), on_log)
end

function assets_releaseref_threadsafe(asset)
    ccall((:assets_releaseref_threadsafe, StereoKitC), Cvoid, (Ptr{Cvoid},), asset)
end

@cenum ui_move_::UInt32 begin
    ui_move_exact = 0
    ui_move_face_user = 1
    ui_move_pos_only = 2
end

@cenum ui_win_::UInt32 begin
    ui_win_empty = 0
    ui_win_head = 1
    ui_win_body = 2
    ui_win_normal = 3
end

@cenum ui_confirm_::UInt32 begin
    ui_confirm_push = 0
    ui_confirm_pinch = 1
    ui_confirm_variable_pinch = 2
end

@cenum ui_vis_::UInt32 begin
    ui_vis_none = 0
    ui_vis_default = 1
    ui_vis_button = 2
    ui_vis_toggle = 3
    ui_vis_input = 4
    ui_vis_handle = 5
    ui_vis_window_body = 6
    ui_vis_window_body_only = 7
    ui_vis_window_head = 8
    ui_vis_window_head_only = 9
    ui_vis_max = 10
end

struct ui_settings_t
    padding::Cfloat
    gutter::Cfloat
    depth::Cfloat
    backplate_depth::Cfloat
    backplate_border::Cfloat
end

function ui_quadrant_size_verts(ref_vertices, vertex_count, overflow_percent)
    ccall((:ui_quadrant_size_verts, StereoKitC), Cvoid, (Ptr{vert_t}, Int32, Cfloat), ref_vertices, vertex_count, overflow_percent)
end

function ui_quadrant_size_mesh(ref_mesh, overflow_percent)
    ccall((:ui_quadrant_size_mesh, StereoKitC), Cvoid, (mesh_t, Cfloat), ref_mesh, overflow_percent)
end

function ui_show_volumes(show)
    ccall((:ui_show_volumes, StereoKitC), Cvoid, (bool32_t,), show)
end

function ui_enable_far_interact(enable)
    ccall((:ui_enable_far_interact, StereoKitC), Cvoid, (bool32_t,), enable)
end

# no prototype is found for this function at stereokit_ui.h:54:17, please use with caution
function ui_far_interact_enabled()
    ccall((:ui_far_interact_enabled, StereoKitC), bool32_t, ())
end

function ui_settings(settings)
    ccall((:ui_settings, StereoKitC), Cvoid, (ui_settings_t,), settings)
end

function ui_set_color(color)
    ccall((:ui_set_color, StereoKitC), Cvoid, (color128,), color)
end

function ui_set_element_visual(element_visual, mesh, material)
    ccall((:ui_set_element_visual, StereoKitC), Cvoid, (ui_vis_, mesh_t, material_t), element_visual, mesh, material)
end

function ui_push_text_style(style)
    ccall((:ui_push_text_style, StereoKitC), Cvoid, (text_style_t,), style)
end

# no prototype is found for this function at stereokit_ui.h:59:17, please use with caution
function ui_pop_text_style()
    ccall((:ui_pop_text_style, StereoKitC), Cvoid, ())
end

function ui_layout_area(start, dimensions)
    ccall((:ui_layout_area, StereoKitC), Cvoid, (vec3, vec2), start, dimensions)
end

# no prototype is found for this function at stereokit_ui.h:62:17, please use with caution
function ui_layout_remaining()
    ccall((:ui_layout_remaining, StereoKitC), vec2, ())
end

# no prototype is found for this function at stereokit_ui.h:63:17, please use with caution
function ui_layout_at()
    ccall((:ui_layout_at, StereoKitC), vec3, ())
end

# no prototype is found for this function at stereokit_ui.h:64:17, please use with caution
function ui_layout_last()
    ccall((:ui_layout_last, StereoKitC), bounds_t, ())
end

function ui_layout_reserve(size, add_padding, depth)
    ccall((:ui_layout_reserve, StereoKitC), bounds_t, (vec2, bool32_t, Cfloat), size, add_padding, depth)
end

function ui_push_surface(surface_pose, layout_start, layout_dimensions)
    ccall((:ui_push_surface, StereoKitC), Cvoid, (pose_t, vec3, vec2), surface_pose, layout_start, layout_dimensions)
end

# no prototype is found for this function at stereokit_ui.h:68:17, please use with caution
function ui_pop_surface()
    ccall((:ui_pop_surface, StereoKitC), Cvoid, ())
end

# no prototype is found for this function at stereokit_ui.h:69:17, please use with caution
function ui_area_remaining()
    ccall((:ui_area_remaining, StereoKitC), vec2, ())
end

# no prototype is found for this function at stereokit_ui.h:70:17, please use with caution
function ui_nextline()
    ccall((:ui_nextline, StereoKitC), Cvoid, ())
end

# no prototype is found for this function at stereokit_ui.h:71:17, please use with caution
function ui_sameline()
    ccall((:ui_sameline, StereoKitC), Cvoid, ())
end

# no prototype is found for this function at stereokit_ui.h:72:17, please use with caution
function ui_line_height()
    ccall((:ui_line_height, StereoKitC), Cfloat, ())
end

function ui_space(space)
    ccall((:ui_space, StereoKitC), Cvoid, (Cfloat,), space)
end

function ui_push_id(id)
    ccall((:ui_push_id, StereoKitC), uint64_t, (Ptr{Cchar},), id)
end

function ui_push_id_16(id)
    ccall((:ui_push_id_16, StereoKitC), uint64_t, (Ptr{char16_t},), id)
end

function ui_push_idi(id)
    ccall((:ui_push_idi, StereoKitC), uint64_t, (Int32,), id)
end

# no prototype is found for this function at stereokit_ui.h:77:17, please use with caution
function ui_pop_id()
    ccall((:ui_pop_id, StereoKitC), Cvoid, ())
end

function ui_stack_hash(string)
    ccall((:ui_stack_hash, StereoKitC), uint64_t, (Ptr{Cchar},), string)
end

function ui_stack_hash_16(string)
    ccall((:ui_stack_hash_16, StereoKitC), uint64_t, (Ptr{char16_t},), string)
end

function ui_is_interacting(hand)
    ccall((:ui_is_interacting, StereoKitC), bool32_t, (handed_,), hand)
end

function ui_button_behavior(window_relative_pos, size, id, finger_offset, button_state, focus_state)
    ccall((:ui_button_behavior, StereoKitC), Cvoid, (vec3, vec2, uint64_t, Ptr{Cfloat}, Ptr{button_state_}, Ptr{button_state_}), window_relative_pos, size, id, finger_offset, button_state, focus_state)
end

function ui_model_at(model, start, size, color)
    ccall((:ui_model_at, StereoKitC), Cvoid, (model_t, vec3, vec3, color128), model, start, size, color)
end

function ui_volumei_at(id, bounds, interact_type, out_opt_hand, out_opt_focus_state)
    ccall((:ui_volumei_at, StereoKitC), button_state_, (Ptr{Cchar}, bounds_t, ui_confirm_, Ptr{handed_}, Ptr{button_state_}), id, bounds, interact_type, out_opt_hand, out_opt_focus_state)
end

function ui_volumei_at_16(id, bounds, interact_type, out_opt_hand, out_opt_focus_state)
    ccall((:ui_volumei_at_16, StereoKitC), button_state_, (Ptr{char16_t}, bounds_t, ui_confirm_, Ptr{handed_}, Ptr{button_state_}), id, bounds, interact_type, out_opt_hand, out_opt_focus_state)
end

function ui_volume_at(id, bounds)
    ccall((:ui_volume_at, StereoKitC), bool32_t, (Ptr{Cchar}, bounds_t), id, bounds)
end

function ui_volume_at_16(id, bounds)
    ccall((:ui_volume_at_16, StereoKitC), bool32_t, (Ptr{char16_t}, bounds_t), id, bounds)
end

function ui_interact_volume_at(bounds, out_hand)
    ccall((:ui_interact_volume_at, StereoKitC), button_state_, (bounds_t, Ptr{handed_}), bounds, out_hand)
end

function ui_button_at(text, window_relative_pos, size)
    ccall((:ui_button_at, StereoKitC), bool32_t, (Ptr{Cchar}, vec3, vec2), text, window_relative_pos, size)
end

function ui_button_at_16(text, window_relative_pos, size)
    ccall((:ui_button_at_16, StereoKitC), bool32_t, (Ptr{char16_t}, vec3, vec2), text, window_relative_pos, size)
end

function ui_button_round_at(text, image, window_relative_pos, diameter)
    ccall((:ui_button_round_at, StereoKitC), bool32_t, (Ptr{Cchar}, sprite_t, vec3, Cfloat), text, image, window_relative_pos, diameter)
end

function ui_button_round_at_16(text, image, window_relative_pos, diameter)
    ccall((:ui_button_round_at_16, StereoKitC), bool32_t, (Ptr{char16_t}, sprite_t, vec3, Cfloat), text, image, window_relative_pos, diameter)
end

function ui_toggle_at(text, pressed, window_relative_pos, size)
    ccall((:ui_toggle_at, StereoKitC), bool32_t, (Ptr{Cchar}, Ptr{bool32_t}, vec3, vec2), text, pressed, window_relative_pos, size)
end

function ui_toggle_at_16(text, pressed, window_relative_pos, size)
    ccall((:ui_toggle_at_16, StereoKitC), bool32_t, (Ptr{char16_t}, Ptr{bool32_t}, vec3, vec2), text, pressed, window_relative_pos, size)
end

function ui_hslider_at(id, value, min, max, step, window_relative_pos, size, confirm_method)
    ccall((:ui_hslider_at, StereoKitC), bool32_t, (Ptr{Cchar}, Ptr{Cfloat}, Cfloat, Cfloat, Cfloat, vec3, vec2, ui_confirm_), id, value, min, max, step, window_relative_pos, size, confirm_method)
end

function ui_hslider_at_16(id, value, min, max, step, window_relative_pos, size, confirm_method)
    ccall((:ui_hslider_at_16, StereoKitC), bool32_t, (Ptr{char16_t}, Ptr{Cfloat}, Cfloat, Cfloat, Cfloat, vec3, vec2, ui_confirm_), id, value, min, max, step, window_relative_pos, size, confirm_method)
end

function ui_hslider_at_f64(id, value, min, max, step, window_relative_pos, size, confirm_method)
    ccall((:ui_hslider_at_f64, StereoKitC), bool32_t, (Ptr{Cchar}, Ptr{Cdouble}, Cdouble, Cdouble, Cdouble, vec3, vec2, ui_confirm_), id, value, min, max, step, window_relative_pos, size, confirm_method)
end

function ui_hslider_at_f64_16(id, value, min, max, step, window_relative_pos, size, confirm_method)
    ccall((:ui_hslider_at_f64_16, StereoKitC), bool32_t, (Ptr{char16_t}, Ptr{Cdouble}, Cdouble, Cdouble, Cdouble, vec3, vec2, ui_confirm_), id, value, min, max, step, window_relative_pos, size, confirm_method)
end

# no prototype is found for this function at stereokit_ui.h:101:17, please use with caution
function ui_hseparator()
    ccall((:ui_hseparator, StereoKitC), Cvoid, ())
end

function ui_label(text, use_padding)
    ccall((:ui_label, StereoKitC), Cvoid, (Ptr{Cchar}, bool32_t), text, use_padding)
end

function ui_label_16(text, use_padding)
    ccall((:ui_label_16, StereoKitC), Cvoid, (Ptr{char16_t}, bool32_t), text, use_padding)
end

function ui_label_sz(text, size)
    ccall((:ui_label_sz, StereoKitC), Cvoid, (Ptr{Cchar}, vec2), text, size)
end

function ui_label_sz_16(text, size)
    ccall((:ui_label_sz_16, StereoKitC), Cvoid, (Ptr{char16_t}, vec2), text, size)
end

function ui_text(text, text_align)
    ccall((:ui_text, StereoKitC), Cvoid, (Ptr{Cchar}, text_align_), text, text_align)
end

function ui_text_16(text, text_align)
    ccall((:ui_text_16, StereoKitC), Cvoid, (Ptr{char16_t}, text_align_), text, text_align)
end

function ui_image(image, size)
    ccall((:ui_image, StereoKitC), Cvoid, (sprite_t, vec2), image, size)
end

function ui_button(text)
    ccall((:ui_button, StereoKitC), bool32_t, (Ptr{Cchar},), text)
end

function ui_button_16(text)
    ccall((:ui_button_16, StereoKitC), bool32_t, (Ptr{char16_t},), text)
end

function ui_button_sz(text, size)
    ccall((:ui_button_sz, StereoKitC), bool32_t, (Ptr{Cchar}, vec2), text, size)
end

function ui_button_sz_16(text, size)
    ccall((:ui_button_sz_16, StereoKitC), bool32_t, (Ptr{char16_t}, vec2), text, size)
end

function ui_button_round(id, image, diameter)
    ccall((:ui_button_round, StereoKitC), bool32_t, (Ptr{Cchar}, sprite_t, Cfloat), id, image, diameter)
end

function ui_button_round_16(id, image, diameter)
    ccall((:ui_button_round_16, StereoKitC), bool32_t, (Ptr{char16_t}, sprite_t, Cfloat), id, image, diameter)
end

function ui_toggle(text, pressed)
    ccall((:ui_toggle, StereoKitC), bool32_t, (Ptr{Cchar}, Ptr{bool32_t}), text, pressed)
end

function ui_toggle_16(text, pressed)
    ccall((:ui_toggle_16, StereoKitC), bool32_t, (Ptr{char16_t}, Ptr{bool32_t}), text, pressed)
end

function ui_toggle_sz(text, pressed, size)
    ccall((:ui_toggle_sz, StereoKitC), bool32_t, (Ptr{Cchar}, Ptr{bool32_t}, vec2), text, pressed, size)
end

function ui_toggle_sz_16(text, pressed, size)
    ccall((:ui_toggle_sz_16, StereoKitC), bool32_t, (Ptr{char16_t}, Ptr{bool32_t}, vec2), text, pressed, size)
end

function ui_model(model, ui_size, model_scale)
    ccall((:ui_model, StereoKitC), Cvoid, (model_t, vec2, Cfloat), model, ui_size, model_scale)
end

function ui_input(id, buffer, buffer_size, size)
    ccall((:ui_input, StereoKitC), bool32_t, (Ptr{Cchar}, Ptr{Cchar}, Int32, vec2), id, buffer, buffer_size, size)
end

function ui_input_16(id, buffer, buffer_size, size)
    ccall((:ui_input_16, StereoKitC), bool32_t, (Ptr{char16_t}, Ptr{char16_t}, Int32, vec2), id, buffer, buffer_size, size)
end

function ui_hslider(id, value, min, max, step, width, confirm_method)
    ccall((:ui_hslider, StereoKitC), bool32_t, (Ptr{Cchar}, Ptr{Cfloat}, Cfloat, Cfloat, Cfloat, Cfloat, ui_confirm_), id, value, min, max, step, width, confirm_method)
end

function ui_hslider_16(id, value, min, max, step, width, confirm_method)
    ccall((:ui_hslider_16, StereoKitC), bool32_t, (Ptr{char16_t}, Ptr{Cfloat}, Cfloat, Cfloat, Cfloat, Cfloat, ui_confirm_), id, value, min, max, step, width, confirm_method)
end

function ui_hslider_f64(id, value, min, max, step, width, confirm_method)
    ccall((:ui_hslider_f64, StereoKitC), bool32_t, (Ptr{Cchar}, Ptr{Cdouble}, Cdouble, Cdouble, Cdouble, Cfloat, ui_confirm_), id, value, min, max, step, width, confirm_method)
end

function ui_hslider_f64_16(id, value, min, max, step, width, confirm_method)
    ccall((:ui_hslider_f64_16, StereoKitC), bool32_t, (Ptr{char16_t}, Ptr{Cdouble}, Cdouble, Cdouble, Cdouble, Cfloat, ui_confirm_), id, value, min, max, step, width, confirm_method)
end

function ui_handle_begin(text, movement, handle, draw, move_type)
    ccall((:ui_handle_begin, StereoKitC), bool32_t, (Ptr{Cchar}, Ptr{pose_t}, bounds_t, bool32_t, ui_move_), text, movement, handle, draw, move_type)
end

function ui_handle_begin_16(text, movement, handle, draw, move_type)
    ccall((:ui_handle_begin_16, StereoKitC), bool32_t, (Ptr{char16_t}, Ptr{pose_t}, bounds_t, bool32_t, ui_move_), text, movement, handle, draw, move_type)
end

# no prototype is found for this function at stereokit_ui.h:129:17, please use with caution
function ui_handle_end()
    ccall((:ui_handle_end, StereoKitC), Cvoid, ())
end

function ui_window_begin(text, pose, size, window_type, move_type)
    ccall((:ui_window_begin, StereoKitC), Cvoid, (Ptr{Cchar}, Ptr{pose_t}, vec2, ui_win_, ui_move_), text, pose, size, window_type, move_type)
end

function ui_window_begin_16(text, pose, size, window_type, move_type)
    ccall((:ui_window_begin_16, StereoKitC), Cvoid, (Ptr{char16_t}, Ptr{pose_t}, vec2, ui_win_, ui_move_), text, pose, size, window_type, move_type)
end

# no prototype is found for this function at stereokit_ui.h:132:17, please use with caution
function ui_window_end()
    ccall((:ui_window_end, StereoKitC), Cvoid, ())
end

const SK_VERSION_MAJOR = 0

const SK_VERSION_MINOR = 3

const SK_VERSION_PATCH = 4

const SK_VERSION_PRERELEASE = 0

# Skipping MacroDefinition: SK_DEPRECATED __attribute__ ( ( deprecated ) )

const SK_VERSION_ID = ((uint64_t(SK_VERSION_MAJOR) << 48 | uint64_t(SK_VERSION_MINOR) << 32) | uint64_t(SK_VERSION_PATCH) << 16) | uint64_t(SK_VERSION_PRERELEASE)

# exports
const PREFIXES = ["sk_"]
for name in names(@__MODULE__; all=true), prefix in PREFIXES
    if startswith(string(name), prefix)
        @eval export $name
    end
end

end # module
