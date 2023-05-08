class CreateHowWeWorks < ActiveRecord::Migration[7.0]
  def change
    create_table :how_we_works do |t|
      t.string :name
      t.string :title

      t.timestamps
    end
  end
end
