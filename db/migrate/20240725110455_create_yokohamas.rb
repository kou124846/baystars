class CreateYokohamas < ActiveRecord::Migration[6.1]
  def change
    create_table :yokohamas do |t|
      t.string :home
      t.string :away
      t.integer :hscore
      t.integer :ascore
      t.text :about
      t.text :task

      t.timestamps
    end
  end
end
