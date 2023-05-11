namespace ClassLibrary1
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Users
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Users()
        {
            COMPLAINTS = new HashSet<COMPLAINTS>();
            COMPLAINTS1 = new HashSet<COMPLAINTS>();
            PRIVATE_CHAT = new HashSet<PRIVATE_CHAT>();
            PRIVATE_CHAT1 = new HashSet<PRIVATE_CHAT>();
        }

        [Key]
        [StringLength(20)]
        public string USER_ID { get; set; }

        [StringLength(20)]
        public string NICKNAME { get; set; }

        [Required]
        [StringLength(20)]
        public string PASSWORD { get; set; }

        [StringLength(2)]
        public string STATUE { get; set; }

        [StringLength(20)]
        public string PHONE { get; set; }

        public int? CREDIT { get; set; }

        public int? AMOUNT { get; set; }

        [StringLength(2)]
        public string ABLE { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<COMPLAINTS> COMPLAINTS { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<COMPLAINTS> COMPLAINTS1 { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PRIVATE_CHAT> PRIVATE_CHAT { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PRIVATE_CHAT> PRIVATE_CHAT1 { get; set; }
    }
}
