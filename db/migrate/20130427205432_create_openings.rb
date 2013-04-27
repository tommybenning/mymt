class CreateOpenings < ActiveRecord::Migration
  def change
    create_table :openings do |t|
      t.datetime :start
      t.datetime :end
      t.references :user

      t.timestamps
    end
  end
end
