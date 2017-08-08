class CreateProducts < ActiveRecord::Migration[5.1]
  def up
    create_table :products do |t|
    	t.column "product_name", :string, :limit => 30, :null => false   	
    	t.numeric "price", :null => false
    	t.boolean "best_seller", :null => false    	
    	t.text "description1", :null => false
    	t.text "description2"
    	t.text "description3"
    	t.string "image", :limit => 50, :null => false
    	t.belongs_to :product_type, index: true
    	t.belongs_to :ingredient, index: true
    	t.timestamps
    end

    def down
    	drop_table :products
    end
  end
end
