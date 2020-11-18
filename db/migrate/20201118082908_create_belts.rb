class CreateBelts < ActiveRecord::Migration[6.0]
  def change
    create_table :belts do |t|
      t.integer :rank
      t.belongs_to :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
