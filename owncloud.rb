 class Owncloud < Formula
  version = "0.2.0"
  desc "the simplest utility tool for owncloud"
  homepage "https://github.com/Cj-bc/owncloud"
  url "https://github.com/Cj-bc/owncloud/archive/v"+ version + ".tar.gz"
  head "https://github.com/Cj-bc/owncloud.git"
  sha256 "0a9c2e130bb59068092f98130da408751151080af66fcde35fe239df1f57cbf5"


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
