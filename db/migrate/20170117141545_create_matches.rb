class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.datetime :date
      t.references :team, index: true, foreign_key: true
      t.references :pitch, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
