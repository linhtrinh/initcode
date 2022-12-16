using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Test2.Entities
{
    [Table("UTOrder")]
    public class Order
    {
        public int Id { get; set; }
        public string? OrderAggregationRef { get; set; }
        public string OrderType { get; set; }
        public string? OrderStatus { get; set; }
        public DateTime SubmitDate { get; set; }
        public decimal? Amount { get; set; }
        public decimal? Unit { get; set; }
        public string FundId { get; set; }
        public decimal Price { get; set; }
        public DateTime PriceDate { get; set; }
    }
}
