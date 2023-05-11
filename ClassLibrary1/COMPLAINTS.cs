namespace ClassLibrary1
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class COMPLAINTS
    {
        [Key]
        [StringLength(20)]
        public string COMPLAINT_ID { get; set; }

        public DateTime COMPLAINTS_TIME { get; set; }

        [Required]
        [StringLength(20)]
        public string COMPLAINANT_ID { get; set; }

        [StringLength(20)]
        public string RESPONDENT_ID { get; set; }

        [Required]
        [StringLength(255)]
        public string COMPLAINTS_MESSAGE { get; set; }

        [Required]
        [StringLength(20)]
        public string ORDER_ID { get; set; }

        [Required]
        [StringLength(255)]
        public string TITLE { get; set; }

        public int STATE { get; set; }

        public virtual Users Users { get; set; }

        public virtual ORDER ORDER { get; set; }

        public virtual Users Users1 { get; set; }
    }
}
