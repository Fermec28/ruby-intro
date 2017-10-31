class CreateDogs < ActiveRecord::Migration[5.0]
  def change
    create_table :dogs do |t|
      t.string :name, null: false
      t.integer :age
      t.boolean :alive, default: true
    end
  end
end


