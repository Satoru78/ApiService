using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ApiService.Model
{
    public class ResponseClient
    {
        public ResponseClient(Client client)
        {
            this.ID = client.ID;
            this.LastName = client.LastName;
            this.FirstName = client.FirstName;
            this.Patronymic = client.Patronymic;
            this.IDGender = client.IDGender;
            this.Phone = client.Phone;
            this.Pic = client.Pic;
            this.DateOfBrith = client.DateOfBrith;
            this.Email = client.Email;
            this.DateOfRegistration = client.DateOfRegistration;
        }
        public ResponseClient() { }
        public int ID { get; set; }
        public string LastName { get; set; }
        public string FirstName { get; set; }
        public string Patronymic { get; set; }
        public string IDGender { get; set; }
        public string Phone { get; set; }
        public string Pic { get; set; }
        public System.DateTime DateOfBrith { get; set; }
        public string Email { get; set; }
        public string DateOfRegistration { get; set; }
    }
}
