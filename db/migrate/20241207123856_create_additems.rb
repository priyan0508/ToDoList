class CreateAdditems < ActiveRecord::Migration[8.0]
  def change
    create_table :additems do |t|
      t.string :title

      t.timestamps
    end
  end
end
