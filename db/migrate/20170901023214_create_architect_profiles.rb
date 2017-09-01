class CreateArchitectProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :architect_profiles do |t|
      t.string :architect_name
      t.string :architect_phone
      t.text :architect_bio
      t.text :architect_work
      t.timestamps
    end
    add_reference :architect_profiles, :architect, index: true
  end

  def up
    add_attachment :architect_profiles, :architect_avatar
  end

  def down
    remove_attachment :architect_profiles, :architect_avatar
  end
end
