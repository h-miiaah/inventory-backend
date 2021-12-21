class Box < ApplicationRecord
    has_many :items

    validates :name, presence: true

    def update_box_amount(item)
        if item.kind == 'add'
            self.amount = self.amount + item.quantity
            self.save
        elsif item.kind == 'remove'
            if self.amount >= item.quantity
                self.amount = self.amount - item.quantity
                self.save
            else
                return 'Quantity not enough.'
            end
        end
    end

    def update_box_amount_on_delete(item)
        if item.kind == 'add'
            if self.amount >= item.quantity
                self.amount = self.amount - item.quantity
                self.save
            else
                return 'Quantity not enough.'
            end
        elsif item.kind == 'remove'
                self.amount = self.amount + item.quantity
                self.save
        end
    end

end

=begin
    
1. Create a new class called Box that inherits from ApplicationRecord.
2. Create a has_many association with items.
3. Create a validates method that checks that the name is present.
4. Create an update_box_amount method that updates the amount of the box.
5. Create an update_box_amount_on_delete method that updates the amount of the box on delete.
    
=end