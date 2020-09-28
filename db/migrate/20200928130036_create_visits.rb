class CreateVisits < ActiveRecord::Migration[6.0]
  def change
    create_table :visits do |t|
      t.datetime :last_visit_date
      t.string :geo_location
      t.references :link, foreign_key: true
      t.timestamps
    end
  end
end
