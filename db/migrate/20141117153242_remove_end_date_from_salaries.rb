class RemoveEndDateFromSalaries < ActiveRecord::Migration
  def change
    remove_column :salaries, :end_date, :date
  end
end
