 class Owncloud < Formula
  version = "0.0.2"
  desc "the simplest utilitu tool for owncloud"
  homepage "https://github.com/Cj-bc/owncloud"
  url "https://github.com/Cj-bc/owncloud/archive/v"+ version + ".tar.gz"
  head "https://github.com/Cj-bc/owncloud.git"
  sha256 "fd9e28eb345be363b099aea8e7f49b146477bd72af72adbb4cd8ac916adf593f"


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
