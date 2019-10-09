class CreateBankAccount < ActiveRecord::Migration[6.0]
  def change
    create_table :bank_accounts do |t|
      t.references :user, foreign_key: true

      t.string  :iban, null: false
      t.string  :currency, null: false
      t.decimal :balance

      t.timestamps
    end
  end
end
