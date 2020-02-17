class ChadStride < Formula
  desc "A small curses program to stride across your terminal"
  homepage ""
  url "https://github.com/sambattalio/chad_stride/archive/0.69420.tar.gz"
  sha256 "3ed0b5e5e860d6d445884272b5b9668156efd2e699a82abcf478833b444bfd9c"

  def install
    system "make"
    bin.install "chad_stride"
    system "ln", "-s", "#{bin}/chad_stride", "#{bin}/cs"
  end

  test do
    system "#{bin}/cs"
  end
end
