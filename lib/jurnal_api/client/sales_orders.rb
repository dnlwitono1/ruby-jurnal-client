# frozen_string_literal: true

module JurnalApi
  class Client
    # Defines methods related to SalesOrders
    module SalesOrders
      def sales_orders(params = {})
        response = get('sales_orders', params)
        response
      end

      def sales_order_find(id)
        response = get("sales_orders/#{id}")
        response
      end

      def sales_order_create(params = {})
        response = post('sales_orders', params)
        response
      end

      def sales_order_update(id, params = {})
        response = put("sales_orders/#{id}", params)
        response
      end
      
      def sales_order_delete(id)
        response = delete("sales_orders/#{id}")
        response
      end

      def sales_order_convert_to_invoice(id, params = {})
        url      = "sales_orders/#{id}/convert_to_invoice"
        response = post(url, params)

        response
      end

      def sales_order_convert_to_delivery(id, params = {})
        url      = "sales_orders/#{id}/convert_to_delivery"
        response = post(url, params)

        response
      end

      def sales_order_close(id)
        url      = "sales_orders/#{id}/close_order"
        response = post(url)

        response
      end

      def sales_order_receive_payments(id, params = {})
        get("sales_orders/#{id}/sales_order_payments", params)
      end
    end
  end
end
