class ProductType < ActiveRecord::Base
    has_many :fields, class_name: "ProductField"
    accepts_nested_attributes_for :fields, allow_destroy: true
    
    def fields_for_form
        collection = fields.where(product_type_id: id)
        
        if collection.any?
            collection
        else
            fields.build
        end
    end
end
