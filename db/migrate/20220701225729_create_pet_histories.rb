class CreatePetHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :pet_histories do |t|
      t.float :weight
      t.string :height
      t.date :visit_date
      t.string :description
      t.references :pet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
