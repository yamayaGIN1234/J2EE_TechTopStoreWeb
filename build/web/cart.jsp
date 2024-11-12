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

        <section id="cart" class="section-p1">
            <table width="100%">
                <thead>
                    <tr>
                        <td>Remove</td>
                        <td>Image</td>
                        <td>Product</td>
                        <td>Price</td>
                        <td>Quantidy</td>
                        <td>Subtotal</td>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${cart}" var="orderItem">
                        <tr>
                            <td>
                                <form action="CartServlet" method="post">
                                    <input type="hidden" name="action" value="delete"/>
                                    <input type="hidden" name="productId" value="${orderItem.productId}"/>
                                    <button type="submit" class="fa-regular fa-circle-xmark"></button>
                                </form>
                            </td>
                            <td><img src="${orderItem.product.thumbnail}" alt=""></td>
                            <td>${orderItem.product.name}</td>
                            <td>$${orderItem.price}</td>
                            <td>
                                <form action="CartServlet" method="post">
                                    <input type="hidden" name="action" value="update"/>
                                    <input type="hidden" name="productId" value="${orderItem.productId}"/>
                                    <input onchange="this.form.submit()" name="quantity" type="number" value="${orderItem.quantity}" min="1">

                                </form>
                            </td>
                            <td>${orderItem.price * orderItem.quantity}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </section>

        <section id="cart-add" class="section-p1">
            <div class="coupon">
                <h3>Apply Coupon</h3>
                <div>
                    <input type="text" placeholder="Enter Your Coupon">
                    <button class="normal">Apply</button>
                </div>
            </div>

            <div class="subtotal">
                <h3>Cart Total</h3>
                <table>
                    <tr>
                        <td>Cart Subtotal</td>
                        <td>$${total}</td>
                    </tr>
                    <tr>
                        <td>Shipping</td>
                        <td>Free</td>
                    </tr>
                    <tr>
                        <td><strong>Total</strong></td>
                        <td><strong>$${total}</strong></td>
                    </tr>
                </table>
                    <a href="CheckoutServlet" class="normal btn btn-success">Proceed to checkout</a>
            </div>
        </section>

        <%@include file="./inc/footer.jsp"%>

    </body>

</html>
