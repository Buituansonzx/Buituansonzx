<%-- 
    Document   : navBarComponent
    Created on : Feb 17, 2022, 9:00:41 PM
    Author     : Le Hong Quan
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Navigation-->
<script>
    function login() {
        window.location.href = "login.jsp";
    }
    function logout() {
        window.location.href = "logout";

    }
</script>
<nav class="navbar navbar-expand-lg navbar-white bg-dark">
    <div class="container px-4 px-lg-5" style="display: flex; align-content: space-around">
        <a class="navbar-brand text-white font-weight-normal" href="home"><img src="https://upload.wikimedia.org/wikipedia/commons/4/47/Bad_Habits_Logo_%28Ed_Sheeran%29.png
" width="100px" height="70px" alt="alt"/></a>
        
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                <c:if test="${sessionScope.acc.isAdmin == 1}">
                    <li class="nav-item" >
                        <a class="nav-link active text-white" aria-current="page" href="managerAccount">MANAGER ACCOUNT</a>
                    </li>
                    

                </c:if>
                <c:if test="${sessionScope.acc.isSell == 1}">
                    <li class="nav-item">
                        <a class="nav-link active text-white" aria-current="page" href="managerCategory">MANAGER CATEGORY</a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link active text-white" aria-current="page" href="manager">MANAGER PRODUCTS</a>
                    </li>
                </c:if>
                <c:if test="${sessionScope.acc != null}">
                    <li class="nav-item">
                        <a class="nav-link active text-white" aria-current="page" href="#!">HELLO ${sessionScope.acc.user}!</a>
                    </li>
                </c:if>


            </ul>
            <form action="search" class="d-flex mx-auto">
                <input
                    value="${key}"
                    class="form-control me-2"
                    type="search"
                    placeholder="Search"
                    aria-label="Search"
                    name="keyword"
                    />
                <button class="btn btn-outline-light" type="submit">
                    Search
                </button>
            </form>
            <div class="d-flex my-2">
                <a class="btn btn-outline-light" href="carts">
                    <i class="bi-cart-fill me-1 text-white"></i>
                        Cart
                    <span class="badge bg-light text-black  ms-1 rounded-pill">${sessionScope.carts.size()}</span>
                </a>
            </div>

            <c:choose>
                <c:when test="${sessionScope.acc == null}">
                    <button class="btn btn-outline-light ms-lg-2 " onclick="login()">Login</button>
                </c:when>

                <c:otherwise>
                    <button class="btn btn-outline-light ms-lg-2 " onclick="logout()">Logout</button>
                </c:otherwise>
            </c:choose>




        </div>
    </div>
</nav>
