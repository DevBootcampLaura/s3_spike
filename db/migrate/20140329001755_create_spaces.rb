class CreateSpaces < ActiveRecord::Migration
  def change
    create_table :spaces do |t|
    	t.string :title

    	t.timestamps
    end
  end
end
