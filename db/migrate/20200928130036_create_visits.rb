class CreateVisits < ActiveRecord::Migration[6.0]
  def change
    create_table :visits do |t|
      t.string :city
      t.string :country
      t.datetime :visit_date
      t.references :link, foreign_key: true

      t.timestamps
    end
  end
end
