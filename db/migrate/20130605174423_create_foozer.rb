class CreateFoozer < ActiveRecord::Migration
  def up
    create_table :foozers do |t|
      t.string :user
    end
  end

  def down
    drop_table :foozers
  end
end
