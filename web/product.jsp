<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
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

        <%@include file="./inc/header.jsp"%>
        <section id="prodetails" class="section-p1">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div class="single-pro-img">
                            <img src="${product.thumbnail}" alt="" id="MainImg" width="100%">
                            <div class="small-img-group">
                                <div class="col-sm-3">
                                    <img src="${product.thumbnail}" alt="" class="small-img" width="100%">
                                </div>
                                <div class="col-sm-3">
                                    <img src="${product.thumbnail}" alt="" class="small-img" width="100%">
                                </div>
                                <div class="col-sm-3">
                                    <img src="${product.thumbnail}" alt="" class="small-img" width="100%">
                                </div>
                                <div class="col-sm-3">
                                    <img src="${product.thumbnail}" alt="" class="small-img" width="100%">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <form action="CartServlet" method="post" class="single-pro-details">
                            <input type="hidden" name="action" value="create"/>
                            <input type="hidden" name="productId" value="${product.id}"/>
                            <input type="hidden" name="price" value="${product.price}"/>
                            <h6>Home / <span>${category.name}</span></h6>
                            <h4>${product.name}</h4>
                            <h2>$${product.price}</h2>
                            <input name="quantity" type="number" value="1">
                            <button class="normal">Add To Cart</button>
                            <h4>Product Details</h4>
                            <span>${product.description}</span>
                        </form>
                    </div>
                </div>
            </div>
        </section>

        <section id="product1" class="section-p1">
            <h2>Exclusive Offer</h2>
            <p>Up to 40% Off on Gaming Accessories</p>
            <div class="prod-cont">
                <c:forEach items="${newsProductList}" var="product">
                    <div class="prod">
                        <img src="${product.thumbnail}" alt="">
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

        <%@include file="./inc/footer.jsp"%>

    </body>

</html>
