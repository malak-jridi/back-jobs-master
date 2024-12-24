class CreateFighters < ActiveRecord::Migration[7.0]
  def change
    create_table :fighters do |t|
      t.string :name
      t.integer :life_score
      t.integer :attack_score

      t.timestamps
    end
  end
end
