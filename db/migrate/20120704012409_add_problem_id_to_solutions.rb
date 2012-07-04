class AddProblemIdToSolutions < ActiveRecord::Migration
  def change
    add_column :solutions, :problem_id, :integer
  end
end
