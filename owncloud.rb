 class Owncloud < Formula
  version = "0.1.6"
  desc "the simplest utility tool for owncloud"
  homepage "https://github.com/Cj-bc/owncloud"
  url "https://github.com/Cj-bc/owncloud/archive/v"+ version + ".tar.gz"
  head "https://github.com/Cj-bc/owncloud.git"
  sha256 "72f4fa59a2f15a7a4a11b14636479d345505a5674c0be190d48e064e632a9112"


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
