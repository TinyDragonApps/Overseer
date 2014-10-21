class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :username
      t.string :password
      t.string :ip_address
      t.integer :port

      t.timestamps
    end
  end
end
