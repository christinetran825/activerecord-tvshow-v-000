class AddSeasonToShows  < Active::Migration
  def change
    add_column :shows, :season, :string
  end
end
