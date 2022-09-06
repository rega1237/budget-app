class CreateClassifies < ActiveRecord::Migration[7.0]
  def change
    create_table :classifies do |t|
      t.belongs_to :group, null: false, foreign_key: true
      t.belongs_to :expense, null: false, foreign_key: true

      t.timestamps
    end
  end
end
