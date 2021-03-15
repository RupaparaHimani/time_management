class CreateUser < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.decimal :preferred_working_hour_per_day
    end
  end
end
