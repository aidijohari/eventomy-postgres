class AddDateToPortfolio < ActiveRecord::Migration[6.0]
  def change
    add_column :portfolios, :date, :date
  end
end
