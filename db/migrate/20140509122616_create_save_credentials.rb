class CreateSaveCredentials < ActiveRecord::Migration
  def change
    create_table :save_credentials do |t|
      t.string :user_name
      t.string :user_password

      t.timestamps
    end
  end
end
