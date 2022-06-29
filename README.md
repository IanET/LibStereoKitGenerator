# LibStereoKitGenerator

Generate thin Julia wrapper around StereoKitC

Headers from source (on github), dlls from nuget package

NB Package stereokit with tar -czvf win-x64.tar.gz ./win-x64

NB Create hashes with:

    using Tar, Inflate, SHA

    filename = "win-x64.tar.gz"
    println("sha256: ", bytes2hex(open(sha256, filename)))
    println("git-tree-sha1: ", Tar.tree_hash(IOBuffer(inflate_gzip(filename))))