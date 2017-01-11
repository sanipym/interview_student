class AddVerifyToMarkliste < ActiveRecord::Migration[5.0]
  def change
    add_column :marklistes, :verify, :string
  end
end
