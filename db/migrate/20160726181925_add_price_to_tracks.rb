class AddPriceToTracks < ActiveRecord::Migration
  def change
    add_column :tracks, :price, :decimal, :precision => 8, :scale => 2, :default => 0
  end
end
