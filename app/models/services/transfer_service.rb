class TransferService
  def self.perform(user, company, amount_cents)
    #tansaction é um bloco de codigo
    ActiveRecord::Base.transaction do
    #vou adicionar uma validação. Ele di raise que quer receber inteiro se for string cai no rascue
    raise ActiveRecord::RecordInvalid unless amount_cents.is_a? Integer

    #(!) => se você não conseguir fazer o update você levanta um exception(excessão)
    user.update!(balance_cents: user.balance_cents + amount_cents) # gem money rails 
    company.update!(balance_cents: user.balance_cents - amount_cents)
    # a logica é user esta recebendo valores 
    # e a acompany esta perdendo valores
    # se acaso algo der errado ele levanta a exception(!)e todo o bloco será invlidado

    Transfer.transaction do
      Transfer.create!(balance_cents: amount_cents, user: user, company: company) 
      # seria foreinkey => company_id: company.id mas o rails já entende =>  company: company)
    end
    end  
  #caso seja enviado um string ao invês de inteiro, ele cai na excessão (!)por causa da exclamação
  #e ai usamos o rescue 
  rescue ActiveRecord::RecordInvalid
    puts 'Invalid value for amounts_cents'
  end
end