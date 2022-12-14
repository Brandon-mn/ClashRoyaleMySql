using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ClashRoyaleSqlServer
{
    public partial class Carta : Form
    {
        public Carta()
        {
            InitializeComponent();
        }
        string consulta;
        private void MostrarDatos()
        {
            dataGridView1.DataSource = conexinsqlserver.ejecutaConsultaSelect("SELECT *FROM Cartaa ORDER BY idCartaa");

        }
        private void btnAgregar_Click(object sender, EventArgs e)
        {
            string calidad = textBox1.Text;
            string descripcion  = textBox3.Text;
            string idMaestria = textBox2.Text;
            string estatus = textBox4.Text;
            consulta = "INSERT INTO Cartaa (calidad, descripcion, idMaestria) " +
                "values('" + calidad + "', '" + descripcion + "', '" + idMaestria +  "')";
            conexinsqlserver.ejecutaConsulta(consulta);
            MostrarDatos();
            textBox1.Clear();
            textBox2.Clear();
            textBox3.Clear();
            textBox4.Clear();

        }

        private void btnBorrar_Click(object sender, EventArgs e)
        {
            int identificador = (int)dataGridView1.SelectedRows[0].Cells[0].Value;
            //consulta = "DELETE FROM HOTEL WHERE idHotel = " + idHotel.ToString();
            consulta = "UPDATE Cartaa SET Estatus = 0 WHERE idCartaa = " + identificador.ToString(); ;
            conexinsqlserver.ejecutaConsulta(consulta);
            MostrarDatos();
        }

        private void btnModificar_Click(object sender, EventArgs e)
        {
            int identificador = (int)dataGridView1.SelectedRows[0].Cells[0].Value;
            string calidad = textBox1.Text;
            string descripcion = textBox3.Text;
            string idMaestria = textBox2.Text;
            string estatus = textBox4.Text;
            consulta = "UPDATE Cartaa SET calidad = '" + calidad + "',descripcion = '" + descripcion + "',idMaestria = '" + idMaestria +
                "' WHERE idCartaa = " + identificador.ToString();
            conexinsqlserver.ejecutaConsulta(consulta);
            MostrarDatos();
            textBox1.Clear();
            textBox2.Clear();
            textBox3.Clear();
            textBox4.Clear();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Form1 abrir = new Form1();
            abrir.Show();
            this.Hide();
        }

        private void Carta_Load(object sender, EventArgs e)
        {
            MostrarDatos();
        }
    }
}
