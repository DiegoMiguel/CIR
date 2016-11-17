using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Text;
using System.Web;
using CirWebApplication.Models;

namespace CirWebApplication.Controllers
{
    public class clsUsuarios
    {
        //Definindo propriedades
        private int _usuario_id;
        private string _nome;
        string _cpf_cnpj;
        int _cidade_id;
        DateTime _data_cadastro;
        string _email;
        string _senha;
        string _telefone;


        public int usuario_id
        {
            get { return _usuario_id; }
            set { _usuario_id = value; }
        }

        public string nome
        {
            get { return _nome; }
            set { _nome = value; }
        }

        public string cpf_cnpj
        {
            get { return _cpf_cnpj; }
            set { _cpf_cnpj = value; }
        }

        public int cidade_id
        {
            get { return _cidade_id; }
            set{ _cidade_id = value; }
        }

        public DateTime data_cadastro
        {
            get { return _data_cadastro; }
            set { _data_cadastro = value; }
        }

        public string email
        {
            get { return _email; }
            set { _email = value; }
        }

        public string senha
        {
            get { return _senha; }
            set { _senha = value; }
        }

        public string telefone
        {
            get { return _telefone; }
            set { _telefone = value; }
        }



        public clsUsuarios()
        {
        }

        
        public void excluir()
        {
#pragma warning disable CS0618 // Type or member is obsolete
            string strConn = System.Configuration.ConfigurationSettings.AppSettings.Get("DefaultConnection").ToString();
#pragma warning restore CS0618 // Type or member is obsolete

            StringBuilder strSql = new StringBuilder("");
            strSql.Append("DELETE FROM USUARIOS ");
            strSql.Append("WHERE USUARIO_ID=@USUARIO_ID");

            OleDbConnection conn = new OleDbConnection(strConn);
            OleDbParameter param = new OleDbParameter("@USURAIO_ID", this.usuario_id);
            OleDbCommand cmd = new OleDbCommand();
            cmd.Parameters.Add(param);

            try
            {
                conn.Open();
                cmd.Connection = conn;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = strSql.ToString();
                cmd.ExecuteNonQuery();
            }
            catch (OleDbException ex)
            {
                throw new Exception("Erro Banco de Dados" + ex.Message.ToString());
            }
            catch (Exception ex)
            {
                throw new Exception("ErroRuntime" + ex.Message.ToString());
            }
            finally
            {
                cmd.Dispose();
                conn.Close();
                conn.Dispose();
            }
        }

        public virtual int autenticar()
        {
#pragma warning disable CS0618 // Type or member is obsolete
            string strConn = System.Configuration.ConfigurationSettings.AppSettings.Get("DefaultConnection").ToString();
#pragma warning restore CS0618 // Type or member is obsolete
            StringBuilder strSql = new StringBuilder("");
            strSql.Append("Select usuario_id");
            strSql.Append(" from usuarios where email=@email and senha=@senha;");

            OleDbConnection conn = new OleDbConnection(strConn);
            OleDbParameter[] param = new OleDbParameter[2];

            param[0] = new OleDbParameter("@email", this.email);
            param[1] = new OleDbParameter("@senha", this.senha);
            OleDbCommand cmd = new OleDbCommand();
            cmd.Parameters.Add(param[0]);
            cmd.Parameters.Add(param[1]);
            int ret = 0;

            try
            {
                conn.Open();
                cmd.Connection = conn;
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = strSql.ToString();
                ret = Convert.ToInt16(cmd.ExecuteScalar());
            }
            catch (OleDbException ex)
            {
                throw new Exception("Erro de Banco de dados: " + ex.Message.ToString());
            }
            catch (Exception ex)
            {
                throw new Exception("Erro Runtime: " + ex.Message.ToString());
            }
            finally
            {
                cmd.Dispose();
                conn.Close();
                conn.Dispose();
            }
            return ret;
        }

        public void incluir()
        {
#pragma warning disable CS0618 // Type or member is obsolete
            string strConn = System.Configuration.ConfigurationSettings.AppSettings.Get("DefaultConnection").ToString();
#pragma warning restore CS0618 // Type or member is obsolete
            StringBuilder strSql = new StringBuilder("");
            strSql.Append("insert into usuarios(Nome,CPF_CNPJ,Cidade_id,Data_Cadastro,Email,Senha,telefone)");
            strSql.Append(" VALUES(@nome,@CPF_CNPJ,@Cidade_id,@Data_Cadastro,@Email,@Senha,@telefone)");

            OleDbConnection conn = new OleDbConnection(strConn);
            OleDbParameter[] param = new OleDbParameter[7];
            param[0] = new OleDbParameter("@nome", this.nome);
            param[1] = new OleDbParameter("@CPF_CNPJ", this.cpf_cnpj);
            param[2] = new OleDbParameter("@Cidade_id", this.cidade_id);
            param[3] = new OleDbParameter("@Data_Cadastro", this.data_cadastro);
            param[4] = new OleDbParameter("@Email", this.email);
            param[5] = new OleDbParameter("@Senha", this.senha);
            param[6] = new OleDbParameter("@telefone", this.telefone);
            OleDbCommand cmd = new OleDbCommand();
            for (Byte i = 0; i < param.Length; i++)
            {
                cmd.Parameters.Add(param[i]);
            }
            try
            {
                conn.Open();
                cmd.Connection = conn;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = strSql.ToString();
                cmd.ExecuteNonQuery();
            }
            catch (OleDbException ex)
            {
                throw new Exception("Erro no Banco de dados: " + ex.Message.ToString());
            }
            catch (Exception ex)
            {
                throw new Exception("Erro Runtime" + ex.Message.ToString());
            }
            finally
            {
                conn.Close();
                conn.Dispose();
                cmd.Dispose();
            }
        }

        public void alterar()
        {
#pragma warning disable CS0618 // Type or member is obsolete
            string connString = System.Configuration.ConfigurationSettings.AppSettings.Get("DefaultConnection").ToString();
#pragma warning restore CS0618 // Type or member is obsolete
            StringBuilder strSql = new StringBuilder("");
            strSql.Append("UPDATE usuarios SET ");
            strSql.Append("nome = @nome, ");
            strSql.Append("cpf_cnpj = @cpf_cnpj, ");
            strSql.Append("cidade_id = @cidade_id, ");
            strSql.Append("data_cadastro = @data_cadastro, ");
            strSql.Append("email = @email, ");
            strSql.Append("senha = @senha, ");
            strSql.Append("telefone = @telefone;");

            OleDbConnection conn = new OleDbConnection(connString);
            OleDbParameter[] param = new OleDbParameter[7];
            param[0] = new OleDbParameter("nome", this.nome);
            param[1] = new OleDbParameter("cpf_cnpj", this.cpf_cnpj);
            param[2] = new OleDbParameter("cidade_id", this.cidade_id);
            param[3] = new OleDbParameter("data_cadastro", this.data_cadastro);
            param[4] = new OleDbParameter("email", this.email);
            param[5] = new OleDbParameter("senha", this.senha);
            param[6] = new OleDbParameter("telefone", this.telefone);
            param[3].OleDbType = OleDbType.Date;
            OleDbCommand cmd = new OleDbCommand();
            for (byte i = 0; i < param.Length; i++)
            {
                cmd.Parameters.Add(param[i]);
            }
            try
            {
                conn.Open();
                cmd.Connection = conn;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = strSql.ToString();
                cmd.ExecuteNonQuery();
            }
            catch (OleDbException ex)
            {
                throw new Exception("Erro de banco de dados: " + ex.Message.ToString());
            }
            catch (Exception ex)
            {
                throw new Exception("Erro Runtime: " + ex.Message.ToString());
            }
            finally
            {
                conn.Close();
                conn.Dispose();
                cmd.Dispose();
            }
        }

        public DataSet obter()
        {
#pragma warning disable CS0618 // Type or member is obsolete
            string connString = System.Configuration.ConfigurationSettings.AppSettings.Get("DefaultConnection").ToString();
#pragma warning restore CS0618 // Type or member is obsolete
            StringBuilder strSql = new StringBuilder("");
            strSql.Append("Select Nome,CPF_CNPJ,Cidade_id,Data_Cadastro,Email,Senha,telefone ");
            strSql.Append(" FROM usuarios WHERE usuario_id=@usuario_id;");

            OleDbConnection conn = new OleDbConnection(connString);
            OleDbParameter param = new OleDbParameter("usuario_id", this.usuario_id);
            OleDbCommand cmd = new OleDbCommand();
            cmd.Parameters.Add(param);

            try
            {
                conn.Open();
                cmd.Connection = conn;
                cmd.CommandText = strSql.ToString();
                cmd.CommandType = CommandType.Text;
                OleDbDataAdapter da = new OleDbDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;

            }
            catch (OleDbException ex)
            {
                throw new Exception("ERRO BANCO DE DADOS: " + ex.Message.ToString());
            }
            catch (Exception ex)
            {
                throw new Exception("ERRO RUNTIME: " + ex.Message.ToString());
            }
            finally
            {
                conn.Close();
                conn.Dispose();
                cmd.Dispose();
            }
        }
    }
}