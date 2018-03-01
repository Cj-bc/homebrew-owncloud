 class Owncloud < Formula
  version = "0.0.3"
  desc "the simplest utility tool for owncloud"
  homepage "https://github.com/Cj-bc/owncloud"
  url "https://github.com/Cj-bc/owncloud/archive/v"+ version + ".tar.gz"
  head "https://github.com/Cj-bc/owncloud.git"
  sha256 "e2a2ee34cda1611a137cafa6cd0edd00c67c642f4ea38ffa6bbcb7c0effb14cc"


   def install
     ohai "renaming owncloud.sh"
     system "mv", "owncloud.sh", "owncloud"
     bin.install "owncloud"
     prefix.install Dir["func"], Dir["text"], ".sourcefiles", "test.sh"
     prefix.install "docs/config"
  end

   test do
     system prefix+"/test.sh"
  end
end
