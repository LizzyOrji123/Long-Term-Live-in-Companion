class CreateApplies < ActiveRecord::Migration[7.0]
  def change
    create_table :applies do |t|
      t.string :name
      t.string :body

      t.timestamps
    end
  end
end
