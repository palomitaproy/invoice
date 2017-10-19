class CreateEntries < ActiveRecord::Migration[5.1]
  def change
    create_table 	:entries do |t|
      t.string 		:title
      t.datetime 	:invoice_date
      t.datetime 	:delivery_date
      t.integer 	:invoice_number
      t.string		:task
      t.decimal		:price

      t.timestamps
    end
  end
end
