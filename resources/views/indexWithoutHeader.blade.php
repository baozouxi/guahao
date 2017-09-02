<!DOCTYPE html>
<!-- saved from url=(0028)http://test.ehis.cc/main.asp -->
<html lang="zh-cn">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta name="viewport" content="maximum-scale=1.0">
    <title>成都锦一医院-后台管理</title>
    <meta name="keywords" content="网络预约系统,医院管理系统,咨询预约系统,咨询预约系统,医患通">
    <meta name="description" content="医患通（EHIS），基于BS构架开发的适用于专科、门诊、医院、集团的HIS系统。">
    <link rel="apple-touch-icon-precomposed" href="http://cdn.ehis.cc/2.3/icon72x72@2x.png">
    <link type="text/css" href="{{ asset('css') }}/style.css" rel="stylesheet">
    <script src="{{ asset('js') }}/fun.js" type="text/javascript"></script>

    <link href="{{ asset('css') }}/tiny.css" rel="stylesheet" type="text/css">

</head>

<body>
    <!--头部-->

    <!--左边-->

    <!--右边-->

        <!--导航-->
@include('index_include')

    <!--底部-->

    <script>
    window.setTimeout("now_tip()", 100);
    if (exist('call_local')) {
        window.setTimeout("$('call_local').click()", 150);
    }
    if (exist('call_weather')) {
        window.setTimeout("weather()", 200);
    }
    if (exist('call_track')) {
        window.setTimeout("track()", 250);
    }
    if (exist('this_user')) {
        To('user.asp?act=pass');
    }
    </script>
    <script>
    if (exist('call_dbbak')) {
        window.setTimeout("dbbak()", 100);
    }
    </script>
</body>

</html>
