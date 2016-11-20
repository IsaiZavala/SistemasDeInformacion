
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using IBatisNet.Common.Utilities;
using IBatisNet.DataMapper;
using IBatisNet.DataMapper.Configuration;

using System.Collections.Specialized;

namespace SistemaHospital.DAL
{
    public abstract class GenericDAL<Obj, Tipo, Param>
    {
        public string selectGeneric = "";
        public string selectGenericObject = "";
        public string updateGeneric = "";
        public string deleteGenericObject = "";
        public string insertGeneric = "";


        public virtual ISqlMapper Map
        {
            get
            {
                try
                {       
                    DomSqlMapBuilder builder = new DomSqlMapBuilder();

                    // NameValueCollection properties = new NameValueCollection();
                    // properties.Add("Conexion", Tools.AppSettings.ConnectionString);
                    // builder.Properties = properties;

                    ISqlMapper mapper = builder.Configure(Tools.AppSettings.sqlMapConfig);
                    return mapper;
                }
                catch (Exception ex)
                {
                    throw ex;
                }
            }
        }

        public virtual Obj Select(int IdParam)
        {
            return Map.QueryForObject<Obj>(selectGenericObject, IdParam);
        }

        public virtual IList<Obj> Select(Param param)
        {
            IList<Obj> lstResult = new List<Obj>();
            lstResult = Map.QueryForList<Obj>(selectGeneric, param);
            return lstResult;
        }
        
        public virtual Obj Select(Tipo param)
        {
            try
            {
                return Map.QueryForObject<Obj>(selectGenericObject, param);
            }
            catch
            {
                throw;
            }
        }

        public virtual int Update(Obj clase)
        {
            try
            {
                return Map.Update(updateGeneric, clase);
            }
            catch
            {
                throw;
            }
        }

        public virtual void DeleteObject(int param)
        {
            Map.Delete(deleteGenericObject, param);
        }

        public virtual int Insert(Obj param)
        {
            try
            {
                int ID = -1;
                ID = (int)Map.Insert(insertGeneric, param);
                return ID;
            }
            catch
            {
                throw;
            }
        }
    }
}