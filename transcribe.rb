require "pry"
require "dotenv"
require "rest-client"

Dotenv.load

class Transcribe
  attr_reader :filename

  def initialize(filename)
    @filename = filename
  end

  def response
    RestClient.post(
      url,
      file,
      headers
    )
  end

  private

  def url
    "https://stream.watsonplatform.net/speech-to-text/api/v1/recognize"
  end

  def file
    File.new(filename, "rb")
  end

  def headers
    {
      username: username,
      password: password,
      timestamps: true,
      word_alternatives_threshold: 0.9
    }
  end

  def username
    ENV["WATSON_USERNAME"]
  end

  def password
    ENV["WATSON_PASSWORD"]
  end
end

if __FILE__ == $0
  binding.pry
end
