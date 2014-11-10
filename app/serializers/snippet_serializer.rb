class SnippetSerializer < ActiveModel::Serializer
  attributes :id, :name, :language, :plain_code, :highlighted_code
end
