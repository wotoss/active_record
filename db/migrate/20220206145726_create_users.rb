class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :age

      t.timestamps
      #este atributo t.timestamps cria dois campos no banco created_at e update_at 
      #isto padrão rails, mas pode ser desabilitado.
    end
  end
end
