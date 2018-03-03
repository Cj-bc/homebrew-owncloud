 class Owncloud < Formula
  version = "0.1.2"
  desc "the simplest utility tool for owncloud"
  homepage "https://github.com/Cj-bc/owncloud"
  url "https://github.com/Cj-bc/owncloud/archive/v"+ version + ".tar.gz"
  head "https://github.com/Cj-bc/owncloud.git"
  sha256 "3019ca6c0b2799d79421e3319b0c47ab802894c69bd1ebdcfddf58ba618bad7a"


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
