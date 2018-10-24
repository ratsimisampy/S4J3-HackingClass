class CreateEleves < ActiveRecord::Migration[5.2]
  def change
    create_table :eleves do |t|
    	t.belongs_to :cours
    	t.string :first_name
    	t.string :last_name
    	t.timestamps
    end
  end
end
