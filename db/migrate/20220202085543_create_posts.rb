class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string     :title   ,null: false
      t.text       :text    ,null:false
      t.references :user    ,null: false
      t.integer :mood_id    ,null: false
      t.integer :weather_id ,null: false
      t.timestamps
    end
  end
end
