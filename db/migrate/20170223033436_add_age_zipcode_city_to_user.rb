class AddAgeZipcodeCityToUser < ActiveRecord::Migration
  def change
    add_column :users, :age, :integer
    add_column :users, :zipcode, :string
    add_column :users, :city, :string
  end
end
