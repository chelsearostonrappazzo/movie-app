class RemoveReviewsFromMovies < ActiveRecord::Migration[6.1]
  def change
    remove_column :movies, :review
  end
end
