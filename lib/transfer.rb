class Transfer
  # your code here
    attr_accessor :sender , :receiver , :amount, :status
    
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
end


def valid? 
@sender.valid?
@receiver.valid? 
end

def execute_transaction
  if self.valid? && @sender.balance > @amount && @status == "pending" then 
    @receiver.deposit(@amount)
    @sender.deposit(-@amount)
    self.status ="complete"
  else 
    "Transaction rejected. Please check your account balance."
    @status = "rejected"
  end
    
    
end
end