class RenamePitureUrlToPictureUrlInFlats < ActiveRecord::Migration[8.1]
  def change
  rename_column :flats, :piture_url, :picture_url
  end
end
