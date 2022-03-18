# 
# Automatically generated file
#

StereoKitC = joinpath(@__DIR__, "StereoKitC\\runtimes\\win-x64\\native\\StereoKitC.dll")

function __init__()
    # TODO - make a proper 'artifact'
    chmod(StereoKitC, filemode(StereoKitC) | 0o755) # dll needs to executable
end
