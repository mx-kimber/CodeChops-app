class CreateChops < ActiveRecord::Migration[7.0]
  def change
    create_table :chops do |t|
      t.text :solve
      t.text :solution

      t.timestamps
    end
  end
end
