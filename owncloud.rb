 class Owncloud < Formula
  version = "0.1.8"
  desc "the simplest utility tool for owncloud"
  homepage "https://github.com/Cj-bc/owncloud"
  url "https://github.com/Cj-bc/owncloud/archive/v"+ version + ".tar.gz"
  head "https://github.com/Cj-bc/owncloud.git"
  sha256 "1857fd4c947d4f973f2f76ced3c70e0005df6a297d57f7ecdcf5244b80dd60fc"


   def install
     ohai "renaming owncloud.sh"
     system "mv", "owncloud.sh", "owncloud"
     bin.install "owncloud"
     prefix.install Dir["func"], Dir["text"], ".sourcefiles", "test.sh"
  end

   test do
     system "`brew --prefix`/owncloud/"+ version +"/test.sh"
  end
end
