class ChangeTypesInSnippets < ActiveRecord::Migration
  def up
    change_table :snippets do |t|
      t.change :plain_code, :text
      t.change :highlighted_code, :text
    end
  end
  def down
    change_table :snippets do |t|
      t.change :plain_code, :string
      t.change :highlighted_code, :string
    end
  end
end
