class CreateToolUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :tool_users do |t|
      t.references :tool, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
