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

        <section id="page-header"  class="text-center my-5">
            <h2>#${keyword}</h2>
            <p>Save more with coupons & up to 70% off!</p>
            <div class="wrap-form">
                <div class="search-form">
                    <form action="SearchServlet" class="w-full" method="get">
                        <div class="form-control">
                            <i class="fas fa-search icon-search"></i>
                            <input name="keyword" placeholder="Search ..." type="text" class="search-input bg-white border-[1px] rounded-[20px] border-[#b3b3b3] pl-[35px]">
                        </div>
                    </form>
                </div>
            </div>
        </section>

        <section id="product1" class="section-p1">
            <div class="prod-cont">
                <c:forEach var="product" items="${productList}">
                    <div class="prod">
                        <a href="ProductServlet?productId=${product.id}&categoryId=${product.categoryId}"><img src="${product.thumbnail}" alt=""></a>
                        <div class="des">
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

        <section id="pagination" class="section-p1">
            <a href="#">1</a>
            <a href="#">2</a>
            <a href="#"><i class="fa-solid fa-arrow-right"></i></a>
        </section>

        <%@include file="./inc/footer.jsp" %>

    </body>

</html>
