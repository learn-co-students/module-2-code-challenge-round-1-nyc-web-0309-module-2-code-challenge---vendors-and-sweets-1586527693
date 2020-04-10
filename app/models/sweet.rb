class Sweet < ApplicationRecord
has_many :sweet_vendors
has_many :vendors, through: :sweet_vendors

end
