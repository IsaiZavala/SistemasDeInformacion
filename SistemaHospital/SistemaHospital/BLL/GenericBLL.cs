using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using SistemaHospital.DAL;


namespace SistemaHospital.BLL
{
    public class GenericBLL<Obj, DAL, Tipo, Param> where DAL: GenericDAL<Obj, Tipo, Param>, new()
    {
        public virtual Obj Select(int IdParam)
        {
            try
            {
                DAL objDAL = new DAL();
                return objDAL.Select(IdParam);
            }
            catch(Exception ex)
            {
                // Tools.UnhandledException exUE = new Tools.UnhandledException(ex.Message, ex);
                throw ex;
            }
        }

        public virtual IList<Obj> Select(Param param)
        {
            try
            {
                DAL objDAL = new DAL();
                IList<Obj> lstResult = null;
                lstResult = objDAL.Select(param);
                return lstResult;
            }
            catch (Exception ex)
            {
                // Tools.UnhandledException exUE = new Tools.UnhandledException(ex.Message, ex);
                throw ex;
            }
        }

        public virtual int Insert(Obj param)
        {
            try
            {
                int Id = -1;
                DAL objDAL = new DAL();
                Id = objDAL.Insert(param);
                return Id;
            }
            catch (Exception ex)
            {
                // Tools.UnhandledException exUE = new Tools.UnhandledException(ex.Message, ex);
                throw ex;
            }
        }

        public virtual int Update(Obj param)
        {
            try
            {
                DAL dal = new DAL();
                return dal.Update(param);
            }
            catch (Exception ex)
            {
                // Tools.UnhandledException exUE = new Tools.UnhandledException(ex.Message, ex);
                throw ex;
            }
        }

        public virtual void DeleteObject(int IdParam)
        {
            try 
            {
                DAL dal = new DAL();
                dal.DeleteObject(IdParam);
            }
            catch (Exception ex)
            {
                // Tools.UnhandledException exUE = new Tools.UnhandledException(ex.Message, ex);
                throw ex;
            }
        }

    }
}
