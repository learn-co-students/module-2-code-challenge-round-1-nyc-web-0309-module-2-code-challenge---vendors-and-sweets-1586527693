class Sweet < ApplicationRecord
has_many :sweet_vendors
has_many :vendors, through: :sweet_vendors
def self.avg_price
    list= Sweet.total_price_list
    sum= list.sum
    count= list.count
    sum/count
end

def self.total_price_list
    Sweet.all.map do |sweet|
        sweet.get_price
    end
end

def get_price
total=0
count=0
    self.sweet_vendors.each do |p| 
        count+=1
        total+=p.price
    end
    
    if count>0
    total/count
    else
    return nil
end
end
def self.true_avg
    total=0
    nil_count=0
    Sweet.total_price_list.each do|p|
        if p!=nil
            total+= p
        else
            nil_count+=1
        end
    end
    total/(Sweet.total_price_list.count - nil_count)
end
end

