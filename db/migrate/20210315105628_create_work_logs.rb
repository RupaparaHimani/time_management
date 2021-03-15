class CreateWorkLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :work_logs do |t|
      t.references :user, null: false, foreign_key: true
      t.date :work_date
      t.decimal :hours
      t.string :notes
    end
  end
end
