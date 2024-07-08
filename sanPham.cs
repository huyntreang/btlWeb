using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTL_web
{
    public class sanPham
    {
        private string id;
        private string img;
        private string namePro;
        private string price;

        private int slBan;
        private string comment;
        private string totalMoney;
        private int giamGia;

        public sanPham()
        {

        }

        public sanPham(string id, string img, string namePro, string price, int slBan, string comment, string totalMoney, int giamGia)
        {
            this.id = id;
            this.img = img;
            this.namePro = namePro;
            this.price = price;
            this.slBan = slBan;
            this.comment = comment;
            this.totalMoney = totalMoney;
            this.giamGia = giamGia;
        }

        public string Id
        {
            get
            {
                return this.id;
            }
            set
            {
                this.id = value;
            }
        }

        public string Img
        {
            get
            {
                return this.img;
            }
            set
            {
                this.img = value;
            }
        }

        public string NamePro
        {
            get
            {
                return this.namePro;
            }

            set
            {
                this.namePro = value;
            }
        }

        public string Price
        {
            get
            {
                return this.price;
            }
            set
            {
                this.price = value;
            }
        }

        public int SLBan
        {
            get
            {
                return this.slBan;
            }
            set
            {
                this.slBan = value;
            }
        }

        public string Comment
        {
            get
            {
                return this.comment;
            }
            set
            {
                this.comment = value;
            }
        }

        public string TotalMoney
        {
            get
            {
                return this.totalMoney;
            }
            set
            {
                this.totalMoney = value;
            }
        }

        public int GiamGia
        {
            get
            {
                return this.giamGia;
            }
            set
            {
                this.giamGia = value;
            }
        }
    }
}