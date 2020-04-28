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
            List<Ucenici>lista_ucenika = new List<Ucenici>();
            using (var connection = new SqlConnection("Integrated Security = true; Data Source = DESKTOP-FKPPP3H; Initial Catalog = web_seminarski")){
                
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

       public IActionResult Display(int id){
           
            Ucenici ucenik = new Ucenici();
            
            using (var connection = new SqlConnection("Integrated Security = true; Data Source = DESKTOP-FKPPP3H; Initial Catalog = web_seminarski")){
                
                SqlCommand read = new SqlCommand("SELECT * FROM ucenici",connection);
                
                try{

                    connection.Open();

                    SqlDataReader reader = read.ExecuteReader();
               
                    while (reader.Read()){
                        if (Convert.ToInt32(reader[0].ToString()) == id){
                            ucenik.id = Convert.ToInt32(reader[0].ToString());
                            ucenik.ime = reader[1].ToString();
                            ucenik.prezime = reader[2].ToString();
                            ucenik.prosek = Convert.ToDouble(reader[3].ToString());
                        }
                    }
                    connection.Close();
                    return View(ucenik);
                }

                catch (Exception){
                    return View("~/Views/Shared/Error.cshtml");
                }

            }
        }
    }
}