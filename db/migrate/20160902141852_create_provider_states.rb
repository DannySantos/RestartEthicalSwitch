class CreateProviderStates < ActiveRecord::Migration
  def change
    create_table :provider_states do |t|
      t.integer :provider_id
      t.integer :state_id

      t.timestamps null: false
    end
  end
end
