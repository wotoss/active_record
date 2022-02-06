class AddBalanceCentsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :balance_cents, :integer
    #add_column tem por default => :table_name, :field_name, :field_type
    #add_column tem por default => :tabela_nome, :campo_nome, :campo_tipo
  end
end
