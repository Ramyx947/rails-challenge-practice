class CreateOffices < ActiveRecord::Migration[5.1]
  def change
    create_table :offices do |t|
      t.belongs_to :building, index: true
      t.belongs_to :company, index: true
      t. integer :floor

      t.timestamps
    end
  end
end
