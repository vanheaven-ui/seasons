class FicColumnNameInComments < ActiveRecord::Migration[6.0]
  def change
    rename_column :comments, :body, :comment
  end
end
