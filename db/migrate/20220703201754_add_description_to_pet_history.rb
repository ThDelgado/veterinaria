class AddDescriptionToPetHistory < ActiveRecord::Migration[7.0]
  def change
    add_column :pet_histories, :description, :text
  end
end
