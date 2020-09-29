class CreateLinks < ActiveRecord::Migration[6.0]
  def change
    create_table :links do |t|
      t.string :short_url, uniq: true
      t.text :full_url
      t.integer :visit_count, default: 0

      t.timestamps
    end
  end
end
