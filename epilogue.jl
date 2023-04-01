# Helpers

Base.:(*)(a::vec3, b::vec3)::vec3 = vec3(a.x*b.x, a.y*b.y, a.z*b.z)
Base.:(+)(a::vec3, b::vec3)::vec3 = vec3(a.x+b.x, a.y+b.y, a.z+b.z)

function sk_renderloop(render::Function)::Void
    render_c = @cfunction($render, Void, ()) # Not supported on all cpu architectures
    if isinteractive()
        while sk_step(render_c) > 0; sleep(0.01) end
    else
        while sk_step(render_c) > 0; end
    end
end

# TODO - Is UTF8 OK?

function sk_init(;
    app_name::String = "",
    assets_folder::String = "",
    display_preference::display_mode_ = display_mode_mixedreality,
    blend_preference::display_blend_ = display_blend_any_transparent,
    no_flatscreen_fallback::Bool = false,
    depth_mode::depth_mode_ = depth_mode_balanced,
    log_filter::log_ = log_diagnostic,
    overlay_app::Bool = false,
    overlay_priority::Int = 0, 
    flatscreen_pos_x::Int = 0,
    flatscreen_pos_y::Int = 0, 
    flatscreen_width::Int = 0, 
    flatscreen_height::Int = 0, 
    disable_flatscreen_mr_sim::Bool = false,
    disable_unfocused_sleep::Bool = true)

    GC.@preserve app_name assets_folder begin 
        settings = sk_settings_t(
            pointer(app_name),
            pointer(assets_folder),
            display_preference,
            blend_preference,
            no_flatscreen_fallback,
            depth_mode,
            log_filter,
            overlay_app,
            overlay_priority,
            flatscreen_pos_x,
            flatscreen_pos_y,
            flatscreen_width,
            flatscreen_height,
            disable_flatscreen_mr_sim,
            disable_unfocused_sleep,
            C_NULL, 
            C_NULL
        )
        sk_init(settings)
    end
end