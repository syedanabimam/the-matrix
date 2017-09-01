class AddAvatarColumnsToArchitectProfiles < ActiveRecord::Migration[5.1]
  def up
    add_attachment :architect_profiles, :architect_avatar
  end

  def down
    remove_attachment :architect_profiles, :architect_avatar
  end
end
