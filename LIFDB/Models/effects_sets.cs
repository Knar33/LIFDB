//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace LIFDB.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class effects_sets
    {
        public int ID { get; set; }
        public short EffectID1 { get; set; }
        public Nullable<short> EffectID2 { get; set; }
        public short EffectID3 { get; set; }
    
        public virtual effect effect { get; set; }
        public virtual effect effect1 { get; set; }
        public virtual effect effect2 { get; set; }
    }
}