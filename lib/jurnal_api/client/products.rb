module JurnalApi
  class Client
    # Defines methods related to Products
    module Products

      def products(params = {})
        response = get('products', params)
        response
      end

      def product_create(params = {})
        response = post('products', params)
        response
      end

      def product_update(params = {})
        response = put("products/#{id}", params)
        response
      end

      def product_find(id)
        response = get("products/#{id}")
        response
      end
    end
  end
end