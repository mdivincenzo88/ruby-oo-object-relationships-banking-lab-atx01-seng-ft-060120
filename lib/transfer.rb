class Transfer
  # your code here
    attr_accessor :sender , :receiver , :amount, :status
    
  def initialize(sender, receiver, transfer_amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
end
end
