class RemoveContentFromReview < ActiveRecord::Migration[5.2]
  def change
    remove_column :reviews, :content, :string
  end
end
