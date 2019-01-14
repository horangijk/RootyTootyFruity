class AddSmoothieIdToIngredients < ActiveRecord::Migration[5.2]
  def change
    add_column :ingredients, :smoothie_id, :integer
  end
end
