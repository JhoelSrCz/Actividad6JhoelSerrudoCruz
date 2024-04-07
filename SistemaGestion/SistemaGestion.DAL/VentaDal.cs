using SistemaGestion.Modelos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SistemaGestion.DAL
{
    public class VentaDal
    {
        public DataTable ListarVentasDal()
        {
            string consulta = "SELECT * FROM Venta";
            DataTable lista = conexion.EjecutarDataTabla(consulta, "tabla");
            return lista;
        }

        public void InsertarVentaDal(Venta venta)
        {
            string consulta = "INSERT INTO Venta (FechaVenta, TotalVenta) VALUES ('" + venta.FechaVenta.ToString("yyyy-MM-dd") + "', " + venta.TotalVenta.ToString() + ")";
            conexion.Ejecutar(consulta);
        }

        public Venta ObtenerVentaId(int id)
        {
            string consulta = "SELECT * FROM Venta WHERE IdVenta = " + id;
            DataTable tabla = conexion.EjecutarDataTabla(consulta, "tabla");
            Venta venta = new Venta();
            if (tabla.Rows.Count > 0)
            {
                venta.IdVenta = Convert.ToInt32(tabla.Rows[0]["IdVenta"]);
                venta.FechaVenta = Convert.ToDateTime(tabla.Rows[0]["FechaVenta"]);
                venta.TotalVenta = Convert.ToDecimal(tabla.Rows[0]["TotalVenta"]);
            }
            return venta;
        }

        public void EditarVentaDal(Venta venta)
        {
            string consulta = "UPDATE Venta SET FechaVenta = '" + venta.FechaVenta.ToString("yyyy-MM-dd") + "', TotalVenta = " + venta.TotalVenta.ToString() + " WHERE IdVenta = " + venta.IdVenta;
            conexion.Ejecutar(consulta);
        }

        public void EliminarVentaDal(int id)
        {
            string consulta = "DELETE FROM Venta WHERE IdVenta = " + id;
            conexion.Ejecutar(consulta);
        }
    }
}
