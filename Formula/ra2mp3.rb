class Ra2mp3 < Formula
  desc "Convert RealAudio (.ra/.ram/.rm) files to MP3 format using FFmpeg"
  homepage "https://github.com/wiiiimm/ra2mp3"
  url "https://github.com/wiiiimm/ra2mp3/archive/v1.5.2.tar.gz"
  sha256 "c887331c884a2c58cc51badfac0d49e70bc46c09cdccdd4de993911b621fc35f"
  license "MIT"

  depends_on "ffmpeg"

  def install
    bin.install "ra2mp3"
  end

  test do
    system "#{bin}/ra2mp3", "--version"
  end
end