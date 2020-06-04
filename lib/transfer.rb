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
  if @sender.balance < @amount then
    "Transaction rejected. Please check account balance."
  elsif @sender.balance
      @sender.deposit(@amount)
  @sender = @sender.balance - @amount
  @receiver = @receiver.balance + @amount 
end

end