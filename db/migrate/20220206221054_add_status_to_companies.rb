class AddStatusToCompanies < ActiveRecord::Migration[6.1]
  def change
    add_column :companies, :status, :string, default: 'pending'
    #add_column tem por default => :table_name, :field_name, :field_type
    #add_column tem por default => :tabela_nome, :campo_nome, :campo_tipo

    # nesta migration eu inserir a mão o default: 'pending'
    #depois execultei o rails db:migrate
  end
end
