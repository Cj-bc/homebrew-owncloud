 class Owncloud < Formula
  version = "0.1.0"
  desc "the simplest utility tool for owncloud"
  homepage "https://github.com/Cj-bc/owncloud"
  url "https://github.com/Cj-bc/owncloud/archive/v"+ version + ".tar.gz"
  head "https://github.com/Cj-bc/owncloud.git"
  sha256 "8c0dffcb9856d5f06bcc14ff96ca8338cc99f0934bc0c5dc497f3b3e6b522e21"


   def install
     ohai "renaming owncloud.sh"
     system "mv", "owncloud.sh", "owncloud"
     bin.install "owncloud"
     prefix.install Dir["func"], Dir["text"], ".sourcefiles", "test.sh"
  end

   test do
     system prefix/test.sh
  end
end
