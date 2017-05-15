class CreateSignlangInstructions < ActiveRecord::Migration[5.0]
  def change
    create_table :signlang_instructions do |t|
      t.string :title
      t.string :created_by

      t.timestamps
    end
  end
end
