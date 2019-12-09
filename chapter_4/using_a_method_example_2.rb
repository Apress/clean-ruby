class Order
  attr_accessor :items, :purchase_date

  def initialize(items, purchase_date)
    @items = items
    @purchase_date = purchase_date
  end
end

class Item
  attr_accessor :delivered

  def initialize(delivered)
    @delivered = delivered
  end

  def delivered?

    delivered
  end
end

def send_order_followup_email(order)
  if order_delivered?(order)
    # Send follow up email
    puts "Sent follow up email"
  else
    puts "Not all items delivered"
  end
end

def order_delivered?(order)
  all_items_delivered = true

  order.items.each do |item|
    if !item.delivered?
      all_items_delivered = false
      break
    end
  end

  all_items_delivered && order.purchase_date < Time.now
end

# Here we run the code
items = [Item.new(false), Item.new(true)]
order = Order.new(items, Time.now)

send_order_followup_email(order)
