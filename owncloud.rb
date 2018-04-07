 class Owncloud < Formula
  version = "0.3.1"
  desc "the simplest utility tool for owncloud"
  homepage "https://github.com/Cj-bc/owncloud"
  url "https://github.com/Cj-bc/owncloud/archive/v"+ version + ".tar.gz"
  head "https://github.com/Cj-bc/owncloud.git"
  sha256 "3ad0ce45d61d1992bef43f4921672de80a2e9005ed796b3894d9c7fc021fb36c"

  depends_on "bash-completion"

   def install
     ohai "renaming owncloud.sh"
     system "mv", "owncloud.sh", "owncloud"
     bin.install "owncloud"
     prefix.install Dir["func"], Dir["text"], ".sourcefiles", "test.sh"
     ohai "install bash completion..."
     ohai "checking bash-completion path..."
     bash_completion.install "completion-owncloud.sh"
  end

   test do
     #system "`brew --prefix`/owncloud/"+ version +"/test.sh"
    #system "echo this is test file!!!! hello world", ">", "test.txt"
    system "echo", "test: test.txt generated"
    system "owncloud",  "mkdir", "testdir"
    system "owncloud", "post", "test.txt", "testdir/test.txt"
    system "owncloud",  "ls", "testdir"
    system "owncloud",  "mv", "testdir/test.txt", "test.txt"
    system "owncloud",  "get", "test.txt"
    system "echo", "data:\n>  "
    system "cat", "test.txt"
    system "owncloud" 
    system "echo", "\"test start: rm\""
    system "owncloud", "rm", "testdir;owncloud rm test.txt"
    system "rm", "test.txt", "&&", "echo", "test: test.txt removed"

  end
end
