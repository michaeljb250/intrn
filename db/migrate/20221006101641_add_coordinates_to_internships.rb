class AddCoordinatesToInternships < ActiveRecord::Migration[7.0]
  def change
    add_column :internships, :latitude, :float
    add_column :internships, :longitude, :float
  end
end
