class AddUpvoteToFighters < ActiveRecord::Migration[6.0]
  def change
    add_column :fighters, :upvote, :integer
  end
end
