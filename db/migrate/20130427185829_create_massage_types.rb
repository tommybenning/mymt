class CreateMassageTypes < ActiveRecord::Migration
  def change
    create_table :massage_types do |t|
      t.string :massage_type

      t.timestamps
    end
  end
end
