namespace ClassLibrary1
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("APPLICATION")]
    public partial class APPLICATION
    {
        [Key]
        [StringLength(50)]
        public string APPLICATION_ID { get; set; }

        [Required]
        [StringLength(50)]
        public string ID_CARD { get; set; }

        [Required]
        [StringLength(50)]
        public string ADDRESS { get; set; }

        public int STATE { get; set; }

        [Required]
        [StringLength(20)]
        public string USER_ID { get; set; }

        public DateTime CREATE_DATE { get; set; }

        [Required]
        [StringLength(500)]
        public string CONTENT { get; set; }
    }
}
