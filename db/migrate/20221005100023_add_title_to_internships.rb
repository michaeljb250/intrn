class AddTitleToInternships < ActiveRecord::Migration[7.0]
  def change
    add_column :internships, :title, :string
    add_column :internships, :address, :string
  end
end
