class ChadStride < Formula
  desc "A small curses program to stride across your terminal"
  homepage ""
  url "https://github.com/sambattalio/chad_stride/archive/0.69.tar.gz"
  sha256 "4b5541728629568d3d7078391b1944e02b13a62975641faa50bf814bc63df0f8"

  def install
    system "make"
    bin.install "chad_stride"
    system "ln", "-s", "#{bin}/chad_stride", "#{bin}/cs"
  end

  test do
    system "#{bin}/cs"
  end
end
