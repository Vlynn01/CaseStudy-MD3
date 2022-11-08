<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/template/css/style.css">
    <script type="text/javascript" src="<%= request.getContextPath() %>/template/wowslider/jquery.js"></script>
    <script type="text/javascript" src="<%= request.getContextPath() %>/template/js/custom.js"></script>
    <link rel="stylesheet prefetch" href="https://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css"/>
    <title>Document</title>

    <%--Người dùng nhập sai hoặc thiếu sẽ điều hướng sang trang 404--%>
    <script type="text/javascript">
        let paramID = GetURLParameter(`id`);
        if (paramID == '' || paramID === false) {
            window.location = "404.html"
        }

        //Lượt yêu thích coming soon
        $(document).ready(function () {
            var count = 0;
            var id_game = GetURLParameter('id');
            $("#star").click(function () {
                count++;
                $.poster('<%= request.getContextPath()%>/RatingServlet', {
                    'count': count,
                    'id_game': id_game
                }, function (data) {
                    console.log(data);
                    $("#luotyeuthich").htmlFor(data);
                })
            })
        })
        //Phần Ajax Rating
        $(document).ready()

        //Coming soon
        //Phần Ajax Load Game
        //3 biến, lần đầu xuất ra bao nhiêu game, nhấn vào xem thêm có bao nhiêu game, vị trí Limit
        var startAtQuantity = 8;
        var jumpStep = 8;
        var position = 0;
        $("section.list-game").load("<%= request.getContextPath()%>/LoadGameServlet?id=" + id_game + "&position=0&item=" + startAtQuantity)

    </script>
</head>

<body>
<jsp:include page="header.jsp"></jsp:include>

<!-- Start Wrapper  -->
<section class="wrapper">
    <jsp:include page="inc_playgame.jsp"></jsp:include>
</section>
<!-- End Wrapper -->

<jsp:include page="footer.jsp"></jsp:include>
<!-- Start Wowslider -->
<script type="text/javascript" src="<%= request.getContextPath() %>/template/wowslider/wowslider.js"></script>
<script type="text/javascript" src="<%= request.getContextPath() %>/template/wowslider/script.js"></script>
<!-- End Wowslider -->
</body>

</html>