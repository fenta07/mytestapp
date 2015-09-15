using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for adminDAL
/// </summary>
public class adminDAL
{
    dbhandlerDataContext db = new dbhandlerDataContext();   
    public string a_Login(adminBAL balObj)
    {
        List<adminLoginResult> res = db.adminLogin(balObj.adminName, balObj.Password).ToList();
        if (res.Count == 0)
        {
            return "WA";
        }
        else
        {

            if (res[0].isLogin == 0)
            {
                ChangeIsLogin(balObj);
                return "VD";
            }
            else
            {
                return "AD";
            }

        }
        return null;
    }

    public string a_Logout(adminBAL balObj)
    {
        List<adminLoginResult> res = db.adminLogin(balObj.adminName, balObj.Password).ToList();
        if (res.Count == 1)
        {
            if (res[0].isLogin == 1)
            {
                ChangeIsLogin(balObj);
                return "VD";
            }
        }
        return null;
    }

    public void ChangeIsLogin(adminBAL balObj)
    {
        db.adminLoginStatusUpdate(balObj.adminName, balObj.isLogin);
    }

    public string a_ChangePass(adminBAL balObj, string newpass)
    {
        try
        {
            List<adminChangePasswordResult> res = db.adminChangePassword(balObj.adminName, balObj.Password, newpass).ToList();
            if (res.Count == 1)
            {
                return "Password Change";
            }
            else
            {
                return "old Password not match";
            }
        }
        catch
        {
            return "server side Error";
        }
    }

    public List<ScatSelectResult> Select()
    {
        return db.ScatSelect().ToList();
    }

    public List<ComSelectResult> CSelect()
    {
        return db.ComSelect().ToList();
    }

    public List<StateSelectResult> StateSelect()
    {
        return db.StateSelect().ToList();
    }

    public List<CitySelectResult> CitySelect()
    {
        return db.CitySelect().ToList();
    }

    public List<SupplierSelectResult> SupplierSelect()
    {
        return db.SupplierSelect().ToList();
    }

}

public class userDAL
{
    dbhandlerDataContext db = new dbhandlerDataContext();
    public string u_Login(userBAL balObj)
    {
        List<UserLoginResult> res = db.UserLogin(balObj.Email, balObj.Password).ToList();
        if (res.Count == 1)
        {
            return "WA";
        }
        else
        {
            return "VU";
        }
    }
}