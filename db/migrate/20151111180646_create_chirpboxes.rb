class CreateChirpboxes < ActiveRecord::Migration
  def change
    create_table :chirpboxes do |t|
      t.column :name, :string, null: false
      t.column :message, :string, null: false
      t.timestamps null: false
    end
  end
end
