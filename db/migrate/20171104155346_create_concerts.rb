class CreateConcerts < ActiveRecord::Migration[5.0]
  def change
    create_table :concerts do |t|
    	t.string :band
    	t.string :venue
    	t.datetime :date
    	t.string :start_time

    	t.timestamps
    end
  end
end
