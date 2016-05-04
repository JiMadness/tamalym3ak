class AddUsersPasswordDigest < ActiveRecord::Migration
  def change
    # noinspection RubyResolve
    add_column :users , :password_digest,:string
  end
end
