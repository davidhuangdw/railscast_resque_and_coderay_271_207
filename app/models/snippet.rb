class Snippet < ActiveRecord::Base
  default_scope ->{order('updated_at desc')}

  def generate_highlight_code
    self.highlighted_code = CodeRay.scan(plain_code, language).div(linenumbers: :table)
    save
  end
end
