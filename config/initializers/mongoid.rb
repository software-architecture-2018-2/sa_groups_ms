# config/initializers/mongoid.rb
module Mongoid
    module Document
      def as_json(options={})
        attrs = super(options)
        attrs["soid"] = attrs["_id"].to_s
        attrs
      end
    end
   end