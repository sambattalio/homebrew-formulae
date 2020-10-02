class ChadStride < Formula
  desc "A small curses program to stride across your terminal"
  homepage ""
  url "https://github.com/sambattalio/chad_stride/archive/0.6951.tar.gz"
  sha256 "71b44c8143b87abded997b6d77332dfa81e895f822eab025bb2f6fc5a2ca8caa"

  def install
    system "make"
    bin.install "chad_stride"
    system "ln", "-s", "#{bin}/chad_stride", "#{bin}/cs"
    man1.install "chad_stride.1"
  end

  test do
    system "#{bin}/cs"
  end
end
