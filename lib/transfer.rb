class Transfer
  # your code here
    attr_accessor :sender , :receiver , :amount, :status
    
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
end
end

def #valid? 
if @sender.valid? == true && @receiver.valid? == true 
  then true
