require "google/cloud/language/v1"

class LanguageService
  ::Google::Cloud::Language::V1::LanguageService::Client.configure do |config|
    config.credentials = JSON.parse(ENV.fetch('GOOGLE_CREDS'))
  end
  @service ||= Google::Cloud::Language.language_service(version: :v1)
  def self.analyze_sentiment(content)
    @service.analyze_sentiment(document: {content: content, type: :PLAIN_TEXT})
  end
end
