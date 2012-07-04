class CreateSolutions < ActiveRecord::Migration
  def change
    create_table :solutions do |t|
      t.string :name
      t.text :notes
      t.timestamps
    end
  end
end
