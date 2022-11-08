<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/template/css/style.css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/template/wowslider/wowslider.css">
    <script type="text/javascript" src="<%= request.getContextPath() %>/template/wowslider/jquery.js"></script>
    <script type="text/javascript" src="<%= request.getContextPath() %>/template/js/custom.js"></script>

    <title>Document</title>
    <%--Người dùng nhập sai hoặc thiếu sẽ điều hướng sang trang 404--%>
    <script type="text/javascript">
        var paramID = GetURLParameter(`id`);
        if (paramID == '' || paramID === false) {
            window.location = "404.html"
        }
    </script>
</head>

<body>
<jsp:include page="header.jsp"></jsp:include>

<!-- Start Wrapper  -->
<section class="wrapper">
    <jsp:include page="inc_theloaigame.jsp"></jsp:include>
</section>
<!-- End Wrapper -->

<jsp:include page="footer.jsp"></jsp:include>
<!-- Start Wowslider -->
<script type="text/javascript" src="<%= request.getContextPath() %>/template/wowslider/wowslider.js"></script>
<script type="text/javascript" src="<%= request.getContextPath() %>/template/wowslider/script.js"></script>
<!-- End Wowslider -->
</body>

</html>