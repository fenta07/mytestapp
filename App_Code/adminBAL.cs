using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for adminBAL
/// </summary>
public class adminBAL
{
    public string adminName { get; set; }
    public string EmailID { get; set; }
    public string Password { get; set; }
    public int isLogin { get; set; }

    public int pksid { get; set; }
    public string cname { get; set; }
    public string scname { get; set; }
}
public class userBAL
{
    public string FristName { get; set; }
    public string LastName { get; set; }
    public string Gender { get; set; }
    public string State { get; set; }
    public string City { get; set; }
    public string PIN { get; set; }
    public string Address { get; set; }
    public string Mobile { get; set; }
    public string Email { get; set; }
    public string Password { get; set; }
    public string Allow { get; set; }
}
