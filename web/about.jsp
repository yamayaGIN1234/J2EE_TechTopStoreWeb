<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TechTopStore</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
        integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="assets/css/style.css">
</head>

<body>

    <%@include file="./inc/header.jsp" %>

    <section id="page-header" class="about-header">
        <h2>#About TechTopStore</h2>
        <p>© 2024 TechTopStore, Inc.</p>
    </section>

    <section id="about" class="section-p1">
        <h2>#About TechTopStore</h2>
        <div>
            <img class="" src="img/about/a6.jpg" alt="">
            <span>
                <h4>About TechTopStore</h4>
                <p>Welcome to <strong>TechTopStore</strong>, your number one source for all things tech. We're dedicated to providing you the very best of technology products, with an emphasis on <strong>quality, customer service, and uniqueness</strong>.</p>
                <p>Founded in <strong>2024</strong> by <strong>Le Dinh Bach</strong>, TechTopStore has come a long way from its beginnings in <strong>VietNam</strong>. When Bach first started out, his passion for <strong>eco-friendly tech products</strong> drove him to start his own business.</p>
                <p>We hope you enjoy our products as much as we enjoy offering them to you. If you have any questions or comments, please don't hesitate to contact us.</p>
                <p>Sincerely, <br> <strong>Le Dinh Bach</strong></p>

                <marquee bgcolor="#ccc" loop="-1" scrollamount="5" width="100%">Welcome to TechTopStore! Enjoy our latest tech products and services. Contact us for more information!</marquee>
            </span>            
        </div>
    </section>
    
    <section id="about-app" class="section-p1">
        <h1>Shopping <a href="ShopServlet">Now</a></h1>
        <div class="video">
            <video autoplay muted src="assets/img/about/1.mp4"></video>
        </div>
    </section>
    

    <section id="features" class="section-p1">
        <div class="container">
            <div class="fe-box">
                <img src="assets/img/features/f1.png" alt="">
                <h6>Free Shipping</h6>
            </div>
            <div class="fe-box">
                <img src="assets/img/features/f2.png" alt="">
                <h6>Online Order</h6>
            </div>
            <div class="fe-box">
                <img src="assets/img/features/f3.png" alt="">
                <h6>Save Money</h6>
            </div>
            <div class="fe-box">
                <img src="assets/img/features/f4.png" alt="">
                <h6>Promotions</h6>
            </div>
            <div class="fe-box">
                <img src="assets/img/features/f5.png" alt="">
                <h6>Happy Sell</h6>
            </div>
            <div class="fe-box">
                <img src="assets/img/features/f6.png" alt="">
                <h6>F24/7 Support</h6>
            </div>
        </div>
    </section>

    <%@include file="./inc/footer.jsp"%>

</body>

</html>
