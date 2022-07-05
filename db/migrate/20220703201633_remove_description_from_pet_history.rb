class RemoveDescriptionFromPetHistory < ActiveRecord::Migration[7.0]
  def change
    remove_column :pet_histories, :description, :string
  end
end
