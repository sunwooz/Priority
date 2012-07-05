class AddCategoryToProblem < ActiveRecord::Migration
  def change
    add_column :problems, :category_id, :integer
    create_table :categories do |t|
      t.string :name
    end
  end
end
