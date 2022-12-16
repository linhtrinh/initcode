using Test2.Entities;

/*
 Method to implement aggregate logic. 
 */
void Aggregate()
{
    //example code to test ef query
    //connection string was hard code in OrderContext.cs file.
    using (var db = new OrderContext())
    {
        //get all order
        var orders = db.Orders.ToList();
        //get all order aggregated
        var orderAggregated = db.OrderAggregate.ToList();
    }
}


Console.WriteLine("This is the second test in interview. You can skip it and continue with other tests if needed!");
