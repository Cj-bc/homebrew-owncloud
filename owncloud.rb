 class Owncloud < Formula
  version = "0.1.8"
  desc "the simplest utility tool for owncloud"
  homepage "https://github.com/Cj-bc/owncloud"
  url "https://github.com/Cj-bc/owncloud/archive/v"+ version + ".tar.gz"
  head "https://github.com/Cj-bc/owncloud.git"
  sha256 "7875677bb99786e541608c81f5561f282e28ae4fb561c39dcee005f308972dca"


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
