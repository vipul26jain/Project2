class CreateChannels < ActiveRecord::Migration[6.0]
  def change
    create_table :channels do |t|
    	t.string		:name
    	t.string		:default_name
      t.timestamps
    end
  end
end
