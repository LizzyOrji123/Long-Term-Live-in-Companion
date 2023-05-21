class CreateApplies < ActiveRecord::Migration[7.0]
  def change
    create_table :applies do |t|
      t.string :name
      t.integer :dob
      t.string :gender
      t.string :marriage
      t.string :occupation
      t.string :email
      t.integer :phone
      t.string :country
      t.string :photo

      t.timestamps
    end
  end
end
