class AddPlotTypeToPlots < ActiveRecord::Migration[5.2]
  def change
    add_column :plots, :plot_type, :string
  end
end
