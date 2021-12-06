# 
# Automatically generated file - do not edit
#

StereoKitC = joinpath(@__DIR__, "StereoKitC.dll")

function __init__()
    # TODO - make a proper 'artifact'
    chmod(StereoKitC, filemode(StereoKitC) | 0o755) # dll needs to executable
end
