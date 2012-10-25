class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :descrption

      t.timestamps
    end
  end
end
