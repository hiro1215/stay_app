class CreateReserves < ActiveRecord::Migration[6.1]
  def change
    create_table :reserves do |t|
      t.integer :room_id
      t.datetime :start_date
      t.datetime :end_date
      t.interger :person_num

      t.timestamps
    end
  end
end
