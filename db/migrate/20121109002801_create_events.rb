class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.date :date
     # t.date :
      t.text :description

      t.timestamps
    end
  end
end
