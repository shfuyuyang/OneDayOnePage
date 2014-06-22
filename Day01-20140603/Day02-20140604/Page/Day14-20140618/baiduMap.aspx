<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="baiduMap.aspx.cs" Inherits="Day02_20140604.Page.Day14_20140618.baiduMap" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta name="keywords" content="�ٶȵ�ͼ,�ٶȵ�ͼAPI���ٶȵ�ͼ�Զ��幤�ߣ��ٶȵ�ͼ���������ù���" />
<meta name="description" content="�ٶȵ�ͼAPI�Զ����ͼ�������û��ڿ��ӻ����������ɰٶȵ�ͼ" />
<title>�ٶȵ�ͼAPI�Զ����ͼ</title>
<!--���ðٶȵ�ͼAPI-->
<style type="text/css">
    html,body{margin:0;padding:0;}
    .iw_poi_title {color:#CC5522;font-size:14px;font-weight:bold;overflow:hidden;padding-right:13px;white-space:nowrap}
    .iw_poi_content {font:12px arial,sans-serif;overflow:visible;padding-top:4px;white-space:-moz-pre-wrap;word-wrap:break-word}
</style>
<script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>
</head>
<body>
 <!--�ٶȵ�ͼ����-->
  <div style="width:697px;height:550px;border:#ccc solid 1px;" id="dituContent"></div>
</body>
<script type="text/javascript">
    //�����ͳ�ʼ����ͼ������
    function initMap() {
        createMap(); //������ͼ
        setMapEvent(); //���õ�ͼ�¼�
        addMapControl(); //���ͼ���ӿؼ�
        addMarker(); //���ͼ������marker
    }

    //������ͼ������
    function createMap() {
        var map = new BMap.Map("dituContent"); //�ڰٶȵ�ͼ�����д���һ����ͼ
        var point = new BMap.Point(116.570707, 39.919362); //����һ�����ĵ�����
        map.centerAndZoom(point, 10); //�趨��ͼ�����ĵ�����겢����ͼ��ʾ�ڵ�ͼ������
        window.map = map; //��map�����洢��ȫ��
    }

    //��ͼ�¼����ú�����
    function setMapEvent() {
        map.enableDragging(); //���õ�ͼ��ק�¼���Ĭ������(�ɲ�д)
        map.enableScrollWheelZoom(); //���õ�ͼ���ַŴ���С
        map.enableDoubleClickZoom(); //�������˫���Ŵ�Ĭ������(�ɲ�д)
        map.enableKeyboard(); //���ü����������Ҽ��ƶ���ͼ
    }

    //��ͼ�ؼ����Ӻ�����
    function addMapControl() {
        //���ͼ���������ſؼ�
        var ctrl_nav = new BMap.NavigationControl({ anchor: BMAP_ANCHOR_TOP_LEFT, type: BMAP_NAVIGATION_CONTROL_LARGE });
        map.addControl(ctrl_nav);
        //���ͼ����������ͼ�ؼ�
        var ctrl_ove = new BMap.OverviewMapControl({ anchor: BMAP_ANCHOR_BOTTOM_RIGHT, isOpen: 1 });
        map.addControl(ctrl_ove);
        //���ͼ�����ӱ����߿ؼ�
        var ctrl_sca = new BMap.ScaleControl({ anchor: BMAP_ANCHOR_BOTTOM_LEFT });
        map.addControl(ctrl_sca);
    }

    //��ע������
    var markerArr = [{ title: "�ҵı��", content: "�ҵı�ע", point: "116.562658|39.38248", isOpen: 0, icon: { w: 21, h: 21, l: 0, t: 0, x: 6, lb: 5} }
		 ];
    //����marker
    function addMarker() {
        for (var i = 0; i < markerArr.length; i++) {
            var json = markerArr[i];
            var p0 = json.point.split("|")[0];
            var p1 = json.point.split("|")[1];
            var point = new BMap.Point(p0, p1);
            var iconImg = createIcon(json.icon);
            var marker = new BMap.Marker(point, { icon: iconImg });
            var iw = createInfoWindow(i);
            var label = new BMap.Label(json.title, { "offset": new BMap.Size(json.icon.lb - json.icon.x + 10, -20) });
            marker.setLabel(label);
            map.addOverlay(marker);
            label.setStyle({
                borderColor: "#808080",
                color: "#333",
                cursor: "pointer"
            });

            (function () {
                var index = i;
                var _iw = createInfoWindow(i);
                var _marker = marker;
                _marker.addEventListener("click", function () {
                    this.openInfoWindow(_iw);
                });
                _iw.addEventListener("open", function () {
                    _marker.getLabel().hide();
                })
                _iw.addEventListener("close", function () {
                    _marker.getLabel().show();
                })
                label.addEventListener("click", function () {
                    _marker.openInfoWindow(_iw);
                })
                if (!!json.isOpen) {
                    label.hide();
                    _marker.openInfoWindow(_iw);
                }
            })()
        }
    }
    //����InfoWindow
    function createInfoWindow(i) {
        var json = markerArr[i];
        var iw = new BMap.InfoWindow("<b class='iw_poi_title' title='" + json.title + "'>" + json.title + "</b><div class='iw_poi_content'>" + json.content + "</div>");
        return iw;
    }
    //����һ��Icon
    function createIcon(json) {
        var icon = new BMap.Icon("http://app.baidu.com/map/images/us_mk_icon.png", new BMap.Size(json.w, json.h), { imageOffset: new BMap.Size(-json.l, -json.t), infoWindowOffset: new BMap.Size(json.lb + 5, 1), offset: new BMap.Size(json.x, json.h) })
        return icon;
    }

    initMap(); //�����ͳ�ʼ����ͼ
</script>
</html>