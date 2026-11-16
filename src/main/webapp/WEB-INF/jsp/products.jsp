
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title>Little Market | Shop</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

    <style>
        .product img {
            width: 100%;
            height: 220px;
            object-fit: cover;
            display: block;
            border-radius: 10px;
            background: #f3f3f3;
        }

        .product-image {
            overflow: hidden;
            border-radius: 10px;
        }
    </style>
</head>

<body>

<%@ include file="fragments/header.jspf" %>

<main class="wrap">

    <section class="hero">
        <div>
           <p class="eyebrow">WELCOME TO JEEVITHA'S STORE</p>
            <h1>Thoughtful finds.<br><em>Everyday prices.</em></h1>
            <p>Discover useful, lovely products from small-scale makers.</p>
            <a class="button" href="#catalog">Explore collection</a>
        </div>
        <div class="hero-art">✳</div>
    </section>

    <c:if test="${not empty success}">
        <div class="notice">${success}</div>
    </c:if>

    <section id="catalog">

        <div class="section-head">
            <div>
                <p class="eyebrow">THE COLLECTION</p>
                <h2>Shop all products</h2>
            </div>

            <form class="filters" action="${pageContext.request.contextPath}/products">
                <input type="number" name="min" min="0"
                       placeholder="Min ₹" value="${min}">

                <input type="number" name="max" min="0"
                       placeholder="Max ₹" value="${max}">

                <select name="category">
                    <option value="">All categories</option>
                    <option value="Home" ${category == 'Home' ? 'selected' : ''}>Home</option>
                    <option value="Accessories" ${category == 'Accessories' ? 'selected' : ''}>Accessories</option>
                    <option value="Stationery" ${category == 'Stationery' ? 'selected' : ''}>Stationery</option>
                </select>

                <button type="submit" class="button small">Filter</button>
            </form>
        </div>

        <div class="grid">

            <c:forEach var="p" items="${products}">

                <article class="product">

                    <a class="product-image"
                       href="${pageContext.request.contextPath}/product/${p.id}">

                        <img
                            src="<c:out value='${p.image}'/>"
                            alt="<c:out value='${p.name}'/>"
                            onerror="this.onerror=null; this.src='https://placehold.co/400x400?text=Image+Not+Available';"
                        >
                    </a>

                    <div class="product-info">

                        <small><c:out value="${p.category}"/></small>

                        <h3>
                            <a href="${pageContext.request.contextPath}/product/${p.id}">
                                <c:out value="${p.name}"/>
                            </a>
                        </h3>

                        <div class="price">
                            ₹<c:out value="${p.price}"/>
                        </div>

                        <form method="post"
                              action="${pageContext.request.contextPath}/cart/add">

                            <input type="hidden" name="productId" value="${p.id}">

                            <button type="submit" class="button small full">
                                Add to cart
                            </button>

                        </form>

                    </div>

                </article>

            </c:forEach>

        </div>

        <c:if test="${empty products}">
            <p class="empty">
                No products match those filters. Try another price range.
            </p>
        </c:if>

    </section>

</main>

<footer>
    Made for small businesses · Little Market
    <p>Developed by Jeevitha S</p>
    <p>Computer Science and Engineering</p>
</footer>
</body>
</html>
