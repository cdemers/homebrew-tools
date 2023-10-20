class Question < Formula
  desc "CLI to ask questions to ChatGPT"
  homepage "https://github.com/cdemers/question"
  url "https://github.com/cdemers/question/releases/download/0.7.0/question.tgz"
  sha256 "8d3b4547ed6758aad4017b6b5b054d8bec347a2211c7f9c301cdd56fb814b5d3"

  depends_on "python@3.9"

  def install
    system "pip3", "install", "openai", "rich", "halo"
    bin.install "question" => "question"
  end

  test do
    system "#{bin}/question", "--version" # or any other test command
  end
end
