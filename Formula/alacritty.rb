class Alacritty < Formula
  desc "A cross-platform, GPU enhanced terminal emulator"
  homepage "https://github.com/jwilm/alacritty"
  head "git://github.com/jwilm/alacritty.git"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/alacritty"

    if OS.linux?
      install_linux
    end
  end

  def install_linux
    bin.install "Alacritty.desktop"
  end
end
