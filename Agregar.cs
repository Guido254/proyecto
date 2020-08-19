using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LoginHealthyLife
{
    public class Agregar
    {
        public int Id { get; set; }
        public string Alergia { get; set; }
        public Agregar() { }

        public Agregar(int PId, string pAlergia)

        {
            this.Id = PId;
            this.Alergia = pAlergia;
        }
    }
}