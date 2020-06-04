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
  if @sender.valid? && @status == "pending" then
    @sender = @sender.deposit(-amount)
    @receiver = @receiver.deposit(amount)
  end
    
    
end
end