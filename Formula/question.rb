class Question < Formula
  desc "CLI to ask questions to ChatGPT"
  homepage "https://github.com/cdemers/question"
  url "https://github.com/cdemers/question/releases/download/0.2.0/question.tgz"
  sha256 "put_the_sha256_hash_here"

  depends_on "python@3.9"

  def install
    system "pip3", "install", "openai", "rich", "halo"
    bin.install "question.py" => "question"
  end

  test do
    system "#{bin}/question", "--version" # or any other test command
  end
end

