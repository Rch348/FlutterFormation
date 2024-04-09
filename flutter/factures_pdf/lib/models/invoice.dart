class Invoice 
{
   final String customer;
   final String address;
   final String name;
   final List<LineItem> items;
   Invoice
   (
      {
         required this.customer,
         required this.address,
         required this.items,
         required this.name,
      }
   );
   double totalCost() 
   {
      return items.fold(0, (previousValue, element) => previousValue + element.cost);
   }
   // double totalHtCost()
}

class LineItem 
{
   final String description;
   final double cost;
   final int quantity;

   LineItem
   (
      this.description, 
      this.cost, 
      this.quantity
   );
}