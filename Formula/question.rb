class Question < Formula
  desc "CLI to ask questions to ChatGPT"
  homepage "https://github.com/cdemers/question"
  url "https://github.com/cdemers/question/releases/download/0.7.1/question.tgz"
  sha256 "e532714729508d1b5423745b6dabeaa20112d1647788a56336c411edd0134476"

  depends_on "python@3.9"

  def install
    system "pip3", "install", "openai", "rich", "halo"
    bin.install "question" => "question"
  end

  test do
    system "#{bin}/question", "--version" # or any other test command
  end
end
