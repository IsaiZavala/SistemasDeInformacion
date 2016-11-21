using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using MySql.Data.MySqlClient;
using System.Data;
using SistemaHospital.Objects;


namespace SistemaHospital.Tools
{
    public class ReportControl : System.Web.UI.UserControl
    {
        public void GenerateReport()
        {
            try
            {
                ReportDocument rptDoc = new ReportDocument();

                DataTable dt = Tools.StoredProcedures.RunStoredProcedure(StoredProcedureName(), GetParameters());
                dt.TableName = TableName();

                string pathReport = Server.MapPath(ReportPath());
                rptDoc.Load(pathReport);
                rptDoc.SetDataSource(dt);

                object []arrParams = GetParametersReport();
                if (arrParams != null)
                {
                    foreach (object[] itemParam in arrParams)
                    {
                        rptDoc.SetParameterValue(itemParam[0].ToString(), itemParam[1]);
                    }
                }

                string strFileName = FileName() + DateAndTimeString();
                rptDoc.ExportToHttpResponse(ExportFormatType.PortableDocFormat, this.Response, true, strFileName);
            }
            catch
            {
                throw;
            }
        }

        public virtual MySqlParameter[] GetParameters()
        {
            return null;
        }

        public virtual string StoredProcedureName()
        {
            return string.Empty;
        }

        public virtual string TableName()
        {
            return string.Empty;
        }

        public virtual string ReportPath()
        {
            return string.Empty;
        }

        public virtual string FileName()
        {
            return string.Empty;
        }

        public string DateAndTimeString()
        {
            return DateTime.Now.ToString("yyyyMMdd_HHmmss");            
        }

        public virtual object[] GetParametersReport()
        {
            object [] objParams = new object[1];
            objParams[0] = new object[]{"CompanyName", "Sistema de hospital"};
            return objParams;
        }
    }
}