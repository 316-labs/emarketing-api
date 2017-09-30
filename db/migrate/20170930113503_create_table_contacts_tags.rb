class CreateTableContactsTags < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts_tags, id: false do |t|
      t.belongs_to :contact, index: true
      t.belongs_to :tag, index: true
    end
  end
end
