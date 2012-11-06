class CreateFortunes < ActiveRecord::Migration
  def self.up
    add_attachment :fortunes, :avatar
  end

  def self.down
    remove_attachment :fortunes, :avatar
  end
end
