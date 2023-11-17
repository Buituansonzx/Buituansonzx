<%-- 
    Document   : cart
    Created on : Feb 23, 2022, 10:07:09 PM
    Author     : Admin
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
            />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Cart</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/bad.ico" />
        <!-- Bootstrap icons-->
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
            rel="stylesheet"
            />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <script>
    function validateCheckout() {
        const quantityInputs = document.querySelectorAll("input[name='quantity']");
        for (const input of quantityInputs) {
            if (parseInt(input.value) === 0) {
                alert("Quantity of one or more products is 0. Please remove or update the quantity before checking out.");
                return false;
            }
        }
        return true;
    }
</script>
    <body>
        <%@include file="components/navBarComponent.jsp" %>

        <!-- Product section-->
        <section class="py-5">
            <div class="container" style="min-height: 1000px">
                <c:choose>
                    <c:when test="${sessionScope.carts==null||sessionScope.carts.size()==0 || sessionScope.cart.quantity==0}">
                        <h1>List Cart is Empty</h1>
                        <img class="mx-auto d-block" src="https://file.hstatic.net/1000351433/file/empty-cart_924e850940534647bace4fd790c132cf.svg" width="600px" height="600px" alt="alt"/>
                    </c:when>
                    <c:otherwise>
                        <h3>List Products</h3>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Name</th>
                                    <th scope="col">Image</th>
                                    <th scope="col">Price</th>
                                    <th scope="col">Quantity</th>
                                    <th scope="col">Total Price</th>
                                    <th scope="col">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${carts}" var="C">
                                <form action="update-quantity">
                                    <tr>
                                    <input type="hidden" name="productId" value="${C.value.product.id}"/>
                                        <th scope="row">${C.value.product.id}</th>
                                        <td>${C.value.product.name}</td>
                                        <td><img src="${C.value.product.imageUrl}" width="50"/></td>
                                        <td>${C.value.product.price}</td>
                                        <td><input onchange="this.form.submit()" type="number" name="quantity" value="${C.value.quantity}"/></td>
                                        <td>${C.value.product.price*C.value.quantity}</td>
                                        <td><a href="delete-cart?productId=${C.value.product.id}" class="btn btn-outline-danger"><i class="bi bi-trash"></i>Delete</a></td>
                                    </tr>
                                </form>
                            </c:forEach>
                            </tbody>
                        </table>
                        <h3>Total Amount: $${totalMoney}</h3>
                        <a href="checkout" class="btn btn-success w-25" onclick="return validateCheckout()">Check out</a>
                    </c:otherwise>
                </c:choose>
            </div>
        </section>
        <%@include file="components/footerComponent.jsp" %>
    </body>
</html>
