class AddDogTypeToPets < ActiveRecord::Migration[7.0]
  def change
    add_column :pets, :dog_type, :string
  end
end
