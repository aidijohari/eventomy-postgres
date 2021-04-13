class ChangeColumnNameOfVenue < ActiveRecord::Migration[6.0]
  def change
    
    rename_column :venues, :type, :venue_type
    
  end
end
