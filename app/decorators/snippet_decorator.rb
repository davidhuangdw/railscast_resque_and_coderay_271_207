class SnippetDecorator < Draper::Decorator
  delegate_all

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end

  def code
    if highlighted_code.present?
      h.sanitize highlighted_code, attributes:%w(id class style)
    else
      h.content_tag :pre, plain_code
    end
  end

  LANGS = %w{ruby c++ c javascript}
  def all_languages
    LANGS
  end
  def time_ago
    h.time_ago_in_words(updated_at)+" ago"
  end
end
