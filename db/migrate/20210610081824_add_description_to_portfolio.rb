class AddDescriptionToPortfolio < ActiveRecord::Migration[6.0]
  def change
    add_column :portfolios, :description, :text
  end
end
