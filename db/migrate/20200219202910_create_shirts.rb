class CreateShirts < ActiveRecord::Migration[6.0]
  def change
    create_table :shirts do |t|
      t.integer :size
      t.string :color

      t.timestamps
    end
  end
end
