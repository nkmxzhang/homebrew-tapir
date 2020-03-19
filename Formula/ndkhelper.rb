# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Ndkhelper < Formula
  desc "tools to manager Android NDK versions"
  homepage "https://github.com/nkmxzhang/homebrew-tapir"
  url "https://github.com/nkmxzhang/homebrew-tapir/releases/download/1.0.0/ndkhelper"
  sha256 "09688f8164e4a20193fff9d26b72746886021a34379d6e879482f32d8ebd97a5"
  version "v1.0.0"

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    bin.install "ndkhelper"
    # system "cmake", ".", *std_cmake_args
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test homebrew-tapir`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    output_s = shell_output("#{bin}/ndkhelper --version")
    assert_match "#{version}", "v"+output_s
  end
end
