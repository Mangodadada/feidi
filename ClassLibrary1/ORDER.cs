namespace ClassLibrary1
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ORDER")]
    public partial class ORDER
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ORDER()
        {
            COMPLAINTS = new HashSet<COMPLAINTS>();
        }

        [Key]
        [StringLength(20)]
        public string ORDER_ID { get; set; }

        public DateTime? START_TIME { get; set; }

        [Required]
        [StringLength(255)]
        public string START_ADDRESS { get; set; }

        [Required]
        [StringLength(255)]
        public string END_ADDRESS { get; set; }

        public int PRICE { get; set; }

        [StringLength(250)]
        public string GOODS { get; set; }

        [Required]
        [StringLength(20)]
        public string CUSTOMER_ID { get; set; }

        [StringLength(20)]
        public string DELIVER_ID { get; set; }

        [Required]
        [StringLength(2)]
        public string RECEIVE { get; set; }

        public DateTime? END_TIME { get; set; }

        [StringLength(255)]
        public string DESCRIBE { get; set; }

        [StringLength(20)]
        public string PHONE { get; set; }

        [Column(TypeName = "numeric")]
        public decimal? CUSTOMER_SCORE { get; set; }

        [Column(TypeName = "numeric")]
        public decimal? MERCHANT_SCORE { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<COMPLAINTS> COMPLAINTS { get; set; }
    }
}
