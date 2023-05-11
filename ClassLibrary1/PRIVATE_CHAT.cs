namespace ClassLibrary1
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class PRIVATE_CHAT
    {
        [Key]
        [Column(Order = 0)]
        [StringLength(20)]
        public string SENDER_ID { get; set; }

        [StringLength(20)]
        public string RECEIVE_ID { get; set; }

        [Column("SENDER_MESSAGE")]
        [StringLength(255)]
        public string SENDER_MESSAGE_ { get; set; }

        [Key]
        [Column("SEND_TIME", Order = 1, TypeName = "datetime2")]
        public DateTime SEND_TIME_ { get; set; }

        public virtual Users Users { get; set; }

        public virtual Users Users1 { get; set; }
    }
}
