class ChangeResourceIdFormatInActiveAdminComments < ActiveRecord::Migration
  def up
    connection.execute(%q{
        alter table active_admin_comments
        alter column resource_id
        type integer using resource_id::integer
    })
  end
end
