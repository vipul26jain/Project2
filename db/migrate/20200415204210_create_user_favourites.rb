class CreateUserFavourites < ActiveRecord::Migration[6.0]
  def change
    create_table :user_favourites do |t|
    	t.references			:user
    	t.references			:show
      t.timestamps
    end
  end
end
