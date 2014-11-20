class CreateDiscussions < ActiveRecord::Migration
  def change
    create_table :discussions do |t|
      t.string :title
      t.integer :project_id

      t.timestamps
    end
  end
end
