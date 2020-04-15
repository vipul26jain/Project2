class CreateChannelShows < ActiveRecord::Migration[6.0]
  def change
    create_table :channel_shows do |t|
    	t.references			:channel
    	t.references			:show
    	t.string				:start_time
    	t.string				:end_time
      t.timestamps
    end
  end
end
