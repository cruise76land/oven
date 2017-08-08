class CreateIngredients < ActiveRecord::Migration[5.1]
  def up
    create_table :ingredients do |t|
    	t.string "ingredient_type", :limit => 20, :null => false
    	t.timestamps
    end
  end

  def down
  	drop_table :ingredients
  end
end
