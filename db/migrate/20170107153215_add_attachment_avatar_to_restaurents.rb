class AddAttachmentAvatarToRestaurents < ActiveRecord::Migration
  def self.up
    change_table :restaurents do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :restaurents, :avatar
  end
end
