class AddStandingAndSeatedToVenues < ActiveRecord::Migration[6.0]
  def change
    add_column :venues, :standing, :int
    add_column :venues, :seated, :int
  end
end
