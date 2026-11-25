class Portfelj < Formula
    desc "IB flex report explorer and XML converter for eDavki"
    license "Proprietary"
    homepage "https://github.com/arnika-us/portfelj"
    version "0.7.0"

    on_arm do
        url "https://github.com/arnika-us/homebrew-portfelj/releases/download/v0.7.0/portfelj-cli-0.7.0-macos-arm64.tar.gz"
        sha256 "a77e61cd04c5def00b183e6513f2e744ab96f7591ef20f239d2d611cc4355b9e"
    end

    on_intel do
        url "https://github.com/arnika-us/homebrew-portfelj/releases/download/v0.7.0/portfelj-cli-0.7.0-macos-x64.tar.gz"
        sha256 "640ed1fd0e761a1267aabd12082cb5fb6d9d89f536d38732a257e85d85a70fda"
    end

    def install
        bin.install "portfelj"
        generate_completions_from_executable(bin/"portfelj", "completions")
    end
end
