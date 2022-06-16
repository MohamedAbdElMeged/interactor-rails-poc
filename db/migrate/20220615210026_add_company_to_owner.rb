class AddCompanyToOwner < ActiveRecord::Migration[7.0]
  def change
    add_reference :owners, :company, index: true, unique: true
  end
end
