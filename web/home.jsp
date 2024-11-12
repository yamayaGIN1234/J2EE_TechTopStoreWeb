<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
        <link rel="stylesheet" href="./assets/css/style.css">
    </head>

    <body>
        <%@include file="./inc/header.jsp" %>

        <section id="hero">
            <h4>Trade-in Offer</h4>
            <h2>Super Value Deals</h2>
            <h1>On All PC Products</h1>
            <p>Save more with coupons & up to 20% off!</p>
            <button>Shop Now</button>
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

        <section id="product1" class="section-p1">
            <h2>Featured Products</h2>
            <p>Latest High-Performance PC</p>
            <div class="prod-cont">
                <c:forEach items="${hotProductList}" var="product">
                    <div class="prod">
                        <a href="ProductServlet?productId=${product.id}"><img src="${product.thumbnail}" alt=""></a>
                        <div class="des">
                            <span>${category.name}</span>
                            <h5>${product.name}</h5>
                            <div class="star">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                            <h4>$${product.price}</h4>
                        </div>
                        <a href="#"><i class="fa-solid fa-cart-shopping cart"></i></a>
                    </div>
                </c:forEach>
            </div>
        </section>

        <section id="banner" class="section-m1">
            <h4>Computer Component Deals</h4>
            <h2>Up to <span>70% Off</span> - All Components & Accessories</h2>
            <button class="normal">Eplore More</button>
        </section>

        <section id="product1" class="section-p1">
            <h2>Computer Component</h2>
            <p>All Components & Accessories</p>
            <div class="prod-cont">
                <c:forEach items="${newsProductList}" var="product">
                <div class="prod">
                    <img src="${product.thumbnail}" alt="">
                    <div class="des">
                        <span>${categories.name}</span>
                        <h5>${product.name}</h5>
                        <div class="star">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <h4>$${product.price}</h4>
                    </div>
                    <a href="#"><i class="fa-solid fa-cart-shopping cart"></i></a>
                </div>
                </c:forEach>
            </div>
        </section>

        <section id="sm-banner" class="section-p1">
            <div class="banner-box">
                <h4>Exclusive Offer</h4>
                <h2>Up to 40% Off on Gaming Accessories</h2>
                <span>The best deals on gaming accessories are available now at TechTopStore</span>
                <button class="white">Learn More</button>
            </div>
            <div class="banner-box banner-box2">
                <h4>Special Discounts</h4>
                <h2>Exclusive Discounts on High-End PCs</h2>
                <span>Get the best prices on high-performance PCs only at TechTopStore</span>
                <button class="white">Learn More</button>
            </div>
        </section>

        <section id="l-banner">
            <div class="banner-box">
                <h2>EXCLUSIVE OFFER</h2>
                <h3>High-Performance Gaming PCs - Up to 30% OFF</h3>
            </div>
            <div class="banner-box banner-box2">
                <h2>LIMITED TIME DEAL</h2>
                <h3>Graphic Design Workstations - Save 20%</h3>
            </div>
            <div class="banner-box banner-box3">
                <h2>BESTSELLER SALE</h2>
                <h3>Top Rated PCs - Discounts up to 25%</h3>
            </div>
        </section>

        <%@include file="./inc/footer.jsp"%>

    </body>

</html>
