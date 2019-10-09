class CreateMoneyTransfer < ActiveRecord::Migration[6.0]
  def change
    create_table :money_transfers do |t|
      t.references :bank_account, foreign_key: true

      t.text :iban, null: false
      t.decimal :amount, null: false
      t.text :currency, null: false

      t.timestamps
    end
  end
end
