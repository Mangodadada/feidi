using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace ClassLibrary1
{
    public partial class Model3 : DbContext
    {
        public Model3()
            : base("name=Model3")
        {
        }

        public virtual DbSet<APPLICATION> APPLICATION { get; set; }
        public virtual DbSet<COMPLAINTS> COMPLAINTS { get; set; }
        public virtual DbSet<ORDER> ORDER { get; set; }
        public virtual DbSet<PRIVATE_CHAT> PRIVATE_CHAT { get; set; }
        public virtual DbSet<Users> Users { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<APPLICATION>()
                .Property(e => e.USER_ID)
                .IsUnicode(false);

            modelBuilder.Entity<COMPLAINTS>()
                .Property(e => e.COMPLAINT_ID)
                .IsUnicode(false);

            modelBuilder.Entity<COMPLAINTS>()
                .Property(e => e.COMPLAINANT_ID)
                .IsUnicode(false);

            modelBuilder.Entity<COMPLAINTS>()
                .Property(e => e.RESPONDENT_ID)
                .IsUnicode(false);

            modelBuilder.Entity<COMPLAINTS>()
                .Property(e => e.COMPLAINTS_MESSAGE)
                .IsUnicode(false);

            modelBuilder.Entity<COMPLAINTS>()
                .Property(e => e.ORDER_ID)
                .IsUnicode(false);

            modelBuilder.Entity<COMPLAINTS>()
                .Property(e => e.TITLE)
                .IsUnicode(false);

            modelBuilder.Entity<ORDER>()
                .Property(e => e.ORDER_ID)
                .IsUnicode(false);

            modelBuilder.Entity<ORDER>()
                .Property(e => e.START_ADDRESS)
                .IsUnicode(false);

            modelBuilder.Entity<ORDER>()
                .Property(e => e.END_ADDRESS)
                .IsUnicode(false);

            modelBuilder.Entity<ORDER>()
                .Property(e => e.CUSTOMER_ID)
                .IsUnicode(false);

            modelBuilder.Entity<ORDER>()
                .Property(e => e.DELIVER_ID)
                .IsUnicode(false);

            modelBuilder.Entity<ORDER>()
                .Property(e => e.RECEIVE)
                .IsUnicode(false);

            modelBuilder.Entity<ORDER>()
                .Property(e => e.DESCRIBE)
                .IsUnicode(false);

            modelBuilder.Entity<ORDER>()
                .Property(e => e.PHONE)
                .IsUnicode(false);

            modelBuilder.Entity<ORDER>()
                .Property(e => e.CUSTOMER_SCORE)
                .HasPrecision(10, 0);

            modelBuilder.Entity<ORDER>()
                .Property(e => e.MERCHANT_SCORE)
                .HasPrecision(10, 0);

            modelBuilder.Entity<ORDER>()
                .HasMany(e => e.COMPLAINTS)
                .WithRequired(e => e.ORDER)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<PRIVATE_CHAT>()
                .Property(e => e.SENDER_ID)
                .IsUnicode(false);

            modelBuilder.Entity<PRIVATE_CHAT>()
                .Property(e => e.RECEIVE_ID)
                .IsUnicode(false);

            modelBuilder.Entity<PRIVATE_CHAT>()
                .Property(e => e.SENDER_MESSAGE_)
                .IsUnicode(false);

            modelBuilder.Entity<Users>()
                .Property(e => e.USER_ID)
                .IsUnicode(false);

            modelBuilder.Entity<Users>()
                .Property(e => e.NICKNAME)
                .IsUnicode(false);

            modelBuilder.Entity<Users>()
                .Property(e => e.PASSWORD)
                .IsUnicode(false);

            modelBuilder.Entity<Users>()
                .Property(e => e.STATUE)
                .IsUnicode(false);

            modelBuilder.Entity<Users>()
                .Property(e => e.PHONE)
                .IsUnicode(false);

            modelBuilder.Entity<Users>()
                .Property(e => e.ABLE)
                .IsUnicode(false);

            modelBuilder.Entity<Users>()
                .HasMany(e => e.COMPLAINTS)
                .WithRequired(e => e.Users)
                .HasForeignKey(e => e.COMPLAINANT_ID)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Users>()
                .HasMany(e => e.COMPLAINTS1)
                .WithOptional(e => e.Users1)
                .HasForeignKey(e => e.RESPONDENT_ID);

            modelBuilder.Entity<Users>()
                .HasMany(e => e.PRIVATE_CHAT)
                .WithOptional(e => e.Users)
                .HasForeignKey(e => e.RECEIVE_ID);

            modelBuilder.Entity<Users>()
                .HasMany(e => e.PRIVATE_CHAT1)
                .WithRequired(e => e.Users1)
                .HasForeignKey(e => e.SENDER_ID)
                .WillCascadeOnDelete(false);
        }
    }
}
