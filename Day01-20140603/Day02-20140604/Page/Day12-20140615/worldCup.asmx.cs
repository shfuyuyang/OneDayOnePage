using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Services;

namespace Day02_20140604.Page.Day12_20140615
{
    /// <summary>
    /// worldCup 的摘要说明
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]

    public class worldCup : System.Web.Services.WebService
    {

        public class match 
        {
            public match()
            {
                homeCourt = null;
                visitingCourt = null;
                time = new DateTime();
                ifreturn = false;
            }
            public bool ifreturn = false;
            public string homeCourt = null;
            public  string visitingCourt = null;
            public DateTime time = new DateTime();
        }

        [WebMethod]
        public match[] getMatch(string team)
        {
            match[] matches = new match[6];     //一个小组最多6场比赛

            matches[0].homeCourt = "巴西";
            matches[1].homeCourt = "墨西哥";
            matches[2].homeCourt = "巴西";
            matches[3].homeCourt = "喀麦隆";
            matches[4].homeCourt = "喀麦隆";
            matches[5].homeCourt = "克罗地亚";

            matches[0].visitingCourt = "克罗地亚";
            matches[1].visitingCourt = "喀麦隆";
            matches[2].visitingCourt = "墨西哥";
            matches[3].visitingCourt = "克罗地亚";
            matches[4].visitingCourt = "巴西";
            matches[5].visitingCourt = "墨西哥";

            matches[0].time = new DateTime(2014, 6, 13, 4, 0, 0);
            matches[1].time = new DateTime(2014, 6, 14, 0, 0, 0);
            matches[2].time = new DateTime(2014, 6, 18, 3, 0, 0);
            matches[3].time = new DateTime(2014, 6, 19, 6, 0, 0);
            matches[4].time = new DateTime(2014, 6, 24, 4, 0, 0);
            matches[5].time = new DateTime(2014, 6, 24, 4, 0, 0);

            for (int i = 0; i < 6; i++)
            {
                if (matches[i].homeCourt.Equals(team) || matches[i].visitingCourt.Equals(team))
                {
                    matches[i].ifreturn = true;
                }
            }

            return matches;
        }
    }
}
