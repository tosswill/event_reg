class Attendee < ActiveRecord::Base
  belongs_to :event
  
  TICKET_STATUS = [  'need' , 'have']
  APPROVAL_STATUS = [ 'need' , 'have' ]
  SHIRT_SIZE = [ '' , 'S' , 'M' , 'L' , 'XL' , 'XXL' ]
  
  def event_name
    self.event.name
  end
  
end
