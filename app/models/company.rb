class Company < ApplicationRecord


   def update_status
    with_lock do
   # self => diz vou pegar este objeto e adicionar este valor 'active'     
      self.status = 'active'
      save!
      #(!)para subir a excepetion ou Excessão  
    end
   end  
end
