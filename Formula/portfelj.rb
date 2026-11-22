class Portfelj < Formula
    desc "IB flex report explorer and XML converter for eDavki"
    license "Proprietary"
    homepage "https://github.com/arnika-us/portfelj"
    version "0.6.1"

    on_arm do
        url "https://github.com/arnika-us/homebrew-portfelj/releases/download/v0.6.1/portfelj-cli-0.6.1-macos-arm64.tar.gz"
        sha256 "033c2eb8cdf9d66217c2b3ce633bcfb71693b1d4cf66e8121bb2ff0d2a63ccc1"
    end

    on_intel do
        url "https://github.com/arnika-us/homebrew-portfelj/releases/download/v0.6.1/portfelj-cli-0.6.1-macos-x64.tar.gz"
        sha256 "3b8a2e4212cd931ee2b0146ce0c0901b97589b1c4c972832a42ad2d49fadc467"
    end

    def install
        bin.install "portfelj"
        generate_completions_from_executable(bin/"portfelj", "completions")
    end
end
