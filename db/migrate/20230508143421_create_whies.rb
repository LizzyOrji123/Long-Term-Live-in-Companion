class CreateWhies < ActiveRecord::Migration[7.0]
  def change
    create_table :whies do |t|
      t.string :name
      t.string :title

      t.timestamps
    end
  end
end
