class AddAuthorData < ActiveRecord::Migration[7.0]
  def change
    add_column(:authors, :bio, :string)
    add_column(:authors, :profile_picture, :string)
  end
end