class CreateSocialLinks < ActiveRecord::Migration[7.0]
  def change
    create_table :social_links do |t|
      t.references :author
      t.string :description
      t.string :url
      t.timestamps
    end
  end
end
