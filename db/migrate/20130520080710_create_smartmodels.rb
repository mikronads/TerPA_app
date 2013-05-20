class CreateSmartmodels < ActiveRecord::Migration
  def change
    create_table :smartmodel do |t|
      t.string :title
      t.text :text
      t.integer:timesend

      t.timestamps
    end
  end
end
