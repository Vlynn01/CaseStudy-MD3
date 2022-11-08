<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/template/css/style.css">
    <script type="text/javascript" src="<%= request.getContextPath() %>/template/js/custom.js"></script>
    <script type="text/javascript" src="<%= request.getContextPath() %>wowslider/jquery.js"></script>
    <title>Document</title>

    <script type="text/javascript">
        let paramID = GetURLParameter(`search`);
        if (paramID == '' || paramID === false) {
            window.location = "404.html"
        }

    </script>
</head>



<body>
<jsp:include page="header.jsp"></jsp:include>

<!-- Start Wrapper  -->
<section class="wrapper">
    <jsp:include page="inc_search.jsp"></jsp:include>
</section>
<!-- End Wrapper -->

<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>