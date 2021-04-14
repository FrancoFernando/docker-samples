using CoreAppWithSQLServer.Models;
using Microsoft.EntityFrameworkCore;

namespace CoreAppWithSQLServer.Data
{
    public class DatabaseContext : DbContext
    {
        public DatabaseContext(DbContextOptions<DatabaseContext> options)
          : base(options)
        {
        }

        public DbSet<User> Users { get; set; }
    }
}
