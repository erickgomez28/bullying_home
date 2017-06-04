class CreateBullyings < ActiveRecord::Migration[5.1]
  def change
    create_table :bullyings do |t|
      t.text :message
      t.references :bully, index: true

      t.timestamps
    end
  end
end
