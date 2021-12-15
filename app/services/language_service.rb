
class LanguageService
  @service ||= Google::Cloud::Language.language_service(version: :v1)
  def self.analyze_sentiment(content)
    @service.analyze_sentiment(document: {content: content, type: :PLAIN_TEXT})
  end
end
