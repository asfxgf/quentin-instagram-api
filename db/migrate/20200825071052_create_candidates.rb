class CreateCandidates < ActiveRecord::Migration[6.0]
  def change
    create_table :candidates do |t|
      t.string :character
      t.string :culture
      t.string :picture_url
      t.references :user, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
