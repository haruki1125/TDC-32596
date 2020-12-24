class CreateShops < ActiveRecord::Migration[6.0]
  def change
    create_table :shops do |t|
      t.string        :shop_name,                  null: false
      t.text          :info,                  null: false
      t.integer       :category_id,           null: false
      t.integer       :price_id,                 null: false
      t.references    :user,                       null: false,foreign_key: true
      t.timestamps
    end
  end
end
