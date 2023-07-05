class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end

# class CreateUsers < ActiveRecord::Migration[6.1]
#   def change
#     create_table :users do |t|
#       t.string :name
#       t.string :username
#       t.string :email
#       t.string :password

#       t.timestamps
#     end
#   end
# end
