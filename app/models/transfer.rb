class Transfer < ApplicationRecord
  belongs_to :user
  belongs_to :company
  #com este comando foram geradas as foreing key transferencia pertence a user e company
  #rails g model Transfer balance_cents:integer user:references company:references
end
