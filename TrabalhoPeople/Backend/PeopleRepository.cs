using Senai.People.WebApi.Domain;
using Senai.People.WebApi.Interfaces;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace Senai.People.WebApi.Repository
{
    public class PeopleRepository : IPeopleRepository
    {
        private string stringConexao = "Data Source=DEV12\\SQLEXPRESS; initial catalog=T_Peoples; user Id=sa; pwd=sa@132";

        public List<PeopleDomain> Listar()
        {
            List<PeopleDomain> Lista = new List<PeopleDomain>();

            using (SqlConnection con = new SqlConnection(stringConexao))
            {
                string queryListarAll = "SELECT  Nome, Sobrenome FROM Funcionario";

                SqlDataReader rdr;

                using (SqlCommand cmd = new SqlCommand(queryListarAll, con))
                {
                    con.Open();
                    rdr = cmd.ExecuteReader();

                    while(rdr.Read()) //while = enquanto
                    {
                        PeopleDomain People = new PeopleDomain
                        {
                            IdFuncionario = Convert.ToInt32(rdr[0]),

                            Nome = rdr["Nome"].ToString(),

                            Sobrenome = rdr["Sobrenome"].ToString()
                        };
                    }
                }
                return Lista;
            }
        }
    }
}
