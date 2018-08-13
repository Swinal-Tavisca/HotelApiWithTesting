using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HotelManagementSystem.Models
{
    public class Hotel
    {
        public int Id { get; set; }

        public String Name { get; set; }

        public String Address { get; set; }

        public String LocationCode { get; set; }

        public List<String> Amenities { get; set; }

        public List<String> ImageURLs { get; set; }

        public List<Room> Rooms { get; set; }
    }
}