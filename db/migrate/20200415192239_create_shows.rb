class CreateShows < ActiveRecord::Migration[6.0]
  def change
    create_table :shows do |t|
    	t.string		:name
    	t.string		:default_name
    	t.string		:duration
      t.timestamps
    end
  end
end
