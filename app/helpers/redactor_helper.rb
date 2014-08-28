module RedactorHelper
  def redactor_css(sources)
    sources.uniq.map do |source|
      path_to_stylesheet(source)
    end
  end
end
