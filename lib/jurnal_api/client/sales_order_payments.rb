module JurnalApi
  class Client
    # Defines methods related to SalesOrderPayments
    module SalesOrderPayments

      def sales_order_payments(params = {})
        response = get('sales_order_payments', params)
        response
      end

      def sales_order_payments_find(id)
        response = get("sales_order_payments/#{id}")
        response
      end

      def sales_order_payment_create(params = {})
        response = post('sales_order_payments', params)
        response        
      end

      def sales_order_payment_update(id, params = {})
        response = patch("sales_order_payments/#{id}", params)
        response        
      end

      def sales_order_payment_delete(id)
        response = delete("sales_order_payments/#{id}")
        response
      end
    end
  end
end