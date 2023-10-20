class Question < Formula
  desc "CLI to ask questions to ChatGPT"
  homepage "https://github.com/cdemers/question"
  url "https://github.com/cdemers/question/releases/download/0.6.0/question.tgz"
  sha256 "dfa97c13d7673a9db1c3c0c9ffd0f768f8e04cca32311c968684d01ffd1d11ee"

  depends_on "python@3.9"

  def install
    system "pip3", "install", "openai", "rich", "halo"
    bin.install "question.py" => "question"
  end

  test do
    system "#{bin}/question", "--version" # or any other test command
  end
end

