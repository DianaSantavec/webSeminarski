using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using System.IO;
using System.Data.SqlClient;
using webSeminarski.Models;

namespace webSeminarski.Controllers
{
    public class UceniciController : Controller
    {
        public IActionResult Index()
        {
            List<Ucenici> lista_ucenika = new List<Ucenici>();
            using (var connection = new SqlConnection("Integrated Secutiry = true; Data Source = 111DESKTOP-FKPPP3H; Initial Catalog = web_seminarski")){
                
                SqlCommand read = new SqlCommand("SELECT * FROM ucenici",connection);
                
                try{

                    connection.Open();
                    SqlDataReader reader = read.ExecuteReader();
               
                    while (reader.Read()){
                        Ucenici ucenik = new Ucenici();
                        ucenik.id = Convert.ToInt32(reader[0].ToString());
                        ucenik.ime = reader[1].ToString();
                        ucenik.prezime = reader[2].ToString();
                        ucenik.prosek = Convert.ToDouble(reader[3].ToString());
                        lista_ucenika.Add(ucenik);
                    }
                    connection.Close();
                    return View(lista_ucenika);
                }

                catch (Exception){
                    return View("~/Views/Shared/Error.cshtml");
                }

            }
            
        }
    }
}