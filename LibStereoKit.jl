module LibStereoKit

using CEnum

# 
# Automatically generated file
#
using Pkg.Artifacts

StereoKitC = joinpath(artifact"StereoKitC", "win-x64\\native\\StereoKitC.dll")


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

@cenum app_focus_::UInt32 begin
    app_focus_active = 0
    app_focus_background = 1
    app_focus_hidden = 2
end

@cenum asset_state_::Int32 begin
    asset_state_error_unsupported = -3
    asset_state_error_not_found = -2
    asset_state_error = -1
    asset_state_none = 0
    asset_state_loading = 1
    asset_state_loaded_meta = 2
    asset_state_loaded = 3
end

@cenum memory_::UInt32 begin
    memory_reference = 0
    memory_copy = 1
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
    disable_unfocused_sleep::bool32_t
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
    @ccall StereoKitC.sk_init(settings::sk_settings_t)::bool32_t
end

function sk_set_window(window)
    @ccall StereoKitC.sk_set_window(window::Ptr{Cvoid})::Cvoid
end

function sk_set_window_xam(window)
    @ccall StereoKitC.sk_set_window_xam(window::Ptr{Cvoid})::Cvoid
end

# no prototype is found for this function at stereokit.h:317:22, please use with caution
function sk_shutdown()
    @ccall StereoKitC.sk_shutdown()::Cvoid
end

# no prototype is found for this function at stereokit.h:318:22, please use with caution
function sk_quit()
    @ccall StereoKitC.sk_quit()::Cvoid
end

function sk_step(app_update)
    @ccall StereoKitC.sk_step(app_update::Ptr{Cvoid})::bool32_t
end

function sk_run(app_update, app_shutdown)
    @ccall StereoKitC.sk_run(app_update::Ptr{Cvoid}, app_shutdown::Ptr{Cvoid})::Cvoid
end

function sk_run_data(app_update, update_data, app_shutdown, shutdown_data)
    @ccall StereoKitC.sk_run_data(app_update::Ptr{Cvoid}, update_data::Ptr{Cvoid}, app_shutdown::Ptr{Cvoid}, shutdown_data::Ptr{Cvoid})::Cvoid
end

# no prototype is found for this function at stereokit.h:322:22, please use with caution
function sk_active_display_mode()
    @ccall StereoKitC.sk_active_display_mode()::display_mode_
end

# no prototype is found for this function at stereokit.h:323:22, please use with caution
function sk_get_settings()
    @ccall StereoKitC.sk_get_settings()::sk_settings_t
end

# no prototype is found for this function at stereokit.h:324:22, please use with caution
function sk_system_info()
    @ccall StereoKitC.sk_system_info()::system_info_t
end

# no prototype is found for this function at stereokit.h:325:22, please use with caution
function sk_version_name()
    @ccall StereoKitC.sk_version_name()::Ptr{Cchar}
end

# no prototype is found for this function at stereokit.h:326:22, please use with caution
function sk_version_id()
    @ccall StereoKitC.sk_version_id()::uint64_t
end

# no prototype is found for this function at stereokit.h:327:22, please use with caution
function sk_app_focus()
    @ccall StereoKitC.sk_app_focus()::app_focus_
end

# no prototype is found for this function at stereokit.h:331:22, please use with caution
function time_getf_unscaled()
    @ccall StereoKitC.time_getf_unscaled()::Cfloat
end

# no prototype is found for this function at stereokit.h:332:22, please use with caution
function time_get_unscaled()
    @ccall StereoKitC.time_get_unscaled()::Cdouble
end

# no prototype is found for this function at stereokit.h:333:22, please use with caution
function time_getf()
    @ccall StereoKitC.time_getf()::Cfloat
end

# no prototype is found for this function at stereokit.h:334:22, please use with caution
function time_get()
    @ccall StereoKitC.time_get()::Cdouble
end

# no prototype is found for this function at stereokit.h:335:22, please use with caution
function time_elapsedf_unscaled()
    @ccall StereoKitC.time_elapsedf_unscaled()::Cfloat
end

# no prototype is found for this function at stereokit.h:336:22, please use with caution
function time_elapsed_unscaled()
    @ccall StereoKitC.time_elapsed_unscaled()::Cdouble
end

# no prototype is found for this function at stereokit.h:337:22, please use with caution
function time_elapsedf()
    @ccall StereoKitC.time_elapsedf()::Cfloat
end

# no prototype is found for this function at stereokit.h:338:22, please use with caution
function time_elapsed()
    @ccall StereoKitC.time_elapsed()::Cdouble
end

function time_scale(scale)
    @ccall StereoKitC.time_scale(scale::Cdouble)::Cvoid
end

function time_set_time(total_seconds, frame_elapsed_seconds)
    @ccall StereoKitC.time_set_time(total_seconds::Cdouble, frame_elapsed_seconds::Cdouble)::Cvoid
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
    @ccall StereoKitC.vec3_cross(a::Ptr{vec3}, b::Ptr{vec3})::vec3
end

function quat_difference(a, b)
    @ccall StereoKitC.quat_difference(a::Ptr{quat}, b::Ptr{quat})::quat
end

function quat_lookat(from, at)
    @ccall StereoKitC.quat_lookat(from::Ptr{vec3}, at::Ptr{vec3})::quat
end

function quat_lookat_up(from, at, up)
    @ccall StereoKitC.quat_lookat_up(from::Ptr{vec3}, at::Ptr{vec3}, up::Ptr{vec3})::quat
end

function quat_from_angles(pitch_x_deg, yaw_y_deg, roll_z_deg)
    @ccall StereoKitC.quat_from_angles(pitch_x_deg::Cfloat, yaw_y_deg::Cfloat, roll_z_deg::Cfloat)::quat
end

function quat_slerp(a, b, t)
    @ccall StereoKitC.quat_slerp(a::Ptr{quat}, b::Ptr{quat}, t::Cfloat)::quat
end

function quat_normalize(a)
    @ccall StereoKitC.quat_normalize(a::Ptr{quat})::quat
end

function quat_inverse(a)
    @ccall StereoKitC.quat_inverse(a::Ptr{quat})::quat
end

function quat_mul(a, b)
    @ccall StereoKitC.quat_mul(a::Ptr{quat}, b::Ptr{quat})::quat
end

function quat_mul_vec(a, b)
    @ccall StereoKitC.quat_mul_vec(a::Ptr{quat}, b::Ptr{vec3})::vec3
end

function pose_matrix(pose, scale)
    @ccall StereoKitC.pose_matrix(pose::Ptr{pose_t}, scale::vec3)::matrix
end

function pose_matrix_out(pose, out_result, scale)
    @ccall StereoKitC.pose_matrix_out(pose::Ptr{pose_t}, out_result::Ptr{matrix}, scale::vec3)::Cvoid
end

function matrix_inverse(a, out_matrix)
    @ccall StereoKitC.matrix_inverse(a::Ptr{matrix}, out_matrix::Ptr{matrix})::Cvoid
end

function matrix_invert(a)
    @ccall StereoKitC.matrix_invert(a::Ptr{matrix})::matrix
end

function matrix_mul(a, b, out_matrix)
    @ccall StereoKitC.matrix_mul(a::Ptr{matrix}, b::Ptr{matrix}, out_matrix::Ptr{matrix})::Cvoid
end

function matrix_mul_point(transform, point)
    @ccall StereoKitC.matrix_mul_point(transform::Ptr{matrix}, point::Ptr{vec3})::vec3
end

function matrix_mul_point4(transform, point)
    @ccall StereoKitC.matrix_mul_point4(transform::Ptr{matrix}, point::Ptr{vec4})::vec4
end

function matrix_mul_direction(transform, direction)
    @ccall StereoKitC.matrix_mul_direction(transform::Ptr{matrix}, direction::Ptr{vec3})::vec3
end

function matrix_mul_rotation(transform, orientation)
    @ccall StereoKitC.matrix_mul_rotation(transform::Ptr{matrix}, orientation::Ptr{quat})::quat
end

function matrix_mul_pose(transform, pose)
    @ccall StereoKitC.matrix_mul_pose(transform::Ptr{matrix}, pose::Ptr{pose_t})::pose_t
end

function matrix_transform_pt(transform, point)
    @ccall StereoKitC.matrix_transform_pt(transform::matrix, point::vec3)::vec3
end

function matrix_transform_pt4(transform, point)
    @ccall StereoKitC.matrix_transform_pt4(transform::matrix, point::vec4)::vec4
end

function matrix_transform_dir(transform, direction)
    @ccall StereoKitC.matrix_transform_dir(transform::matrix, direction::vec3)::vec3
end

function matrix_transform_ray(transform, ray)
    @ccall StereoKitC.matrix_transform_ray(transform::matrix, ray::ray_t)::ray_t
end

function matrix_transform_quat(transform, rotation)
    @ccall StereoKitC.matrix_transform_quat(transform::matrix, rotation::quat)::quat
end

function matrix_transform_pose(transform, pose)
    @ccall StereoKitC.matrix_transform_pose(transform::matrix, pose::pose_t)::pose_t
end

function matrix_to_angles(transform)
    @ccall StereoKitC.matrix_to_angles(transform::Ptr{matrix})::vec3
end

function matrix_trs(position, orientation, scale)
    @ccall StereoKitC.matrix_trs(position::Ptr{vec3}, orientation::Ptr{quat}, scale::Ptr{vec3})::matrix
end

function matrix_t(position)
    @ccall StereoKitC.matrix_t(position::vec3)::matrix
end

function matrix_r(orientation)
    @ccall StereoKitC.matrix_r(orientation::quat)::matrix
end

function matrix_s(scale)
    @ccall StereoKitC.matrix_s(scale::vec3)::matrix
end

function matrix_ts(position, scale)
    @ccall StereoKitC.matrix_ts(position::vec3, scale::vec3)::matrix
end

function matrix_trs_out(out_result, position, orientation, scale)
    @ccall StereoKitC.matrix_trs_out(out_result::Ptr{matrix}, position::Ptr{vec3}, orientation::Ptr{quat}, scale::Ptr{vec3})::Cvoid
end

function matrix_perspective(fov_degrees, aspect_ratio, near_clip, far_clip)
    @ccall StereoKitC.matrix_perspective(fov_degrees::Cfloat, aspect_ratio::Cfloat, near_clip::Cfloat, far_clip::Cfloat)::matrix
end

function matrix_orthographic(width, height, near_clip, far_clip)
    @ccall StereoKitC.matrix_orthographic(width::Cfloat, height::Cfloat, near_clip::Cfloat, far_clip::Cfloat)::matrix
end

function matrix_decompose(transform, out_position, out_scale, out_orientation)
    @ccall StereoKitC.matrix_decompose(transform::Ptr{matrix}, out_position::Ptr{vec3}, out_scale::Ptr{vec3}, out_orientation::Ptr{quat})::bool32_t
end

function matrix_extract_translation(transform)
    @ccall StereoKitC.matrix_extract_translation(transform::Ptr{matrix})::vec3
end

function matrix_extract_scale(transform)
    @ccall StereoKitC.matrix_extract_scale(transform::Ptr{matrix})::vec3
end

function matrix_extract_rotation(transform)
    @ccall StereoKitC.matrix_extract_rotation(transform::Ptr{matrix})::quat
end

function matrix_extract_pose(transform)
    @ccall StereoKitC.matrix_extract_pose(transform::Ptr{matrix})::pose_t
end

function ray_intersect_plane(ray, plane_pt, plane_normal, out_t)
    @ccall StereoKitC.ray_intersect_plane(ray::ray_t, plane_pt::vec3, plane_normal::vec3, out_t::Ptr{Cfloat})::bool32_t
end

function ray_from_mouse(screen_pixel_pos, out_ray)
    @ccall StereoKitC.ray_from_mouse(screen_pixel_pos::vec2, out_ray::Ptr{ray_t})::bool32_t
end

function plane_from_points(p1, p2, p3)
    @ccall StereoKitC.plane_from_points(p1::vec3, p2::vec3, p3::vec3)::plane_t
end

function plane_from_ray(ray)
    @ccall StereoKitC.plane_from_ray(ray::ray_t)::plane_t
end

function vec4_magnitude(a)
    @ccall StereoKitC.vec4_magnitude(a::vec4)::Cfloat
end

function vec3_magnitude(a)
    @ccall StereoKitC.vec3_magnitude(a::vec3)::Cfloat
end

function vec2_magnitude(a)
    @ccall StereoKitC.vec2_magnitude(a::vec2)::Cfloat
end

function vec3_magnitude_sq(a)
    @ccall StereoKitC.vec3_magnitude_sq(a::vec3)::Cfloat
end

function vec2_magnitude_sq(a)
    @ccall StereoKitC.vec2_magnitude_sq(a::vec2)::Cfloat
end

function vec3_dot(a, b)
    @ccall StereoKitC.vec3_dot(a::vec3, b::vec3)::Cfloat
end

function vec2_dot(a, b)
    @ccall StereoKitC.vec2_dot(a::vec2, b::vec2)::Cfloat
end

function vec3_distance_sq(a, b)
    @ccall StereoKitC.vec3_distance_sq(a::vec3, b::vec3)::Cfloat
end

function vec2_distance_sq(a, b)
    @ccall StereoKitC.vec2_distance_sq(a::vec2, b::vec2)::Cfloat
end

function vec3_distance(a, b)
    @ccall StereoKitC.vec3_distance(a::vec3, b::vec3)::Cfloat
end

function vec2_distance(a, b)
    @ccall StereoKitC.vec2_distance(a::vec2, b::vec2)::Cfloat
end

function vec3_project(a, onto_b)
    @ccall StereoKitC.vec3_project(a::vec3, onto_b::vec3)::vec3
end

function vec4_normalize(a)
    @ccall StereoKitC.vec4_normalize(a::vec4)::vec4
end

function vec3_normalize(a)
    @ccall StereoKitC.vec3_normalize(a::vec3)::vec3
end

function vec2_normalize(a)
    @ccall StereoKitC.vec2_normalize(a::vec2)::vec2
end

function vec3_abs(a)
    @ccall StereoKitC.vec3_abs(a::vec3)::vec3
end

function vec2_abs(a)
    @ccall StereoKitC.vec2_abs(a::vec2)::vec2
end

function vec3_lerp(a, b, t)
    @ccall StereoKitC.vec3_lerp(a::vec3, b::vec3, t::Cfloat)::vec3
end

function vec2_lerp(a, b, t)
    @ccall StereoKitC.vec2_lerp(a::vec2, b::vec2, t::Cfloat)::vec2
end

function vec3_in_radius(pt, center, radius)
    @ccall StereoKitC.vec3_in_radius(pt::vec3, center::vec3, radius::Cfloat)::bool32_t
end

function vec2_in_radius(pt, center, radius)
    @ccall StereoKitC.vec2_in_radius(pt::vec2, center::vec2, radius::Cfloat)::bool32_t
end

function plane_ray_intersect(plane, ray, out_pt)
    @ccall StereoKitC.plane_ray_intersect(plane::plane_t, ray::ray_t, out_pt::Ptr{vec3})::bool32_t
end

function plane_line_intersect(plane, p1, p2, out_pt)
    @ccall StereoKitC.plane_line_intersect(plane::plane_t, p1::vec3, p2::vec3, out_pt::Ptr{vec3})::bool32_t
end

function plane_point_closest(plane, pt)
    @ccall StereoKitC.plane_point_closest(plane::plane_t, pt::vec3)::vec3
end

function sphere_ray_intersect(sphere, ray, out_pt)
    @ccall StereoKitC.sphere_ray_intersect(sphere::sphere_t, ray::ray_t, out_pt::Ptr{vec3})::bool32_t
end

function sphere_point_contains(sphere, pt)
    @ccall StereoKitC.sphere_point_contains(sphere::sphere_t, pt::vec3)::bool32_t
end

function bounds_ray_intersect(bounds, ray, out_pt)
    @ccall StereoKitC.bounds_ray_intersect(bounds::bounds_t, ray::ray_t, out_pt::Ptr{vec3})::bool32_t
end

function bounds_point_contains(bounds, pt)
    @ccall StereoKitC.bounds_point_contains(bounds::bounds_t, pt::vec3)::bool32_t
end

function bounds_line_contains(bounds, pt1, pt2)
    @ccall StereoKitC.bounds_line_contains(bounds::bounds_t, pt1::vec3, pt2::vec3)::bool32_t
end

function bounds_capsule_contains(bounds, pt1, pt2, radius)
    @ccall StereoKitC.bounds_capsule_contains(bounds::bounds_t, pt1::vec3, pt2::vec3, radius::Cfloat)::bool32_t
end

function ray_point_closest(ray, pt)
    @ccall StereoKitC.ray_point_closest(ray::ray_t, pt::vec3)::vec3
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
    @ccall StereoKitC.color_hsv(hue::Cfloat, saturation::Cfloat, value::Cfloat, transparency::Cfloat)::color128
end

function color_to_hsv(color)
    @ccall StereoKitC.color_to_hsv(color::Ptr{color128})::vec3
end

function color_lab(l, a, b, transparency)
    @ccall StereoKitC.color_lab(l::Cfloat, a::Cfloat, b::Cfloat, transparency::Cfloat)::color128
end

function color_to_lab(color)
    @ccall StereoKitC.color_to_lab(color::Ptr{color128})::vec3
end

function color_to_linear(srgb_gamma_correct)
    @ccall StereoKitC.color_to_linear(srgb_gamma_correct::color128)::color128
end

function color_to_gamma(srgb_linear)
    @ccall StereoKitC.color_to_gamma(srgb_linear::color128)::color128
end

function color_lerp(a, b, t)
    @ccall StereoKitC.color_lerp(a::color128, b::color128, t::Cfloat)::color128
end

function color_to_32(a)
    @ccall StereoKitC.color_to_32(a::color128)::color32
end

function color32_to_128(color)
    @ccall StereoKitC.color32_to_128(color::color32)::color128
end

function color32_hex(hex)
    @ccall StereoKitC.color32_hex(hex::UInt32)::color32
end

function color_hex(hex)
    @ccall StereoKitC.color_hex(hex::UInt32)::color128
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

mutable struct _material_buffer_t end

const material_buffer_t = Ptr{_material_buffer_t}

mutable struct _model_t end

const model_t = Ptr{_model_t}

mutable struct _sprite_t end

const sprite_t = Ptr{_sprite_t}

mutable struct _sound_t end

const sound_t = Ptr{_sound_t}

mutable struct _solid_t end

const solid_t = Ptr{_solid_t}

struct gradient_key_t
    color::color128
    position::Cfloat
end

# no prototype is found for this function at stereokit.h:603:19, please use with caution
function gradient_create()
    @ccall StereoKitC.gradient_create()::gradient_t
end

function gradient_create_keys(keys, count)
    @ccall StereoKitC.gradient_create_keys(keys::Ptr{gradient_key_t}, count::Int32)::gradient_t
end

function gradient_add(gradient, color_linear, position)
    @ccall StereoKitC.gradient_add(gradient::gradient_t, color_linear::color128, position::Cfloat)::Cvoid
end

function gradient_set(gradient, index, color_linear, position)
    @ccall StereoKitC.gradient_set(gradient::gradient_t, index::Int32, color_linear::color128, position::Cfloat)::Cvoid
end

function gradient_remove(gradient, index)
    @ccall StereoKitC.gradient_remove(gradient::gradient_t, index::Int32)::Cvoid
end

function gradient_count(gradient)
    @ccall StereoKitC.gradient_count(gradient::gradient_t)::Int32
end

function gradient_get(gradient, at)
    @ccall StereoKitC.gradient_get(gradient::gradient_t, at::Cfloat)::color128
end

function gradient_get32(gradient, at)
    @ccall StereoKitC.gradient_get32(gradient::gradient_t, at::Cfloat)::color32
end

function gradient_release(gradient)
    @ccall StereoKitC.gradient_release(gradient::gradient_t)::Cvoid
end

struct spherical_harmonics_t
    coefficients::NTuple{9, vec3}
end

struct sh_light_t
    dir_to::vec3
    color::color128
end

function sh_create(lights, light_count)
    @ccall StereoKitC.sh_create(lights::Ptr{sh_light_t}, light_count::Int32)::spherical_harmonics_t
end

function sh_brightness(harmonics, scale)
    @ccall StereoKitC.sh_brightness(harmonics::Ptr{spherical_harmonics_t}, scale::Cfloat)::Cvoid
end

function sh_add(harmonics, light_dir, light_color)
    @ccall StereoKitC.sh_add(harmonics::Ptr{spherical_harmonics_t}, light_dir::vec3, light_color::vec3)::Cvoid
end

function sh_lookup(harmonics, normal)
    @ccall StereoKitC.sh_lookup(harmonics::Ptr{spherical_harmonics_t}, normal::vec3)::color128
end

function sh_dominant_dir(harmonics)
    @ccall StereoKitC.sh_dominant_dir(harmonics::Ptr{spherical_harmonics_t})::vec3
end

struct vert_t
    pos::vec3
    norm::vec3
    uv::vec2
    col::color32
end

function vert_create(position, normal, texture_coordinates, vertex_color)
    @ccall StereoKitC.vert_create(position::vec3, normal::vec3, texture_coordinates::vec2, vertex_color::color32)::vert_t
end

const vind_t = UInt32

function mesh_find(name)
    @ccall StereoKitC.mesh_find(name::Ptr{Cchar})::mesh_t
end

# no prototype is found for this function at stereokit.h:648:17, please use with caution
function mesh_create()
    @ccall StereoKitC.mesh_create()::mesh_t
end

function mesh_copy(mesh)
    @ccall StereoKitC.mesh_copy(mesh::mesh_t)::mesh_t
end

function mesh_set_id(mesh, id)
    @ccall StereoKitC.mesh_set_id(mesh::mesh_t, id::Ptr{Cchar})::Cvoid
end

function mesh_addref(mesh)
    @ccall StereoKitC.mesh_addref(mesh::mesh_t)::Cvoid
end

function mesh_release(mesh)
    @ccall StereoKitC.mesh_release(mesh::mesh_t)::Cvoid
end

function mesh_draw(mesh, material, transform, color_linear, layer)
    @ccall StereoKitC.mesh_draw(mesh::mesh_t, material::material_t, transform::matrix, color_linear::color128, layer::render_layer_)::Cvoid
end

function mesh_set_keep_data(mesh, keep_data)
    @ccall StereoKitC.mesh_set_keep_data(mesh::mesh_t, keep_data::bool32_t)::Cvoid
end

function mesh_get_keep_data(mesh)
    @ccall StereoKitC.mesh_get_keep_data(mesh::mesh_t)::bool32_t
end

function mesh_set_data(mesh, vertices, vertex_count, indices, index_count, calculate_bounds)
    @ccall StereoKitC.mesh_set_data(mesh::mesh_t, vertices::Ptr{vert_t}, vertex_count::Int32, indices::Ptr{vind_t}, index_count::Int32, calculate_bounds::bool32_t)::Cvoid
end

function mesh_set_verts(mesh, vertices, vertex_count, calculate_bounds)
    @ccall StereoKitC.mesh_set_verts(mesh::mesh_t, vertices::Ptr{vert_t}, vertex_count::Int32, calculate_bounds::bool32_t)::Cvoid
end

function mesh_get_verts(mesh, out_vertices, out_vertex_count, reference_mode)
    @ccall StereoKitC.mesh_get_verts(mesh::mesh_t, out_vertices::Ptr{Ptr{vert_t}}, out_vertex_count::Ptr{Int32}, reference_mode::memory_)::Cvoid
end

function mesh_get_vert_count(mesh)
    @ccall StereoKitC.mesh_get_vert_count(mesh::mesh_t)::Int32
end

function mesh_set_inds(mesh, indices, index_count)
    @ccall StereoKitC.mesh_set_inds(mesh::mesh_t, indices::Ptr{vind_t}, index_count::Int32)::Cvoid
end

function mesh_get_inds(mesh, out_indices, out_index_count, reference_mode)
    @ccall StereoKitC.mesh_get_inds(mesh::mesh_t, out_indices::Ptr{Ptr{vind_t}}, out_index_count::Ptr{Int32}, reference_mode::memory_)::Cvoid
end

function mesh_get_ind_count(mesh)
    @ccall StereoKitC.mesh_get_ind_count(mesh::mesh_t)::Int32
end

function mesh_set_draw_inds(mesh, index_count)
    @ccall StereoKitC.mesh_set_draw_inds(mesh::mesh_t, index_count::Int32)::Cvoid
end

function mesh_set_bounds(mesh, bounds)
    @ccall StereoKitC.mesh_set_bounds(mesh::mesh_t, bounds::Ptr{bounds_t})::Cvoid
end

function mesh_get_bounds(mesh)
    @ccall StereoKitC.mesh_get_bounds(mesh::mesh_t)::bounds_t
end

function mesh_has_skin(mesh)
    @ccall StereoKitC.mesh_has_skin(mesh::mesh_t)::bool32_t
end

function mesh_set_skin(mesh, bone_ids_4, bone_id_4_count, bone_weights, bone_weight_count, bone_resting_transforms, bone_count)
    @ccall StereoKitC.mesh_set_skin(mesh::mesh_t, bone_ids_4::Ptr{UInt16}, bone_id_4_count::Int32, bone_weights::Ptr{vec4}, bone_weight_count::Int32, bone_resting_transforms::Ptr{matrix}, bone_count::Int32)::Cvoid
end

function mesh_update_skin(mesh, bone_transforms, bone_count)
    @ccall StereoKitC.mesh_update_skin(mesh::mesh_t, bone_transforms::Ptr{matrix}, bone_count::Int32)::Cvoid
end

function mesh_ray_intersect(mesh, model_space_ray, out_pt, out_start_inds)
    @ccall StereoKitC.mesh_ray_intersect(mesh::mesh_t, model_space_ray::ray_t, out_pt::Ptr{ray_t}, out_start_inds::Ptr{UInt32})::bool32_t
end

function mesh_get_triangle(mesh, triangle_index, a, b, c)
    @ccall StereoKitC.mesh_get_triangle(mesh::mesh_t, triangle_index::UInt32, a::Ptr{vert_t}, b::Ptr{vert_t}, c::Ptr{vert_t})::bool32_t
end

function mesh_gen_plane(dimensions, plane_normal, plane_top_direction, subdivisions)
    @ccall StereoKitC.mesh_gen_plane(dimensions::vec2, plane_normal::vec3, plane_top_direction::vec3, subdivisions::Int32)::mesh_t
end

function mesh_gen_cube(dimensions, subdivisions)
    @ccall StereoKitC.mesh_gen_cube(dimensions::vec3, subdivisions::Int32)::mesh_t
end

function mesh_gen_sphere(diameter, subdivisions)
    @ccall StereoKitC.mesh_gen_sphere(diameter::Cfloat, subdivisions::Int32)::mesh_t
end

function mesh_gen_rounded_cube(dimensions, edge_radius, subdivisions)
    @ccall StereoKitC.mesh_gen_rounded_cube(dimensions::vec3, edge_radius::Cfloat, subdivisions::Int32)::mesh_t
end

function mesh_gen_cylinder(diameter, depth, direction, subdivisions)
    @ccall StereoKitC.mesh_gen_cylinder(diameter::Cfloat, depth::Cfloat, direction::vec3, subdivisions::Int32)::mesh_t
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
    @ccall StereoKitC.tex_find(id::Ptr{Cchar})::tex_t
end

function tex_create(type, format)
    @ccall StereoKitC.tex_create(type::tex_type_, format::tex_format_)::tex_t
end

function tex_create_color32(data, width, height, srgb_data)
    @ccall StereoKitC.tex_create_color32(data::Ptr{color32}, width::Int32, height::Int32, srgb_data::bool32_t)::tex_t
end

function tex_create_color128(data, width, height, srgb_data)
    @ccall StereoKitC.tex_create_color128(data::Ptr{color128}, width::Int32, height::Int32, srgb_data::bool32_t)::tex_t
end

function tex_create_mem(file_data, file_size, srgb_data, priority)
    @ccall StereoKitC.tex_create_mem(file_data::Ptr{Cvoid}, file_size::Csize_t, srgb_data::bool32_t, priority::Int32)::tex_t
end

function tex_create_file(file, srgb_data, priority)
    @ccall StereoKitC.tex_create_file(file::Ptr{Cchar}, srgb_data::bool32_t, priority::Int32)::tex_t
end

function tex_create_file_arr(files, file_count, srgb_data, priority)
    @ccall StereoKitC.tex_create_file_arr(files::Ptr{Ptr{Cchar}}, file_count::Int32, srgb_data::bool32_t, priority::Int32)::tex_t
end

function tex_create_cubemap_file(equirectangular_file, srgb_data, out_sh_lighting_info, priority)
    @ccall StereoKitC.tex_create_cubemap_file(equirectangular_file::Ptr{Cchar}, srgb_data::bool32_t, out_sh_lighting_info::Ptr{spherical_harmonics_t}, priority::Int32)::tex_t
end

function tex_create_cubemap_files(cube_face_file_xxyyzz, srgb_data, out_sh_lighting_info, priority)
    @ccall StereoKitC.tex_create_cubemap_files(cube_face_file_xxyyzz::Ptr{Ptr{Cchar}}, srgb_data::bool32_t, out_sh_lighting_info::Ptr{spherical_harmonics_t}, priority::Int32)::tex_t
end

function tex_set_id(texture, id)
    @ccall StereoKitC.tex_set_id(texture::tex_t, id::Ptr{Cchar})::Cvoid
end

function tex_set_fallback(texture, fallback)
    @ccall StereoKitC.tex_set_fallback(texture::tex_t, fallback::tex_t)::Cvoid
end

function tex_set_surface(texture, native_surface, type, native_fmt, width, height, surface_count)
    @ccall StereoKitC.tex_set_surface(texture::tex_t, native_surface::Ptr{Cvoid}, type::tex_type_, native_fmt::Int64, width::Int32, height::Int32, surface_count::Int32)::Cvoid
end

function tex_addref(texture)
    @ccall StereoKitC.tex_addref(texture::tex_t)::Cvoid
end

function tex_release(texture)
    @ccall StereoKitC.tex_release(texture::tex_t)::Cvoid
end

function tex_asset_state(texture)
    @ccall StereoKitC.tex_asset_state(texture::tex_t)::asset_state_
end

function tex_on_load(texture, on_load, context)
    @ccall StereoKitC.tex_on_load(texture::tex_t, on_load::Ptr{Cvoid}, context::Ptr{Cvoid})::Cvoid
end

function tex_on_load_remove(texture, on_load)
    @ccall StereoKitC.tex_on_load_remove(texture::tex_t, on_load::Ptr{Cvoid})::Cvoid
end

function tex_set_colors(texture, width, height, data)
    @ccall StereoKitC.tex_set_colors(texture::tex_t, width::Int32, height::Int32, data::Ptr{Cvoid})::Cvoid
end

function tex_set_color_arr(texture, width, height, data, data_count, out_sh_lighting_info, multisample)
    @ccall StereoKitC.tex_set_color_arr(texture::tex_t, width::Int32, height::Int32, data::Ptr{Ptr{Cvoid}}, data_count::Int32, out_sh_lighting_info::Ptr{spherical_harmonics_t}, multisample::Int32)::Cvoid
end

function tex_add_zbuffer(texture, format)
    @ccall StereoKitC.tex_add_zbuffer(texture::tex_t, format::tex_format_)::tex_t
end

function tex_get_data(texture, out_data, out_data_size)
    @ccall StereoKitC.tex_get_data(texture::tex_t, out_data::Ptr{Cvoid}, out_data_size::Csize_t)::Cvoid
end

function tex_gen_color(color, width, height, type, format)
    @ccall StereoKitC.tex_gen_color(color::color128, width::Int32, height::Int32, type::tex_type_, format::tex_format_)::tex_t
end

function tex_gen_cubemap(gradient, gradient_dir, resolution, out_sh_lighting_info)
    @ccall StereoKitC.tex_gen_cubemap(gradient::gradient_t, gradient_dir::vec3, resolution::Int32, out_sh_lighting_info::Ptr{spherical_harmonics_t})::tex_t
end

function tex_gen_cubemap_sh(lookup, face_size, light_spot_size_pct, light_spot_intensity)
    @ccall StereoKitC.tex_gen_cubemap_sh(lookup::Ptr{spherical_harmonics_t}, face_size::Int32, light_spot_size_pct::Cfloat, light_spot_intensity::Cfloat)::tex_t
end

function tex_get_format(texture)
    @ccall StereoKitC.tex_get_format(texture::tex_t)::tex_format_
end

function tex_get_width(texture)
    @ccall StereoKitC.tex_get_width(texture::tex_t)::Int32
end

function tex_get_height(texture)
    @ccall StereoKitC.tex_get_height(texture::tex_t)::Int32
end

function tex_set_sample(texture, sample)
    @ccall StereoKitC.tex_set_sample(texture::tex_t, sample::tex_sample_)::Cvoid
end

function tex_get_sample(texture)
    @ccall StereoKitC.tex_get_sample(texture::tex_t)::tex_sample_
end

function tex_set_address(texture, address_mode)
    @ccall StereoKitC.tex_set_address(texture::tex_t, address_mode::tex_address_)::Cvoid
end

function tex_get_address(texture)
    @ccall StereoKitC.tex_get_address(texture::tex_t)::tex_address_
end

function tex_set_anisotropy(texture, anisotropy_level)
    @ccall StereoKitC.tex_set_anisotropy(texture::tex_t, anisotropy_level::Int32)::Cvoid
end

function tex_get_anisotropy(texture)
    @ccall StereoKitC.tex_get_anisotropy(texture::tex_t)::Int32
end

function tex_set_loading_fallback(loading_texture)
    @ccall StereoKitC.tex_set_loading_fallback(loading_texture::tex_t)::Cvoid
end

function tex_set_error_fallback(error_texture)
    @ccall StereoKitC.tex_set_error_fallback(error_texture::tex_t)::Cvoid
end

function tex_get_cubemap_lighting(cubemap_texture)
    @ccall StereoKitC.tex_get_cubemap_lighting(cubemap_texture::tex_t)::spherical_harmonics_t
end

function font_find(id)
    @ccall StereoKitC.font_find(id::Ptr{Cchar})::font_t
end

function font_create(file)
    @ccall StereoKitC.font_create(file::Ptr{Cchar})::font_t
end

function font_create_files(files, file_count)
    @ccall StereoKitC.font_create_files(files::Ptr{Ptr{Cchar}}, file_count::Int32)::font_t
end

function font_set_id(font, id)
    @ccall StereoKitC.font_set_id(font::font_t, id::Ptr{Cchar})::Cvoid
end

function font_addref(font)
    @ccall StereoKitC.font_addref(font::font_t)::Cvoid
end

function font_release(font)
    @ccall StereoKitC.font_release(font::font_t)::Cvoid
end

function font_get_tex(font)
    @ccall StereoKitC.font_get_tex(font::font_t)::tex_t
end

function shader_find(id)
    @ccall StereoKitC.shader_find(id::Ptr{Cchar})::shader_t
end

function shader_create_file(filename)
    @ccall StereoKitC.shader_create_file(filename::Ptr{Cchar})::shader_t
end

function shader_create_mem(data, data_size)
    @ccall StereoKitC.shader_create_mem(data::Ptr{Cvoid}, data_size::Csize_t)::shader_t
end

function shader_set_id(shader, id)
    @ccall StereoKitC.shader_set_id(shader::shader_t, id::Ptr{Cchar})::Cvoid
end

function shader_get_name(shader)
    @ccall StereoKitC.shader_get_name(shader::shader_t)::Ptr{Cchar}
end

function shader_addref(shader)
    @ccall StereoKitC.shader_addref(shader::shader_t)::Cvoid
end

function shader_release(shader)
    @ccall StereoKitC.shader_release(shader::shader_t)::Cvoid
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
    material_param_unknown = 0
    material_param_float = 1
    material_param_color128 = 2
    material_param_vector2 = 3
    material_param_vector3 = 4
    material_param_vector4 = 5
    material_param_vector = 5
    material_param_matrix = 6
    material_param_texture = 7
    material_param_int = 8
    material_param_int2 = 9
    material_param_int3 = 10
    material_param_int4 = 11
    material_param_uint = 12
    material_param_uint2 = 13
    material_param_uint3 = 14
    material_param_uint4 = 15
end

function material_find(id)
    @ccall StereoKitC.material_find(id::Ptr{Cchar})::material_t
end

function material_create(shader)
    @ccall StereoKitC.material_create(shader::shader_t)::material_t
end

function material_copy(material)
    @ccall StereoKitC.material_copy(material::material_t)::material_t
end

function material_copy_id(id)
    @ccall StereoKitC.material_copy_id(id::Ptr{Cchar})::material_t
end

function material_set_id(material, id)
    @ccall StereoKitC.material_set_id(material::material_t, id::Ptr{Cchar})::Cvoid
end

function material_addref(material)
    @ccall StereoKitC.material_addref(material::material_t)::Cvoid
end

function material_release(material)
    @ccall StereoKitC.material_release(material::material_t)::Cvoid
end

function material_set_transparency(material, mode)
    @ccall StereoKitC.material_set_transparency(material::material_t, mode::transparency_)::Cvoid
end

function material_set_cull(material, mode)
    @ccall StereoKitC.material_set_cull(material::material_t, mode::cull_)::Cvoid
end

function material_set_wireframe(material, wireframe)
    @ccall StereoKitC.material_set_wireframe(material::material_t, wireframe::bool32_t)::Cvoid
end

function material_set_depth_test(material, depth_test_mode)
    @ccall StereoKitC.material_set_depth_test(material::material_t, depth_test_mode::depth_test_)::Cvoid
end

function material_set_depth_write(material, write_enabled)
    @ccall StereoKitC.material_set_depth_write(material::material_t, write_enabled::bool32_t)::Cvoid
end

function material_set_queue_offset(material, offset)
    @ccall StereoKitC.material_set_queue_offset(material::material_t, offset::Int32)::Cvoid
end

function material_get_transparency(material)
    @ccall StereoKitC.material_get_transparency(material::material_t)::transparency_
end

function material_get_cull(material)
    @ccall StereoKitC.material_get_cull(material::material_t)::cull_
end

function material_get_wireframe(material)
    @ccall StereoKitC.material_get_wireframe(material::material_t)::bool32_t
end

function material_get_depth_test(material)
    @ccall StereoKitC.material_get_depth_test(material::material_t)::depth_test_
end

function material_get_depth_write(material)
    @ccall StereoKitC.material_get_depth_write(material::material_t)::bool32_t
end

function material_get_queue_offset(material)
    @ccall StereoKitC.material_get_queue_offset(material::material_t)::Int32
end

function material_set_float(material, name, value)
    @ccall StereoKitC.material_set_float(material::material_t, name::Ptr{Cchar}, value::Cfloat)::Cvoid
end

function material_set_vector2(material, name, value)
    @ccall StereoKitC.material_set_vector2(material::material_t, name::Ptr{Cchar}, value::vec2)::Cvoid
end

function material_set_vector3(material, name, value)
    @ccall StereoKitC.material_set_vector3(material::material_t, name::Ptr{Cchar}, value::vec3)::Cvoid
end

function material_set_color(material, name, color_gamma)
    @ccall StereoKitC.material_set_color(material::material_t, name::Ptr{Cchar}, color_gamma::color128)::Cvoid
end

function material_set_vector4(material, name, value)
    @ccall StereoKitC.material_set_vector4(material::material_t, name::Ptr{Cchar}, value::vec4)::Cvoid
end

function material_set_vector(material, name, value)
    @ccall StereoKitC.material_set_vector(material::material_t, name::Ptr{Cchar}, value::vec4)::Cvoid
end

function material_set_int(material, name, value)
    @ccall StereoKitC.material_set_int(material::material_t, name::Ptr{Cchar}, value::Int32)::Cvoid
end

function material_set_int2(material, name, value1, value2)
    @ccall StereoKitC.material_set_int2(material::material_t, name::Ptr{Cchar}, value1::Int32, value2::Int32)::Cvoid
end

function material_set_int3(material, name, value1, value2, value3)
    @ccall StereoKitC.material_set_int3(material::material_t, name::Ptr{Cchar}, value1::Int32, value2::Int32, value3::Int32)::Cvoid
end

function material_set_int4(material, name, value1, value2, value3, value4)
    @ccall StereoKitC.material_set_int4(material::material_t, name::Ptr{Cchar}, value1::Int32, value2::Int32, value3::Int32, value4::Int32)::Cvoid
end

function material_set_bool(material, name, value)
    @ccall StereoKitC.material_set_bool(material::material_t, name::Ptr{Cchar}, value::bool32_t)::Cvoid
end

function material_set_uint(material, name, value)
    @ccall StereoKitC.material_set_uint(material::material_t, name::Ptr{Cchar}, value::UInt32)::Cvoid
end

function material_set_uint2(material, name, value1, value2)
    @ccall StereoKitC.material_set_uint2(material::material_t, name::Ptr{Cchar}, value1::UInt32, value2::UInt32)::Cvoid
end

function material_set_uint3(material, name, value1, value2, value3)
    @ccall StereoKitC.material_set_uint3(material::material_t, name::Ptr{Cchar}, value1::UInt32, value2::UInt32, value3::UInt32)::Cvoid
end

function material_set_uint4(material, name, value1, value2, value3, value4)
    @ccall StereoKitC.material_set_uint4(material::material_t, name::Ptr{Cchar}, value1::UInt32, value2::UInt32, value3::UInt32, value4::UInt32)::Cvoid
end

function material_set_matrix(material, name, value)
    @ccall StereoKitC.material_set_matrix(material::material_t, name::Ptr{Cchar}, value::matrix)::Cvoid
end

function material_set_texture(material, name, value)
    @ccall StereoKitC.material_set_texture(material::material_t, name::Ptr{Cchar}, value::tex_t)::bool32_t
end

function material_set_texture_id(material, id, value)
    @ccall StereoKitC.material_set_texture_id(material::material_t, id::uint64_t, value::tex_t)::bool32_t
end

function material_has_param(material, name, type)
    @ccall StereoKitC.material_has_param(material::material_t, name::Ptr{Cchar}, type::material_param_)::bool32_t
end

function material_set_param(material, name, type, value)
    @ccall StereoKitC.material_set_param(material::material_t, name::Ptr{Cchar}, type::material_param_, value::Ptr{Cvoid})::Cvoid
end

function material_set_param_id(material, id, type, value)
    @ccall StereoKitC.material_set_param_id(material::material_t, id::uint64_t, type::material_param_, value::Ptr{Cvoid})::Cvoid
end

function material_get_param(material, name, type, out_value)
    @ccall StereoKitC.material_get_param(material::material_t, name::Ptr{Cchar}, type::material_param_, out_value::Ptr{Cvoid})::bool32_t
end

function material_get_param_id(material, id, type, out_value)
    @ccall StereoKitC.material_get_param_id(material::material_t, id::uint64_t, type::material_param_, out_value::Ptr{Cvoid})::bool32_t
end

function material_get_param_info(material, index, out_name, out_type)
    @ccall StereoKitC.material_get_param_info(material::material_t, index::Int32, out_name::Ptr{Ptr{Cchar}}, out_type::Ptr{material_param_})::Cvoid
end

function material_get_param_count(material)
    @ccall StereoKitC.material_get_param_count(material::material_t)::Cint
end

function material_set_shader(material, shader)
    @ccall StereoKitC.material_set_shader(material::material_t, shader::shader_t)::Cvoid
end

function material_get_shader(material)
    @ccall StereoKitC.material_get_shader(material::material_t)::shader_t
end

function material_buffer_create(register_slot, size)
    @ccall StereoKitC.material_buffer_create(register_slot::Int32, size::Int32)::material_buffer_t
end

function material_buffer_set_data(buffer, data)
    @ccall StereoKitC.material_buffer_set_data(buffer::material_buffer_t, data::Ptr{Cvoid})::Cvoid
end

function material_buffer_release(buffer)
    @ccall StereoKitC.material_buffer_release(buffer::material_buffer_t)::Cvoid
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
    @ccall StereoKitC.text_make_style(font::font_t, character_height::Cfloat, color_gamma::color128)::text_style_t
end

function text_make_style_shader(font, character_height, shader, color_gamma)
    @ccall StereoKitC.text_make_style_shader(font::font_t, character_height::Cfloat, shader::shader_t, color_gamma::color128)::text_style_t
end

function text_make_style_mat(font, character_height, material, color_gamma)
    @ccall StereoKitC.text_make_style_mat(font::font_t, character_height::Cfloat, material::material_t, color_gamma::color128)::text_style_t
end

function text_add_at(text_utf8, transform, style, position, align, off_x, off_y, off_z, vertex_tint_linear)
    @ccall StereoKitC.text_add_at(text_utf8::Ptr{Cchar}, transform::Ptr{matrix}, style::text_style_t, position::text_align_, align::text_align_, off_x::Cfloat, off_y::Cfloat, off_z::Cfloat, vertex_tint_linear::color128)::Cvoid
end

function text_add_at_16(text_utf16, transform, style, position, align, off_x, off_y, off_z, vertex_tint_linear)
    @ccall StereoKitC.text_add_at_16(text_utf16::Ptr{char16_t}, transform::Ptr{matrix}, style::text_style_t, position::text_align_, align::text_align_, off_x::Cfloat, off_y::Cfloat, off_z::Cfloat, vertex_tint_linear::color128)::Cvoid
end

function text_add_in(text_utf8, transform, size, fit, style, position, align, off_x, off_y, off_z, vertex_tint_linear)
    @ccall StereoKitC.text_add_in(text_utf8::Ptr{Cchar}, transform::Ptr{matrix}, size::vec2, fit::text_fit_, style::text_style_t, position::text_align_, align::text_align_, off_x::Cfloat, off_y::Cfloat, off_z::Cfloat, vertex_tint_linear::color128)::Cfloat
end

function text_add_in_16(text_utf16, transform, size, fit, style, position, align, off_x, off_y, off_z, vertex_tint_linear)
    @ccall StereoKitC.text_add_in_16(text_utf16::Ptr{char16_t}, transform::Ptr{matrix}, size::vec2, fit::text_fit_, style::text_style_t, position::text_align_, align::text_align_, off_x::Cfloat, off_y::Cfloat, off_z::Cfloat, vertex_tint_linear::color128)::Cfloat
end

function text_size(text_utf8, style)
    @ccall StereoKitC.text_size(text_utf8::Ptr{Cchar}, style::text_style_t)::vec2
end

function text_size_16(text_utf16, style)
    @ccall StereoKitC.text_size_16(text_utf16::Ptr{char16_t}, style::text_style_t)::vec2
end

function text_style_get_material(style)
    @ccall StereoKitC.text_style_get_material(style::text_style_t)::material_t
end

function text_style_get_char_height(style)
    @ccall StereoKitC.text_style_get_char_height(style::text_style_t)::Cfloat
end

@cenum solid_type_::UInt32 begin
    solid_type_normal = 0
    solid_type_immovable = 1
    solid_type_unaffected = 2
end

function solid_create(position, rotation, type)
    @ccall StereoKitC.solid_create(position::Ptr{vec3}, rotation::Ptr{quat}, type::solid_type_)::solid_t
end

function solid_release(solid)
    @ccall StereoKitC.solid_release(solid::solid_t)::Cvoid
end

function solid_add_sphere(solid, diameter, kilograms, offset)
    @ccall StereoKitC.solid_add_sphere(solid::solid_t, diameter::Cfloat, kilograms::Cfloat, offset::Ptr{vec3})::Cvoid
end

function solid_add_box(solid, dimensions, kilograms, offset)
    @ccall StereoKitC.solid_add_box(solid::solid_t, dimensions::Ptr{vec3}, kilograms::Cfloat, offset::Ptr{vec3})::Cvoid
end

function solid_add_capsule(solid, diameter, height, kilograms, offset)
    @ccall StereoKitC.solid_add_capsule(solid::solid_t, diameter::Cfloat, height::Cfloat, kilograms::Cfloat, offset::Ptr{vec3})::Cvoid
end

function solid_set_type(solid, type)
    @ccall StereoKitC.solid_set_type(solid::solid_t, type::solid_type_)::Cvoid
end

function solid_set_enabled(solid, enabled)
    @ccall StereoKitC.solid_set_enabled(solid::solid_t, enabled::bool32_t)::Cvoid
end

function solid_move(solid, position, rotation)
    @ccall StereoKitC.solid_move(solid::solid_t, position::Ptr{vec3}, rotation::Ptr{quat})::Cvoid
end

function solid_teleport(solid, position, rotation)
    @ccall StereoKitC.solid_teleport(solid::solid_t, position::Ptr{vec3}, rotation::Ptr{quat})::Cvoid
end

function solid_set_velocity(solid, meters_per_second)
    @ccall StereoKitC.solid_set_velocity(solid::solid_t, meters_per_second::Ptr{vec3})::Cvoid
end

function solid_set_velocity_ang(solid, radians_per_second)
    @ccall StereoKitC.solid_set_velocity_ang(solid::solid_t, radians_per_second::Ptr{vec3})::Cvoid
end

function solid_get_pose(solid, out_pose)
    @ccall StereoKitC.solid_get_pose(solid::solid_t, out_pose::Ptr{pose_t})::Cvoid
end

const model_node_id = Int32

@cenum anim_mode_::UInt32 begin
    anim_mode_loop = 0
    anim_mode_once = 1
    anim_mode_manual = 2
end

function model_find(id)
    @ccall StereoKitC.model_find(id::Ptr{Cchar})::model_t
end

function model_copy(model)
    @ccall StereoKitC.model_copy(model::model_t)::model_t
end

# no prototype is found for this function at stereokit.h:1196:22, please use with caution
function model_create()
    @ccall StereoKitC.model_create()::model_t
end

function model_create_mesh(mesh, material)
    @ccall StereoKitC.model_create_mesh(mesh::mesh_t, material::material_t)::model_t
end

function model_create_mem(filename, data, data_size, shader)
    @ccall StereoKitC.model_create_mem(filename::Ptr{Cchar}, data::Ptr{Cvoid}, data_size::Csize_t, shader::shader_t)::model_t
end

function model_create_file(filename, shader)
    @ccall StereoKitC.model_create_file(filename::Ptr{Cchar}, shader::shader_t)::model_t
end

function model_set_id(model, id)
    @ccall StereoKitC.model_set_id(model::model_t, id::Ptr{Cchar})::Cvoid
end

function model_addref(model)
    @ccall StereoKitC.model_addref(model::model_t)::Cvoid
end

function model_release(model)
    @ccall StereoKitC.model_release(model::model_t)::Cvoid
end

function model_draw(model, transform, color_linear, layer)
    @ccall StereoKitC.model_draw(model::model_t, transform::matrix, color_linear::color128, layer::render_layer_)::Cvoid
end

function model_recalculate_bounds(model)
    @ccall StereoKitC.model_recalculate_bounds(model::model_t)::Cvoid
end

function model_set_bounds(model, bounds)
    @ccall StereoKitC.model_set_bounds(model::model_t, bounds::Ptr{bounds_t})::Cvoid
end

function model_get_bounds(model)
    @ccall StereoKitC.model_get_bounds(model::model_t)::bounds_t
end

function model_ray_intersect(model, model_space_ray, out_pt)
    @ccall StereoKitC.model_ray_intersect(model::model_t, model_space_ray::ray_t, out_pt::Ptr{ray_t})::bool32_t
end

function model_step_anim(model)
    @ccall StereoKitC.model_step_anim(model::model_t)::Cvoid
end

function model_play_anim(model, animation_name, mode)
    @ccall StereoKitC.model_play_anim(model::model_t, animation_name::Ptr{Cchar}, mode::anim_mode_)::bool32_t
end

function model_play_anim_idx(model, index, mode)
    @ccall StereoKitC.model_play_anim_idx(model::model_t, index::Int32, mode::anim_mode_)::Cvoid
end

function model_set_anim_time(model, time)
    @ccall StereoKitC.model_set_anim_time(model::model_t, time::Cfloat)::Cvoid
end

function model_set_anim_completion(model, percent)
    @ccall StereoKitC.model_set_anim_completion(model::model_t, percent::Cfloat)::Cvoid
end

function model_anim_find(model, animation_name)
    @ccall StereoKitC.model_anim_find(model::model_t, animation_name::Ptr{Cchar})::Int32
end

function model_anim_count(model)
    @ccall StereoKitC.model_anim_count(model::model_t)::Int32
end

function model_anim_active(model)
    @ccall StereoKitC.model_anim_active(model::model_t)::Int32
end

function model_anim_active_mode(model)
    @ccall StereoKitC.model_anim_active_mode(model::model_t)::anim_mode_
end

function model_anim_active_time(model)
    @ccall StereoKitC.model_anim_active_time(model::model_t)::Cfloat
end

function model_anim_active_completion(model)
    @ccall StereoKitC.model_anim_active_completion(model::model_t)::Cfloat
end

function model_anim_get_name(model, index)
    @ccall StereoKitC.model_anim_get_name(model::model_t, index::Int32)::Ptr{Cchar}
end

function model_anim_get_duration(model, index)
    @ccall StereoKitC.model_anim_get_duration(model::model_t, index::Int32)::Cfloat
end

function model_get_name(model, subset)
    @ccall StereoKitC.model_get_name(model::model_t, subset::Int32)::Ptr{Cchar}
end

function model_get_material(model, subset)
    @ccall StereoKitC.model_get_material(model::model_t, subset::Int32)::material_t
end

function model_get_mesh(model, subset)
    @ccall StereoKitC.model_get_mesh(model::model_t, subset::Int32)::mesh_t
end

function model_get_transform(model, subset)
    @ccall StereoKitC.model_get_transform(model::model_t, subset::Int32)::matrix
end

function model_set_material(model, subset, material)
    @ccall StereoKitC.model_set_material(model::model_t, subset::Int32, material::material_t)::Cvoid
end

function model_set_mesh(model, subset, mesh)
    @ccall StereoKitC.model_set_mesh(model::model_t, subset::Int32, mesh::mesh_t)::Cvoid
end

function model_set_transform(model, subset, transform)
    @ccall StereoKitC.model_set_transform(model::model_t, subset::Int32, transform::Ptr{matrix})::Cvoid
end

function model_remove_subset(model, subset)
    @ccall StereoKitC.model_remove_subset(model::model_t, subset::Int32)::Cvoid
end

function model_add_named_subset(model, name, mesh, material, transform)
    @ccall StereoKitC.model_add_named_subset(model::model_t, name::Ptr{Cchar}, mesh::mesh_t, material::material_t, transform::Ptr{matrix})::Int32
end

function model_add_subset(model, mesh, material, transform)
    @ccall StereoKitC.model_add_subset(model::model_t, mesh::mesh_t, material::material_t, transform::Ptr{matrix})::Int32
end

function model_add_subset_n(model, name, mesh, material, transform)
    @ccall StereoKitC.model_add_subset_n(model::model_t, name::Ptr{Cchar}, mesh::mesh_t, material::material_t, transform::Ptr{matrix})::Int32
end

function model_subset_count(model)
    @ccall StereoKitC.model_subset_count(model::model_t)::Int32
end

function model_node_add(model, name, model_transform, mesh, material, solid)
    @ccall StereoKitC.model_node_add(model::model_t, name::Ptr{Cchar}, model_transform::matrix, mesh::mesh_t, material::material_t, solid::bool32_t)::model_node_id
end

function model_node_add_child(model, parent, name, local_transform, mesh, material, solid)
    @ccall StereoKitC.model_node_add_child(model::model_t, parent::model_node_id, name::Ptr{Cchar}, local_transform::matrix, mesh::mesh_t, material::material_t, solid::bool32_t)::model_node_id
end

function model_node_find(model, name)
    @ccall StereoKitC.model_node_find(model::model_t, name::Ptr{Cchar})::model_node_id
end

function model_node_sibling(model, node)
    @ccall StereoKitC.model_node_sibling(model::model_t, node::model_node_id)::model_node_id
end

function model_node_parent(model, node)
    @ccall StereoKitC.model_node_parent(model::model_t, node::model_node_id)::model_node_id
end

function model_node_child(model, node)
    @ccall StereoKitC.model_node_child(model::model_t, node::model_node_id)::model_node_id
end

function model_node_count(model)
    @ccall StereoKitC.model_node_count(model::model_t)::Int32
end

function model_node_index(model, index)
    @ccall StereoKitC.model_node_index(model::model_t, index::Int32)::model_node_id
end

function model_node_visual_count(model)
    @ccall StereoKitC.model_node_visual_count(model::model_t)::Int32
end

function model_node_visual_index(model, index)
    @ccall StereoKitC.model_node_visual_index(model::model_t, index::Int32)::model_node_id
end

function model_node_iterate(model, node)
    @ccall StereoKitC.model_node_iterate(model::model_t, node::model_node_id)::model_node_id
end

function model_node_get_root(model)
    @ccall StereoKitC.model_node_get_root(model::model_t)::model_node_id
end

function model_node_get_name(model, node)
    @ccall StereoKitC.model_node_get_name(model::model_t, node::model_node_id)::Ptr{Cchar}
end

function model_node_get_solid(model, node)
    @ccall StereoKitC.model_node_get_solid(model::model_t, node::model_node_id)::bool32_t
end

function model_node_get_visible(model, node)
    @ccall StereoKitC.model_node_get_visible(model::model_t, node::model_node_id)::bool32_t
end

function model_node_get_material(model, node)
    @ccall StereoKitC.model_node_get_material(model::model_t, node::model_node_id)::material_t
end

function model_node_get_mesh(model, node)
    @ccall StereoKitC.model_node_get_mesh(model::model_t, node::model_node_id)::mesh_t
end

function model_node_get_transform_model(model, node)
    @ccall StereoKitC.model_node_get_transform_model(model::model_t, node::model_node_id)::matrix
end

function model_node_get_transform_local(model, node)
    @ccall StereoKitC.model_node_get_transform_local(model::model_t, node::model_node_id)::matrix
end

function model_node_set_name(model, node, name)
    @ccall StereoKitC.model_node_set_name(model::model_t, node::model_node_id, name::Ptr{Cchar})::Cvoid
end

function model_node_set_solid(model, node, solid)
    @ccall StereoKitC.model_node_set_solid(model::model_t, node::model_node_id, solid::bool32_t)::Cvoid
end

function model_node_set_visible(model, node, visible)
    @ccall StereoKitC.model_node_set_visible(model::model_t, node::model_node_id, visible::bool32_t)::Cvoid
end

function model_node_set_material(model, node, material)
    @ccall StereoKitC.model_node_set_material(model::model_t, node::model_node_id, material::material_t)::Cvoid
end

function model_node_set_mesh(model, node, mesh)
    @ccall StereoKitC.model_node_set_mesh(model::model_t, node::model_node_id, mesh::mesh_t)::Cvoid
end

function model_node_set_transform_model(model, node, transform_model_space)
    @ccall StereoKitC.model_node_set_transform_model(model::model_t, node::model_node_id, transform_model_space::matrix)::Cvoid
end

function model_node_set_transform_local(model, node, transform_local_space)
    @ccall StereoKitC.model_node_set_transform_local(model::model_t, node::model_node_id, transform_local_space::matrix)::Cvoid
end

@cenum sprite_type_::UInt32 begin
    sprite_type_atlased = 0
    sprite_type_single = 1
end

function sprite_create(sprite, type, atlas_id)
    @ccall StereoKitC.sprite_create(sprite::tex_t, type::sprite_type_, atlas_id::Ptr{Cchar})::sprite_t
end

function sprite_create_file(filename, type, atlas_id)
    @ccall StereoKitC.sprite_create_file(filename::Ptr{Cchar}, type::sprite_type_, atlas_id::Ptr{Cchar})::sprite_t
end

function sprite_set_id(sprite, id)
    @ccall StereoKitC.sprite_set_id(sprite::sprite_t, id::Ptr{Cchar})::Cvoid
end

function sprite_addref(sprite)
    @ccall StereoKitC.sprite_addref(sprite::sprite_t)::Cvoid
end

function sprite_release(sprite)
    @ccall StereoKitC.sprite_release(sprite::sprite_t)::Cvoid
end

function sprite_get_aspect(sprite)
    @ccall StereoKitC.sprite_get_aspect(sprite::sprite_t)::Cfloat
end

function sprite_get_width(sprite)
    @ccall StereoKitC.sprite_get_width(sprite::sprite_t)::Int32
end

function sprite_get_height(sprite)
    @ccall StereoKitC.sprite_get_height(sprite::sprite_t)::Int32
end

function sprite_get_dimensions_normalized(sprite)
    @ccall StereoKitC.sprite_get_dimensions_normalized(sprite::sprite_t)::vec2
end

function sprite_draw(sprite, transform, color)
    @ccall StereoKitC.sprite_draw(sprite::sprite_t, transform::Ptr{matrix}, color::color32)::Cvoid
end

function sprite_draw_at(sprite, transform, anchor_position, color)
    @ccall StereoKitC.sprite_draw_at(sprite::sprite_t, transform::matrix, anchor_position::text_align_, color::color32)::Cvoid
end

struct line_point_t
    pt::vec3
    thickness::Cfloat
    color::color32
end

function line_add(start, _end, color_start, color_end, thickness)
    @ccall StereoKitC.line_add(start::vec3, _end::vec3, color_start::color32, color_end::color32, thickness::Cfloat)::Cvoid
end

function line_addv(start, _end)
    @ccall StereoKitC.line_addv(start::line_point_t, _end::line_point_t)::Cvoid
end

function line_add_axis(pose, size)
    @ccall StereoKitC.line_add_axis(pose::pose_t, size::Cfloat)::Cvoid
end

function line_add_list(points, count, color, thickness)
    @ccall StereoKitC.line_add_list(points::Ptr{vec3}, count::Int32, color::color32, thickness::Cfloat)::Cvoid
end

function line_add_listv(points, count)
    @ccall StereoKitC.line_add_listv(points::Ptr{line_point_t}, count::Int32)::Cvoid
end

@cenum render_clear_::UInt32 begin
    render_clear_none = 0
    render_clear_color = 1
    render_clear_depth = 2
    render_clear_all = 3
end

@cenum projection_::UInt32 begin
    projection_perspective = 0
    projection_ortho = 1
end

function render_set_clip(near_plane, far_plane)
    @ccall StereoKitC.render_set_clip(near_plane::Cfloat, far_plane::Cfloat)::Cvoid
end

function render_set_fov(field_of_view_degrees)
    @ccall StereoKitC.render_set_fov(field_of_view_degrees::Cfloat)::Cvoid
end

function render_set_ortho_clip(near_plane, far_plane)
    @ccall StereoKitC.render_set_ortho_clip(near_plane::Cfloat, far_plane::Cfloat)::Cvoid
end

function render_set_ortho_size(viewport_height_meters)
    @ccall StereoKitC.render_set_ortho_size(viewport_height_meters::Cfloat)::Cvoid
end

function render_set_projection(proj)
    @ccall StereoKitC.render_set_projection(proj::projection_)::Cvoid
end

# no prototype is found for this function at stereokit.h:1351:30, please use with caution
function render_get_projection()
    @ccall StereoKitC.render_get_projection()::projection_
end

# no prototype is found for this function at stereokit.h:1352:30, please use with caution
function render_get_cam_root()
    @ccall StereoKitC.render_get_cam_root()::matrix
end

function render_set_cam_root(cam_root)
    @ccall StereoKitC.render_set_cam_root(cam_root::Ptr{matrix})::Cvoid
end

function render_set_skytex(sky_texture)
    @ccall StereoKitC.render_set_skytex(sky_texture::tex_t)::Cvoid
end

# no prototype is found for this function at stereokit.h:1355:30, please use with caution
function render_get_skytex()
    @ccall StereoKitC.render_get_skytex()::tex_t
end

function render_set_skylight(light_info)
    @ccall StereoKitC.render_set_skylight(light_info::Ptr{spherical_harmonics_t})::Cvoid
end

# no prototype is found for this function at stereokit.h:1357:30, please use with caution
function render_get_skylight()
    @ccall StereoKitC.render_get_skylight()::spherical_harmonics_t
end

function render_set_filter(layer_filter)
    @ccall StereoKitC.render_set_filter(layer_filter::render_layer_)::Cvoid
end

# no prototype is found for this function at stereokit.h:1359:30, please use with caution
function render_get_filter()
    @ccall StereoKitC.render_get_filter()::render_layer_
end

function render_override_capture_filter(use_override_filter, layer_filter)
    @ccall StereoKitC.render_override_capture_filter(use_override_filter::bool32_t, layer_filter::render_layer_)::Cvoid
end

# no prototype is found for this function at stereokit.h:1361:30, please use with caution
function render_get_capture_filter()
    @ccall StereoKitC.render_get_capture_filter()::render_layer_
end

# no prototype is found for this function at stereokit.h:1362:30, please use with caution
function render_has_capture_filter()
    @ccall StereoKitC.render_has_capture_filter()::bool32_t
end

function render_set_clear_color(color_gamma)
    @ccall StereoKitC.render_set_clear_color(color_gamma::color128)::Cvoid
end

# no prototype is found for this function at stereokit.h:1364:30, please use with caution
function render_get_clear_color()
    @ccall StereoKitC.render_get_clear_color()::color128
end

function render_enable_skytex(show_sky)
    @ccall StereoKitC.render_enable_skytex(show_sky::bool32_t)::Cvoid
end

# no prototype is found for this function at stereokit.h:1366:30, please use with caution
function render_enabled_skytex()
    @ccall StereoKitC.render_enabled_skytex()::bool32_t
end

function render_global_texture(register_slot, texture)
    @ccall StereoKitC.render_global_texture(register_slot::Int32, texture::tex_t)::Cvoid
end

function render_add_mesh(mesh, material, transform, color_linear, layer)
    @ccall StereoKitC.render_add_mesh(mesh::mesh_t, material::material_t, transform::Ptr{matrix}, color_linear::color128, layer::render_layer_)::Cvoid
end

function render_add_model(model, transform, color_linear, layer)
    @ccall StereoKitC.render_add_model(model::model_t, transform::Ptr{matrix}, color_linear::color128, layer::render_layer_)::Cvoid
end

function render_blit(to_rendertarget, material)
    @ccall StereoKitC.render_blit(to_rendertarget::tex_t, material::material_t)::Cvoid
end

function render_screenshot(file, from_viewpt, at, width, height, field_of_view_degrees)
    @ccall StereoKitC.render_screenshot(file::Ptr{Cchar}, from_viewpt::vec3, at::vec3, width::Cint, height::Cint, field_of_view_degrees::Cfloat)::Cvoid
end

function render_to(to_rendertarget, camera, projection, layer_filter, clear, viewport)
    @ccall StereoKitC.render_to(to_rendertarget::tex_t, camera::Ptr{matrix}, projection::Ptr{matrix}, layer_filter::render_layer_, clear::render_clear_, viewport::rect_t)::Cvoid
end

function render_material_to(to_rendertarget, override_material, camera, projection, layer_filter, clear, viewport)
    @ccall StereoKitC.render_material_to(to_rendertarget::tex_t, override_material::material_t, camera::Ptr{matrix}, projection::Ptr{matrix}, layer_filter::render_layer_, clear::render_clear_, viewport::rect_t)::Cvoid
end

function render_get_device(device, context)
    @ccall StereoKitC.render_get_device(device::Ptr{Ptr{Cvoid}}, context::Ptr{Ptr{Cvoid}})::Cvoid
end

function hierarchy_push(transform)
    @ccall StereoKitC.hierarchy_push(transform::Ptr{matrix})::Cvoid
end

# no prototype is found for this function at stereokit.h:1379:22, please use with caution
function hierarchy_pop()
    @ccall StereoKitC.hierarchy_pop()::Cvoid
end

function hierarchy_set_enabled(enabled)
    @ccall StereoKitC.hierarchy_set_enabled(enabled::bool32_t)::Cvoid
end

# no prototype is found for this function at stereokit.h:1381:22, please use with caution
function hierarchy_is_enabled()
    @ccall StereoKitC.hierarchy_is_enabled()::bool32_t
end

# no prototype is found for this function at stereokit.h:1382:22, please use with caution
function hierarchy_to_world()
    @ccall StereoKitC.hierarchy_to_world()::Ptr{matrix}
end

# no prototype is found for this function at stereokit.h:1383:22, please use with caution
function hierarchy_to_local()
    @ccall StereoKitC.hierarchy_to_local()::Ptr{matrix}
end

function hierarchy_to_local_point(world_pt)
    @ccall StereoKitC.hierarchy_to_local_point(world_pt::Ptr{vec3})::vec3
end

function hierarchy_to_local_direction(world_dir)
    @ccall StereoKitC.hierarchy_to_local_direction(world_dir::Ptr{vec3})::vec3
end

function hierarchy_to_local_rotation(world_orientation)
    @ccall StereoKitC.hierarchy_to_local_rotation(world_orientation::Ptr{quat})::quat
end

function hierarchy_to_local_pose(world_pose)
    @ccall StereoKitC.hierarchy_to_local_pose(world_pose::Ptr{pose_t})::pose_t
end

function hierarchy_to_world_point(local_pt)
    @ccall StereoKitC.hierarchy_to_world_point(local_pt::Ptr{vec3})::vec3
end

function hierarchy_to_world_direction(local_dir)
    @ccall StereoKitC.hierarchy_to_world_direction(local_dir::Ptr{vec3})::vec3
end

function hierarchy_to_world_rotation(local_orientation)
    @ccall StereoKitC.hierarchy_to_world_rotation(local_orientation::Ptr{quat})::quat
end

function hierarchy_to_world_pose(local_pose)
    @ccall StereoKitC.hierarchy_to_world_pose(local_pose::Ptr{pose_t})::pose_t
end

struct sound_inst_t
    _id::UInt16
    _slot::Int16
end

function sound_find(id)
    @ccall StereoKitC.sound_find(id::Ptr{Cchar})::sound_t
end

function sound_set_id(sound, id)
    @ccall StereoKitC.sound_set_id(sound::sound_t, id::Ptr{Cchar})::Cvoid
end

function sound_create(filename)
    @ccall StereoKitC.sound_create(filename::Ptr{Cchar})::sound_t
end

function sound_create_stream(buffer_duration)
    @ccall StereoKitC.sound_create_stream(buffer_duration::Cfloat)::sound_t
end

function sound_create_samples(samples_at_48000s, sample_count)
    @ccall StereoKitC.sound_create_samples(samples_at_48000s::Ptr{Cfloat}, sample_count::uint64_t)::sound_t
end

function sound_generate(_function, duration)
    @ccall StereoKitC.sound_generate(_function::Ptr{Cvoid}, duration::Cfloat)::sound_t
end

function sound_write_samples(sound, samples, sample_count)
    @ccall StereoKitC.sound_write_samples(sound::sound_t, samples::Ptr{Cfloat}, sample_count::uint64_t)::Cvoid
end

function sound_read_samples(sound, out_samples, sample_count)
    @ccall StereoKitC.sound_read_samples(sound::sound_t, out_samples::Ptr{Cfloat}, sample_count::uint64_t)::uint64_t
end

function sound_unread_samples(sound)
    @ccall StereoKitC.sound_unread_samples(sound::sound_t)::uint64_t
end

function sound_total_samples(sound)
    @ccall StereoKitC.sound_total_samples(sound::sound_t)::uint64_t
end

function sound_cursor_samples(sound)
    @ccall StereoKitC.sound_cursor_samples(sound::sound_t)::uint64_t
end

function sound_play(sound, at, volume)
    @ccall StereoKitC.sound_play(sound::sound_t, at::vec3, volume::Cfloat)::sound_inst_t
end

function sound_duration(sound)
    @ccall StereoKitC.sound_duration(sound::sound_t)::Cfloat
end

function sound_addref(sound)
    @ccall StereoKitC.sound_addref(sound::sound_t)::Cvoid
end

function sound_release(sound)
    @ccall StereoKitC.sound_release(sound::sound_t)::Cvoid
end

function sound_inst_stop(sound_inst)
    @ccall StereoKitC.sound_inst_stop(sound_inst::sound_inst_t)::Cvoid
end

function sound_inst_is_playing(sound_inst)
    @ccall StereoKitC.sound_inst_is_playing(sound_inst::sound_inst_t)::bool32_t
end

function sound_inst_set_pos(sound_inst, pos)
    @ccall StereoKitC.sound_inst_set_pos(sound_inst::sound_inst_t, pos::vec3)::Cvoid
end

function sound_inst_get_pos(sound_inst)
    @ccall StereoKitC.sound_inst_get_pos(sound_inst::sound_inst_t)::vec3
end

function sound_inst_set_volume(sound_inst, volume)
    @ccall StereoKitC.sound_inst_set_volume(sound_inst::sound_inst_t, volume::Cfloat)::Cvoid
end

function sound_inst_get_volume(sound_inst)
    @ccall StereoKitC.sound_inst_get_volume(sound_inst::sound_inst_t)::Cfloat
end

# no prototype is found for this function at stereokit.h:1425:21, please use with caution
function mic_device_count()
    @ccall StereoKitC.mic_device_count()::Int32
end

function mic_device_name(index)
    @ccall StereoKitC.mic_device_name(index::Int32)::Ptr{Cchar}
end

function mic_start(device_name)
    @ccall StereoKitC.mic_start(device_name::Ptr{Cchar})::bool32_t
end

# no prototype is found for this function at stereokit.h:1428:21, please use with caution
function mic_stop()
    @ccall StereoKitC.mic_stop()::Cvoid
end

# no prototype is found for this function at stereokit.h:1429:21, please use with caution
function mic_get_stream()
    @ccall StereoKitC.mic_get_stream()::sound_t
end

# no prototype is found for this function at stereokit.h:1430:21, please use with caution
function mic_is_recording()
    @ccall StereoKitC.mic_is_recording()::bool32_t
end

struct file_filter_t
    ext::NTuple{32, Cchar}
end

@cenum picker_mode_::UInt32 begin
    picker_mode_open = 0
    picker_mode_save = 1
end

@cenum text_context_::UInt32 begin
    text_context_text = 1
    text_context_number = 2
    text_context_uri = 10
    text_context_password = 18
end

function platform_file_picker(mode, callback_data, on_confirm, filters, filter_count)
    @ccall StereoKitC.platform_file_picker(mode::picker_mode_, callback_data::Ptr{Cvoid}, on_confirm::Ptr{Cvoid}, filters::Ptr{file_filter_t}, filter_count::Int32)::Cvoid
end

function platform_file_picker_sz(mode, callback_data, on_confirm, filters, filter_count)
    @ccall StereoKitC.platform_file_picker_sz(mode::picker_mode_, callback_data::Ptr{Cvoid}, on_confirm::Ptr{Cvoid}, filters::Ptr{file_filter_t}, filter_count::Int32)::Cvoid
end

# no prototype is found for this function at stereokit.h:1467:17, please use with caution
function platform_file_picker_close()
    @ccall StereoKitC.platform_file_picker_close()::Cvoid
end

# no prototype is found for this function at stereokit.h:1468:17, please use with caution
function platform_file_picker_visible()
    @ccall StereoKitC.platform_file_picker_visible()::bool32_t
end

function platform_read_file(filename_utf8, out_data, out_size)
    @ccall StereoKitC.platform_read_file(filename_utf8::Ptr{Cchar}, out_data::Ptr{Ptr{Cvoid}}, out_size::Ptr{Csize_t})::bool32_t
end

function platform_write_file(filename_utf8, data, size)
    @ccall StereoKitC.platform_write_file(filename_utf8::Ptr{Cchar}, data::Ptr{Cvoid}, size::Csize_t)::bool32_t
end

# no prototype is found for this function at stereokit.h:1472:17, please use with caution
function platform_keyboard_get_force_fallback()
    @ccall StereoKitC.platform_keyboard_get_force_fallback()::bool32_t
end

function platform_keyboard_set_force_fallback(force_fallback)
    @ccall StereoKitC.platform_keyboard_set_force_fallback(force_fallback::bool32_t)::Cvoid
end

function platform_keyboard_show(visible, type)
    @ccall StereoKitC.platform_keyboard_show(visible::bool32_t, type::text_context_)::Cvoid
end

# no prototype is found for this function at stereokit.h:1475:17, please use with caution
function platform_keyboard_visible()
    @ccall StereoKitC.platform_keyboard_visible()::bool32_t
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
    button_state_any = 2147483647
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
    key_multiply = 106
    key_add = 107
    key_subtract = 109
    key_decimal = 110
    key_divide = 111
    key_MAX = 255
end

function input_pointer_count(filter)
    @ccall StereoKitC.input_pointer_count(filter::input_source_)::Cint
end

function input_pointer(index, filter)
    @ccall StereoKitC.input_pointer(index::Int32, filter::input_source_)::pointer_t
end

function input_hand(hand)
    @ccall StereoKitC.input_hand(hand::handed_)::Ptr{hand_t}
end

function input_hand_override(hand, hand_joints)
    @ccall StereoKitC.input_hand_override(hand::handed_, hand_joints::Ptr{hand_joint_t})::Cvoid
end

function input_controller(hand)
    @ccall StereoKitC.input_controller(hand::handed_)::Ptr{controller_t}
end

# no prototype is found for this function at stereokit.h:1826:30, please use with caution
function input_controller_menu()
    @ccall StereoKitC.input_controller_menu()::button_state_
end

# no prototype is found for this function at stereokit.h:1827:30, please use with caution
function input_head()
    @ccall StereoKitC.input_head()::Ptr{pose_t}
end

# no prototype is found for this function at stereokit.h:1828:30, please use with caution
function input_eyes()
    @ccall StereoKitC.input_eyes()::Ptr{pose_t}
end

# no prototype is found for this function at stereokit.h:1829:30, please use with caution
function input_eyes_tracked()
    @ccall StereoKitC.input_eyes_tracked()::button_state_
end

# no prototype is found for this function at stereokit.h:1830:30, please use with caution
function input_mouse()
    @ccall StereoKitC.input_mouse()::Ptr{mouse_t}
end

function input_key(key)
    @ccall StereoKitC.input_key(key::key_)::button_state_
end

# no prototype is found for this function at stereokit.h:1832:30, please use with caution
function input_text_consume()
    @ccall StereoKitC.input_text_consume()::char32_t
end

# no prototype is found for this function at stereokit.h:1833:30, please use with caution
function input_text_reset()
    @ccall StereoKitC.input_text_reset()::Cvoid
end

function input_hand_visible(hand, visible)
    @ccall StereoKitC.input_hand_visible(hand::handed_, visible::bool32_t)::Cvoid
end

function input_hand_solid(hand, solid)
    @ccall StereoKitC.input_hand_solid(hand::handed_, solid::bool32_t)::Cvoid
end

function input_hand_material(hand, material)
    @ccall StereoKitC.input_hand_material(hand::handed_, material::material_t)::Cvoid
end

function input_subscribe(source, event, event_callback)
    @ccall StereoKitC.input_subscribe(source::input_source_, event::button_state_, event_callback::Ptr{Cvoid})::Cvoid
end

function input_unsubscribe(source, event, event_callback)
    @ccall StereoKitC.input_unsubscribe(source::input_source_, event::button_state_, event_callback::Ptr{Cvoid})::Cvoid
end

function input_fire_event(source, event, pointer)
    @ccall StereoKitC.input_fire_event(source::input_source_, event::button_state_, pointer::Ptr{pointer_t})::Cvoid
end

@cenum world_refresh_::UInt32 begin
    world_refresh_area = 0
    world_refresh_timer = 1
end

# no prototype is found for this function at stereokit.h:1859:23, please use with caution
function world_has_bounds()
    @ccall StereoKitC.world_has_bounds()::bool32_t
end

# no prototype is found for this function at stereokit.h:1860:23, please use with caution
function world_get_bounds_size()
    @ccall StereoKitC.world_get_bounds_size()::vec2
end

# no prototype is found for this function at stereokit.h:1861:23, please use with caution
function world_get_bounds_pose()
    @ccall StereoKitC.world_get_bounds_pose()::pose_t
end

function world_from_spatial_graph(spatial_graph_node_id, dynamic, qpc_time)
    @ccall StereoKitC.world_from_spatial_graph(spatial_graph_node_id::Ptr{UInt8}, dynamic::bool32_t, qpc_time::Int64)::pose_t
end

function world_from_perception_anchor(perception_spatial_anchor)
    @ccall StereoKitC.world_from_perception_anchor(perception_spatial_anchor::Ptr{Cvoid})::pose_t
end

function world_try_from_spatial_graph(spatial_graph_node_id, dynamic, qpc_time, out_pose)
    @ccall StereoKitC.world_try_from_spatial_graph(spatial_graph_node_id::Ptr{UInt8}, dynamic::bool32_t, qpc_time::Int64, out_pose::Ptr{pose_t})::bool32_t
end

function world_try_from_perception_anchor(perception_spatial_anchor, out_pose)
    @ccall StereoKitC.world_try_from_perception_anchor(perception_spatial_anchor::Ptr{Cvoid}, out_pose::Ptr{pose_t})::bool32_t
end

function world_raycast(ray, out_intersection)
    @ccall StereoKitC.world_raycast(ray::ray_t, out_intersection::Ptr{ray_t})::bool32_t
end

function world_set_occlusion_enabled(enabled)
    @ccall StereoKitC.world_set_occlusion_enabled(enabled::bool32_t)::Cvoid
end

# no prototype is found for this function at stereokit.h:1868:23, please use with caution
function world_get_occlusion_enabled()
    @ccall StereoKitC.world_get_occlusion_enabled()::bool32_t
end

function world_set_raycast_enabled(enabled)
    @ccall StereoKitC.world_set_raycast_enabled(enabled::bool32_t)::Cvoid
end

# no prototype is found for this function at stereokit.h:1870:23, please use with caution
function world_get_raycast_enabled()
    @ccall StereoKitC.world_get_raycast_enabled()::bool32_t
end

function world_set_occlusion_material(material)
    @ccall StereoKitC.world_set_occlusion_material(material::material_t)::Cvoid
end

# no prototype is found for this function at stereokit.h:1872:23, please use with caution
function world_get_occlusion_material()
    @ccall StereoKitC.world_get_occlusion_material()::material_t
end

function world_set_refresh_type(refresh_type)
    @ccall StereoKitC.world_set_refresh_type(refresh_type::world_refresh_)::Cvoid
end

# no prototype is found for this function at stereokit.h:1874:23, please use with caution
function world_get_refresh_type()
    @ccall StereoKitC.world_get_refresh_type()::world_refresh_
end

function world_set_refresh_radius(radius_meters)
    @ccall StereoKitC.world_set_refresh_radius(radius_meters::Cfloat)::Cvoid
end

# no prototype is found for this function at stereokit.h:1876:23, please use with caution
function world_get_refresh_radius()
    @ccall StereoKitC.world_get_refresh_radius()::Cfloat
end

function world_set_refresh_interval(every_seconds)
    @ccall StereoKitC.world_set_refresh_interval(every_seconds::Cfloat)::Cvoid
end

# no prototype is found for this function at stereokit.h:1878:23, please use with caution
function world_get_refresh_interval()
    @ccall StereoKitC.world_get_refresh_interval()::Cfloat
end

@cenum backend_xr_type_::UInt32 begin
    backend_xr_type_none = 0
    backend_xr_type_simulator = 1
    backend_xr_type_openxr = 2
    backend_xr_type_webxr = 3
end

@cenum backend_platform_::UInt32 begin
    backend_platform_win32 = 0
    backend_platform_uwp = 1
    backend_platform_linux = 2
    backend_platform_android = 3
    backend_platform_web = 4
end

@cenum backend_graphics_::UInt32 begin
    backend_graphics_none = 0
    backend_graphics_d3d11 = 1
end

const openxr_handle_t = uint64_t

# no prototype is found for this function at stereokit.h:1926:26, please use with caution
function backend_xr_get_type()
    @ccall StereoKitC.backend_xr_get_type()::backend_xr_type_
end

# no prototype is found for this function at stereokit.h:1927:26, please use with caution
function backend_openxr_get_instance()
    @ccall StereoKitC.backend_openxr_get_instance()::openxr_handle_t
end

# no prototype is found for this function at stereokit.h:1928:26, please use with caution
function backend_openxr_get_session()
    @ccall StereoKitC.backend_openxr_get_session()::openxr_handle_t
end

# no prototype is found for this function at stereokit.h:1929:26, please use with caution
function backend_openxr_get_space()
    @ccall StereoKitC.backend_openxr_get_space()::openxr_handle_t
end

# no prototype is found for this function at stereokit.h:1930:26, please use with caution
function backend_openxr_get_time()
    @ccall StereoKitC.backend_openxr_get_time()::Int64
end

# no prototype is found for this function at stereokit.h:1931:26, please use with caution
function backend_openxr_get_eyes_sample_time()
    @ccall StereoKitC.backend_openxr_get_eyes_sample_time()::Int64
end

function backend_openxr_get_function(function_name)
    @ccall StereoKitC.backend_openxr_get_function(function_name::Ptr{Cchar})::Ptr{Cvoid}
end

function backend_openxr_ext_enabled(extension_name)
    @ccall StereoKitC.backend_openxr_ext_enabled(extension_name::Ptr{Cchar})::bool32_t
end

function backend_openxr_ext_request(extension_name)
    @ccall StereoKitC.backend_openxr_ext_request(extension_name::Ptr{Cchar})::Cvoid
end

function backend_openxr_composition_layer(XrCompositionLayerBaseHeader, layer_size, sort_order)
    @ccall StereoKitC.backend_openxr_composition_layer(XrCompositionLayerBaseHeader::Ptr{Cvoid}, layer_size::Int32, sort_order::Int32)::Cvoid
end

# no prototype is found for this function at stereokit.h:1937:26, please use with caution
function backend_platform_get()
    @ccall StereoKitC.backend_platform_get()::backend_platform_
end

# no prototype is found for this function at stereokit.h:1938:26, please use with caution
function backend_android_get_java_vm()
    @ccall StereoKitC.backend_android_get_java_vm()::Ptr{Cvoid}
end

# no prototype is found for this function at stereokit.h:1939:26, please use with caution
function backend_android_get_activity()
    @ccall StereoKitC.backend_android_get_activity()::Ptr{Cvoid}
end

# no prototype is found for this function at stereokit.h:1940:26, please use with caution
function backend_android_get_jni_env()
    @ccall StereoKitC.backend_android_get_jni_env()::Ptr{Cvoid}
end

# no prototype is found for this function at stereokit.h:1942:26, please use with caution
function backend_graphics_get()
    @ccall StereoKitC.backend_graphics_get()::backend_graphics_
end

# no prototype is found for this function at stereokit.h:1943:26, please use with caution
function backend_d3d11_get_d3d_device()
    @ccall StereoKitC.backend_d3d11_get_d3d_device()::Ptr{Cvoid}
end

# no prototype is found for this function at stereokit.h:1944:26, please use with caution
function backend_d3d11_get_d3d_context()
    @ccall StereoKitC.backend_d3d11_get_d3d_context()::Ptr{Cvoid}
end

@cenum log_colors_::UInt32 begin
    log_colors_ansi = 0
    log_colors_none = 1
end

function log_diag(text)
    @ccall StereoKitC.log_diag(text::Ptr{Cchar})::Cvoid
end

function log_info(text)
    @ccall StereoKitC.log_info(text::Ptr{Cchar})::Cvoid
end

function log_warn(text)
    @ccall StereoKitC.log_warn(text::Ptr{Cchar})::Cvoid
end

function log_err(text)
    @ccall StereoKitC.log_err(text::Ptr{Cchar})::Cvoid
end

function log_write(level, text)
    @ccall StereoKitC.log_write(level::log_, text::Ptr{Cchar})::Cvoid
end

function log_set_filter(level)
    @ccall StereoKitC.log_set_filter(level::log_)::Cvoid
end

function log_set_colors(colors)
    @ccall StereoKitC.log_set_colors(colors::log_colors_)::Cvoid
end

function log_subscribe(on_log)
    @ccall StereoKitC.log_subscribe(on_log::Ptr{Cvoid})::Cvoid
end

function log_unsubscribe(on_log)
    @ccall StereoKitC.log_unsubscribe(on_log::Ptr{Cvoid})::Cvoid
end

function assets_releaseref_threadsafe(asset)
    @ccall StereoKitC.assets_releaseref_threadsafe(asset::Ptr{Cvoid})::Cvoid
end

# no prototype is found for this function at stereokit.h:1977:16, please use with caution
function assets_current_task()
    @ccall StereoKitC.assets_current_task()::Int32
end

# no prototype is found for this function at stereokit.h:1978:16, please use with caution
function assets_total_tasks()
    @ccall StereoKitC.assets_total_tasks()::Int32
end

# no prototype is found for this function at stereokit.h:1979:16, please use with caution
function assets_current_task_priority()
    @ccall StereoKitC.assets_current_task_priority()::Int32
end

function assets_block_for_priority(priority)
    @ccall StereoKitC.assets_block_for_priority(priority::Int32)::Cvoid
end

@cenum ui_move_::UInt32 begin
    ui_move_exact = 0
    ui_move_face_user = 1
    ui_move_pos_only = 2
    ui_move_none = 3
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
    ui_vis_separator = 10
    ui_vis_slider_line = 11
    ui_vis_slider_push = 12
    ui_vis_slider_pinch = 13
    ui_vis_max = 14
end

@cenum ui_color_::UInt32 begin
    ui_color_primary = 0
    ui_color_background = 1
    ui_color_common = 2
    ui_color_complement = 3
    ui_color_text = 4
    ui_color_max = 5
end

@cenum ui_pad_::UInt32 begin
    ui_pad_none = 0
    ui_pad_inside = 1
    ui_pad_outside = 2
end

@cenum ui_btn_layout_::UInt32 begin
    ui_btn_layout_left = 0
    ui_btn_layout_right = 1
    ui_btn_layout_center = 2
    ui_btn_layout_center_no_text = 3
end

struct ui_settings_t
    padding::Cfloat
    gutter::Cfloat
    depth::Cfloat
    backplate_depth::Cfloat
    backplate_border::Cfloat
end

function ui_quadrant_size_verts(ref_vertices, vertex_count, overflow_percent)
    @ccall StereoKitC.ui_quadrant_size_verts(ref_vertices::Ptr{vert_t}, vertex_count::Int32, overflow_percent::Cfloat)::Cvoid
end

function ui_quadrant_size_mesh(ref_mesh, overflow_percent)
    @ccall StereoKitC.ui_quadrant_size_mesh(ref_mesh::mesh_t, overflow_percent::Cfloat)::Cvoid
end

function ui_show_volumes(show)
    @ccall StereoKitC.ui_show_volumes(show::bool32_t)::Cvoid
end

function ui_enable_far_interact(enable)
    @ccall StereoKitC.ui_enable_far_interact(enable::bool32_t)::Cvoid
end

# no prototype is found for this function at stereokit_ui.h:81:17, please use with caution
function ui_far_interact_enabled()
    @ccall StereoKitC.ui_far_interact_enabled()::bool32_t
end

function ui_settings(settings)
    @ccall StereoKitC.ui_settings(settings::ui_settings_t)::Cvoid
end

# no prototype is found for this function at stereokit_ui.h:83:17, please use with caution
function ui_get_padding()
    @ccall StereoKitC.ui_get_padding()::Cfloat
end

# no prototype is found for this function at stereokit_ui.h:84:17, please use with caution
function ui_get_gutter()
    @ccall StereoKitC.ui_get_gutter()::Cfloat
end

function ui_set_color(color)
    @ccall StereoKitC.ui_set_color(color::color128)::Cvoid
end

function ui_set_theme_color(color_type, color_gamma)
    @ccall StereoKitC.ui_set_theme_color(color_type::ui_color_, color_gamma::color128)::Cvoid
end

function ui_get_theme_color(color_type)
    @ccall StereoKitC.ui_get_theme_color(color_type::ui_color_)::color128
end

function ui_set_element_visual(element_visual, mesh, material, min_size)
    @ccall StereoKitC.ui_set_element_visual(element_visual::ui_vis_, mesh::mesh_t, material::material_t, min_size::vec2)::Cvoid
end

function ui_push_text_style(style)
    @ccall StereoKitC.ui_push_text_style(style::text_style_t)::Cvoid
end

# no prototype is found for this function at stereokit_ui.h:91:17, please use with caution
function ui_pop_text_style()
    @ccall StereoKitC.ui_pop_text_style()::Cvoid
end

function ui_push_tint(tint_gamma)
    @ccall StereoKitC.ui_push_tint(tint_gamma::color128)::Cvoid
end

# no prototype is found for this function at stereokit_ui.h:93:17, please use with caution
function ui_pop_tint()
    @ccall StereoKitC.ui_pop_tint()::Cvoid
end

function ui_push_enabled(enabled)
    @ccall StereoKitC.ui_push_enabled(enabled::bool32_t)::Cvoid
end

# no prototype is found for this function at stereokit_ui.h:95:17, please use with caution
function ui_pop_enabled()
    @ccall StereoKitC.ui_pop_enabled()::Cvoid
end

function ui_push_preserve_keyboard(preserve_keyboard)
    @ccall StereoKitC.ui_push_preserve_keyboard(preserve_keyboard::bool32_t)::Cvoid
end

# no prototype is found for this function at stereokit_ui.h:97:17, please use with caution
function ui_pop_preserve_keyboard()
    @ccall StereoKitC.ui_pop_preserve_keyboard()::Cvoid
end

function ui_push_surface(surface_pose, layout_start, layout_dimensions)
    @ccall StereoKitC.ui_push_surface(surface_pose::pose_t, layout_start::vec3, layout_dimensions::vec2)::Cvoid
end

# no prototype is found for this function at stereokit_ui.h:99:17, please use with caution
function ui_pop_surface()
    @ccall StereoKitC.ui_pop_surface()::Cvoid
end

function ui_push_id(id)
    @ccall StereoKitC.ui_push_id(id::Ptr{Cchar})::uint64_t
end

function ui_push_id_16(id)
    @ccall StereoKitC.ui_push_id_16(id::Ptr{char16_t})::uint64_t
end

function ui_push_idi(id)
    @ccall StereoKitC.ui_push_idi(id::Int32)::uint64_t
end

# no prototype is found for this function at stereokit_ui.h:103:17, please use with caution
function ui_pop_id()
    @ccall StereoKitC.ui_pop_id()::Cvoid
end

function ui_stack_hash(string)
    @ccall StereoKitC.ui_stack_hash(string::Ptr{Cchar})::uint64_t
end

function ui_stack_hash_16(string)
    @ccall StereoKitC.ui_stack_hash_16(string::Ptr{char16_t})::uint64_t
end

function ui_layout_area(start, dimensions)
    @ccall StereoKitC.ui_layout_area(start::vec3, dimensions::vec2)::Cvoid
end

# no prototype is found for this function at stereokit_ui.h:108:17, please use with caution
function ui_layout_remaining()
    @ccall StereoKitC.ui_layout_remaining()::vec2
end

# no prototype is found for this function at stereokit_ui.h:109:17, please use with caution
function ui_layout_at()
    @ccall StereoKitC.ui_layout_at()::vec3
end

# no prototype is found for this function at stereokit_ui.h:110:17, please use with caution
function ui_layout_last()
    @ccall StereoKitC.ui_layout_last()::bounds_t
end

function ui_layout_reserve(size, add_padding, depth)
    @ccall StereoKitC.ui_layout_reserve(size::vec2, add_padding::bool32_t, depth::Cfloat)::bounds_t
end

function ui_last_element_hand_used(hand)
    @ccall StereoKitC.ui_last_element_hand_used(hand::handed_)::button_state_
end

# no prototype is found for this function at stereokit_ui.h:114:22, please use with caution
function ui_last_element_active()
    @ccall StereoKitC.ui_last_element_active()::button_state_
end

# no prototype is found for this function at stereokit_ui.h:115:22, please use with caution
function ui_last_element_focused()
    @ccall StereoKitC.ui_last_element_focused()::button_state_
end

# no prototype is found for this function at stereokit_ui.h:117:17, please use with caution
function ui_area_remaining()
    @ccall StereoKitC.ui_area_remaining()::vec2
end

# no prototype is found for this function at stereokit_ui.h:118:17, please use with caution
function ui_nextline()
    @ccall StereoKitC.ui_nextline()::Cvoid
end

# no prototype is found for this function at stereokit_ui.h:119:17, please use with caution
function ui_sameline()
    @ccall StereoKitC.ui_sameline()::Cvoid
end

# no prototype is found for this function at stereokit_ui.h:120:17, please use with caution
function ui_line_height()
    @ccall StereoKitC.ui_line_height()::Cfloat
end

function ui_space(space)
    @ccall StereoKitC.ui_space(space::Cfloat)::Cvoid
end

function ui_is_interacting(hand)
    @ccall StereoKitC.ui_is_interacting(hand::handed_)::bool32_t
end

function ui_button_behavior(window_relative_pos, size, id, finger_offset, button_state, focus_state)
    @ccall StereoKitC.ui_button_behavior(window_relative_pos::vec3, size::vec2, id::uint64_t, finger_offset::Ptr{Cfloat}, button_state::Ptr{button_state_}, focus_state::Ptr{button_state_})::Cvoid
end

function ui_model_at(model, start, size, color)
    @ccall StereoKitC.ui_model_at(model::model_t, start::vec3, size::vec3, color::color128)::Cvoid
end

function ui_volumei_at(id, bounds, interact_type, out_opt_hand, out_opt_focus_state)
    @ccall StereoKitC.ui_volumei_at(id::Ptr{Cchar}, bounds::bounds_t, interact_type::ui_confirm_, out_opt_hand::Ptr{handed_}, out_opt_focus_state::Ptr{button_state_})::button_state_
end

function ui_volumei_at_16(id, bounds, interact_type, out_opt_hand, out_opt_focus_state)
    @ccall StereoKitC.ui_volumei_at_16(id::Ptr{char16_t}, bounds::bounds_t, interact_type::ui_confirm_, out_opt_hand::Ptr{handed_}, out_opt_focus_state::Ptr{button_state_})::button_state_
end

function ui_volume_at(id, bounds)
    @ccall StereoKitC.ui_volume_at(id::Ptr{Cchar}, bounds::bounds_t)::bool32_t
end

function ui_volume_at_16(id, bounds)
    @ccall StereoKitC.ui_volume_at_16(id::Ptr{char16_t}, bounds::bounds_t)::bool32_t
end

function ui_interact_volume_at(bounds, out_hand)
    @ccall StereoKitC.ui_interact_volume_at(bounds::bounds_t, out_hand::Ptr{handed_})::button_state_
end

function ui_button_at(text, window_relative_pos, size)
    @ccall StereoKitC.ui_button_at(text::Ptr{Cchar}, window_relative_pos::vec3, size::vec2)::bool32_t
end

function ui_button_at_16(text, window_relative_pos, size)
    @ccall StereoKitC.ui_button_at_16(text::Ptr{char16_t}, window_relative_pos::vec3, size::vec2)::bool32_t
end

function ui_button_img_at(text, image, image_layout, window_relative_pos, size)
    @ccall StereoKitC.ui_button_img_at(text::Ptr{Cchar}, image::sprite_t, image_layout::ui_btn_layout_, window_relative_pos::vec3, size::vec2)::bool32_t
end

function ui_button_img_at_16(text, image, image_layout, window_relative_pos, size)
    @ccall StereoKitC.ui_button_img_at_16(text::Ptr{char16_t}, image::sprite_t, image_layout::ui_btn_layout_, window_relative_pos::vec3, size::vec2)::bool32_t
end

function ui_button_round_at(text, image, window_relative_pos, diameter)
    @ccall StereoKitC.ui_button_round_at(text::Ptr{Cchar}, image::sprite_t, window_relative_pos::vec3, diameter::Cfloat)::bool32_t
end

function ui_button_round_at_16(text, image, window_relative_pos, diameter)
    @ccall StereoKitC.ui_button_round_at_16(text::Ptr{char16_t}, image::sprite_t, window_relative_pos::vec3, diameter::Cfloat)::bool32_t
end

function ui_toggle_at(text, pressed, window_relative_pos, size)
    @ccall StereoKitC.ui_toggle_at(text::Ptr{Cchar}, pressed::Ptr{bool32_t}, window_relative_pos::vec3, size::vec2)::bool32_t
end

function ui_toggle_at_16(text, pressed, window_relative_pos, size)
    @ccall StereoKitC.ui_toggle_at_16(text::Ptr{char16_t}, pressed::Ptr{bool32_t}, window_relative_pos::vec3, size::vec2)::bool32_t
end

function ui_progress_bar_at(percent, window_relative_pos, size)
    @ccall StereoKitC.ui_progress_bar_at(percent::Cfloat, window_relative_pos::vec3, size::vec2)::Cvoid
end

function ui_hslider_at(id, value, min, max, step, window_relative_pos, size, confirm_method)
    @ccall StereoKitC.ui_hslider_at(id::Ptr{Cchar}, value::Ptr{Cfloat}, min::Cfloat, max::Cfloat, step::Cfloat, window_relative_pos::vec3, size::vec2, confirm_method::ui_confirm_)::bool32_t
end

function ui_hslider_at_16(id, value, min, max, step, window_relative_pos, size, confirm_method)
    @ccall StereoKitC.ui_hslider_at_16(id::Ptr{char16_t}, value::Ptr{Cfloat}, min::Cfloat, max::Cfloat, step::Cfloat, window_relative_pos::vec3, size::vec2, confirm_method::ui_confirm_)::bool32_t
end

function ui_hslider_at_f64(id, value, min, max, step, window_relative_pos, size, confirm_method)
    @ccall StereoKitC.ui_hslider_at_f64(id::Ptr{Cchar}, value::Ptr{Cdouble}, min::Cdouble, max::Cdouble, step::Cdouble, window_relative_pos::vec3, size::vec2, confirm_method::ui_confirm_)::bool32_t
end

function ui_hslider_at_f64_16(id, value, min, max, step, window_relative_pos, size, confirm_method)
    @ccall StereoKitC.ui_hslider_at_f64_16(id::Ptr{char16_t}, value::Ptr{Cdouble}, min::Cdouble, max::Cdouble, step::Cdouble, window_relative_pos::vec3, size::vec2, confirm_method::ui_confirm_)::bool32_t
end

# no prototype is found for this function at stereokit_ui.h:146:17, please use with caution
function ui_hseparator()
    @ccall StereoKitC.ui_hseparator()::Cvoid
end

function ui_label(text, use_padding)
    @ccall StereoKitC.ui_label(text::Ptr{Cchar}, use_padding::bool32_t)::Cvoid
end

function ui_label_16(text, use_padding)
    @ccall StereoKitC.ui_label_16(text::Ptr{char16_t}, use_padding::bool32_t)::Cvoid
end

function ui_label_sz(text, size)
    @ccall StereoKitC.ui_label_sz(text::Ptr{Cchar}, size::vec2)::Cvoid
end

function ui_label_sz_16(text, size)
    @ccall StereoKitC.ui_label_sz_16(text::Ptr{char16_t}, size::vec2)::Cvoid
end

function ui_text(text, text_align)
    @ccall StereoKitC.ui_text(text::Ptr{Cchar}, text_align::text_align_)::Cvoid
end

function ui_text_16(text, text_align)
    @ccall StereoKitC.ui_text_16(text::Ptr{char16_t}, text_align::text_align_)::Cvoid
end

function ui_image(image, size)
    @ccall StereoKitC.ui_image(image::sprite_t, size::vec2)::Cvoid
end

function ui_button(text)
    @ccall StereoKitC.ui_button(text::Ptr{Cchar})::bool32_t
end

function ui_button_16(text)
    @ccall StereoKitC.ui_button_16(text::Ptr{char16_t})::bool32_t
end

function ui_button_sz(text, size)
    @ccall StereoKitC.ui_button_sz(text::Ptr{Cchar}, size::vec2)::bool32_t
end

function ui_button_sz_16(text, size)
    @ccall StereoKitC.ui_button_sz_16(text::Ptr{char16_t}, size::vec2)::bool32_t
end

function ui_button_img(text, image, image_layout)
    @ccall StereoKitC.ui_button_img(text::Ptr{Cchar}, image::sprite_t, image_layout::ui_btn_layout_)::bool32_t
end

function ui_button_img_16(text, image, image_layout)
    @ccall StereoKitC.ui_button_img_16(text::Ptr{char16_t}, image::sprite_t, image_layout::ui_btn_layout_)::bool32_t
end

function ui_button_img_sz(text, image, image_layout, size)
    @ccall StereoKitC.ui_button_img_sz(text::Ptr{Cchar}, image::sprite_t, image_layout::ui_btn_layout_, size::vec2)::bool32_t
end

function ui_button_img_sz_16(text, image, image_layout, size)
    @ccall StereoKitC.ui_button_img_sz_16(text::Ptr{char16_t}, image::sprite_t, image_layout::ui_btn_layout_, size::vec2)::bool32_t
end

function ui_button_round(id, image, diameter)
    @ccall StereoKitC.ui_button_round(id::Ptr{Cchar}, image::sprite_t, diameter::Cfloat)::bool32_t
end

function ui_button_round_16(id, image, diameter)
    @ccall StereoKitC.ui_button_round_16(id::Ptr{char16_t}, image::sprite_t, diameter::Cfloat)::bool32_t
end

function ui_toggle(text, pressed)
    @ccall StereoKitC.ui_toggle(text::Ptr{Cchar}, pressed::Ptr{bool32_t})::bool32_t
end

function ui_toggle_16(text, pressed)
    @ccall StereoKitC.ui_toggle_16(text::Ptr{char16_t}, pressed::Ptr{bool32_t})::bool32_t
end

function ui_toggle_sz(text, pressed, size)
    @ccall StereoKitC.ui_toggle_sz(text::Ptr{Cchar}, pressed::Ptr{bool32_t}, size::vec2)::bool32_t
end

function ui_toggle_sz_16(text, pressed, size)
    @ccall StereoKitC.ui_toggle_sz_16(text::Ptr{char16_t}, pressed::Ptr{bool32_t}, size::vec2)::bool32_t
end

function ui_model(model, ui_size, model_scale)
    @ccall StereoKitC.ui_model(model::model_t, ui_size::vec2, model_scale::Cfloat)::Cvoid
end

function ui_input(id, buffer, buffer_size, size, type)
    @ccall StereoKitC.ui_input(id::Ptr{Cchar}, buffer::Ptr{Cchar}, buffer_size::Int32, size::vec2, type::text_context_)::bool32_t
end

function ui_input_16(id, buffer, buffer_size, size, type)
    @ccall StereoKitC.ui_input_16(id::Ptr{char16_t}, buffer::Ptr{char16_t}, buffer_size::Int32, size::vec2, type::text_context_)::bool32_t
end

function ui_progress_bar(percent, width)
    @ccall StereoKitC.ui_progress_bar(percent::Cfloat, width::Cfloat)::Cvoid
end

function ui_hslider(id, value, min, max, step, width, confirm_method)
    @ccall StereoKitC.ui_hslider(id::Ptr{Cchar}, value::Ptr{Cfloat}, min::Cfloat, max::Cfloat, step::Cfloat, width::Cfloat, confirm_method::ui_confirm_)::bool32_t
end

function ui_hslider_16(id, value, min, max, step, width, confirm_method)
    @ccall StereoKitC.ui_hslider_16(id::Ptr{char16_t}, value::Ptr{Cfloat}, min::Cfloat, max::Cfloat, step::Cfloat, width::Cfloat, confirm_method::ui_confirm_)::bool32_t
end

function ui_hslider_f64(id, value, min, max, step, width, confirm_method)
    @ccall StereoKitC.ui_hslider_f64(id::Ptr{Cchar}, value::Ptr{Cdouble}, min::Cdouble, max::Cdouble, step::Cdouble, width::Cfloat, confirm_method::ui_confirm_)::bool32_t
end

function ui_hslider_f64_16(id, value, min, max, step, width, confirm_method)
    @ccall StereoKitC.ui_hslider_f64_16(id::Ptr{char16_t}, value::Ptr{Cdouble}, min::Cdouble, max::Cdouble, step::Cdouble, width::Cfloat, confirm_method::ui_confirm_)::bool32_t
end

function ui_handle_begin(text, movement, handle, draw, move_type)
    @ccall StereoKitC.ui_handle_begin(text::Ptr{Cchar}, movement::Ptr{pose_t}, handle::bounds_t, draw::bool32_t, move_type::ui_move_)::bool32_t
end

function ui_handle_begin_16(text, movement, handle, draw, move_type)
    @ccall StereoKitC.ui_handle_begin_16(text::Ptr{char16_t}, movement::Ptr{pose_t}, handle::bounds_t, draw::bool32_t, move_type::ui_move_)::bool32_t
end

# no prototype is found for this function at stereokit_ui.h:179:17, please use with caution
function ui_handle_end()
    @ccall StereoKitC.ui_handle_end()::Cvoid
end

function ui_window_begin(text, pose, size, window_type, move_type)
    @ccall StereoKitC.ui_window_begin(text::Ptr{Cchar}, pose::Ptr{pose_t}, size::vec2, window_type::ui_win_, move_type::ui_move_)::Cvoid
end

function ui_window_begin_16(text, pose, size, window_type, move_type)
    @ccall StereoKitC.ui_window_begin_16(text::Ptr{char16_t}, pose::Ptr{pose_t}, size::vec2, window_type::ui_win_, move_type::ui_move_)::Cvoid
end

# no prototype is found for this function at stereokit_ui.h:182:17, please use with caution
function ui_window_end()
    @ccall StereoKitC.ui_window_end()::Cvoid
end

function ui_panel_at(start, size, padding)
    @ccall StereoKitC.ui_panel_at(start::vec3, size::vec2, padding::ui_pad_)::Cvoid
end

function ui_panel_begin(padding)
    @ccall StereoKitC.ui_panel_begin(padding::ui_pad_)::Cvoid
end

# no prototype is found for this function at stereokit_ui.h:186:17, please use with caution
function ui_panel_end()
    @ccall StereoKitC.ui_panel_end()::Cvoid
end

const SK_VERSION_MAJOR = 0

const SK_VERSION_MINOR = 3

const SK_VERSION_PATCH = 6

const SK_VERSION_PRERELEASE = 0

# Skipping MacroDefinition: SK_DEPRECATED __attribute__ ( ( deprecated ) )

# Skipping MacroDefinition: SK_CONST static const

const SK_VERSION_ID = ((uint64_t(SK_VERSION_MAJOR) << 48 | uint64_t(SK_VERSION_MINOR) << 32) | uint64_t(SK_VERSION_PATCH) << 16) | uint64_t(SK_VERSION_PRERELEASE)

end # module
