using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Options;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Test2.Entities
{
    public class OrderContext: DbContext
    {
        protected override void OnConfiguring(DbContextOptionsBuilder options)
        {
            base.OnConfiguring(options);
            //hard code connection string here.
            options.UseSqlServer("Data Source=.;Initial Catalog=Test; User ID=sa;password=P@ssw0rd;Integrated Security=false;Encrypt=False");
        }
        public DbSet<Order> Orders { get; set; }
        public DbSet<OrderAggregate> OrderAggregate { get; set; }
    }
}
