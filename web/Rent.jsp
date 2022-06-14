<%-- 
    Document   : Rent
    Created on : Apr 10, 2022, 6:02:54 PM
    Author     : OTTOX
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
 *{
  margin: 0;
  padding: 0;
  -webkit-box-sizing: border-box;
          box-sizing: border-box;
}

body {
  width: 100%;
  color: black;
  -webkit-transition: 0.5s;
  transition: 0.5s;
  background-color: #1f1f1f;
  color: white;
  font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
}

body a {
  text-decoration: none;
  color: black;
  font-weight: bold;
}

body li {
  list-style: none;
}

body h1 {
  color: white;
  font-size: 1rem;
  margin: 2% 0;
}

body span {
  color: #c61616;
}

body h2 {
  text-align: center;
  font-size: 1.5em;
  color: #c61616;
  margin: 2% 0;
}

body h3 {
  font-size: 0.6rem;
}

body h4 {
  font-size: 0.8em;
  color: #c61616;
  margin: 2% 0;
}

body p {
  margin: 2% 0;
  font-size: 0.5rem;
}

body #rental {
  color: #c61616;
}

@media screen and (max-width: 760px) {
  header {
    background-color: #1f1f1f;
    position: fixed;
    width: 100%;
    top: 0;
    left: 0;
    padding: 1% 0;
  }
  header a {
    color: white;
  }
  header .navigation {
    width: 100%;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-pack: justify;
        -ms-flex-pack: justify;
            justify-content: space-between;
    -webkit-box-align: center;
        -ms-flex-align: center;
            align-items: center;
    margin: auto;
  }
  header .navigation .logo {
    width: 50%;
    margin: auto;
    font-size: 1rem;
    text-align: center;
  }
}

@media screen and (max-width: 760px) and (max-width: 760px) {
  header .navigation .nav_menu {
    position: fixed;
    padding: 1rem 0;
    width: 40%;
    top: -25rem;
    left: 10rem;
    right: 0;
    margin: 0 auto;
    -webkit-transition: 0.4s;
    transition: 0.4s;
    background-color: rgba(255, 255, 255, 0.9);
    border-radius: 1rem;
  }
}

@media screen and (max-width: 760px) {
  header .navigation .nav_list {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
        -ms-flex-direction: column;
            flex-direction: column;
    -webkit-box-align: center;
        -ms-flex-align: center;
            align-items: center;
    row-gap: 1rem;
  }
  header .navigation .nav_list .nav_item a {
    font-size: 1rem;
    color: black;
  }
  header .navigation .nav_toggle {
    width: 50%;
    margin: auto;
    text-align: right;
    cursor: pointer;
  }
  header .navigation .nav_toggle img {
    margin: auto;
    width: 1.5rem;
  }
  header .navigation #nav-menu.active {
    top: 0.5rem;
  }
  main {
    width: 100%;
    margin-top: 2rem;
  }
  main a {
    text-decoration: none;
    color: black;
    font-weight: bold;
  }
  main li {
    list-style: none;
  }
  main h1 {
    color: white;
    font-size: 1.6rem;
    margin: 2% 0;
  }
  main span {
    color: #c61616;
  }
  main h2 {
    text-align: center;
    font-size: 1.4em;
    color: #c61616;
    margin: 2% 0;
  }
  main h3 {
    font-size: 1.2rem;
  }
  main h4 {
    font-size: 1rem;
    color: #c61616;
    margin: 2% 0;
  }
  main p {
    margin: 2% 0;
    font-size: 2.5vw;
  }
  main .rental-welcome-image {
    padding: 2rem 0;
    background-color: #313131;
  }
  main .rental-welcome-image .image {
    width: 40%;
    margin: auto;
  }
  main .rental-welcome-image .image img {
    width: 30rem;
  }
  main .rental-welcome-image .welcome {
    width: 100%;
    margin: auto;
    text-align: center;
  }
  main .rental-welcome-image .welcome button {
    padding: 1rem 2rem;
    border-radius: 2rem;
    border: none;
    background-color: #c61616;
    color: white;
    font-weight: bold;
  }
  main .rental-welcome-image .image2 {
    display: none;
  }
  main .rent-list {
    margin: 2rem;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -ms-flex-wrap: wrap;
        flex-wrap: wrap;
    -ms-flex-pack: distribute;
        justify-content: space-around;
  }
  main .rent-list .rent-1,
  main .rent-list .rent-2,
  main .rent-list .rent-3,
  main .rent-list .rent-4,
  main .rent-list .rent-5,
  main .rent-list .rent-6,
  main .rent-list .rent-7,
  main .rent-list .rent-8,
  main .rent-list .rent-9 {
    background-color: grey;
    width: 20rem;
    border-radius: 2rem;
    margin: 2rem auto;
    text-align: center;
  }
  main .rent-list .rent-1 img,
  main .rent-list .rent-2 img,
  main .rent-list .rent-3 img,
  main .rent-list .rent-4 img,
  main .rent-list .rent-5 img,
  main .rent-list .rent-6 img,
  main .rent-list .rent-7 img,
  main .rent-list .rent-8 img,
  main .rent-list .rent-9 img {
    width: 15rem;
  }
  main .rent-list .rent-1 .details,
  main .rent-list .rent-2 .details,
  main .rent-list .rent-3 .details,
  main .rent-list .rent-4 .details,
  main .rent-list .rent-5 .details,
  main .rent-list .rent-6 .details,
  main .rent-list .rent-7 .details,
  main .rent-list .rent-8 .details,
  main .rent-list .rent-9 .details {
    font-weight: bold;
  }
  main .rent-list .rent-1 .year,
  main .rent-list .rent-2 .year,
  main .rent-list .rent-3 .year,
  main .rent-list .rent-4 .year,
  main .rent-list .rent-5 .year,
  main .rent-list .rent-6 .year,
  main .rent-list .rent-7 .year,
  main .rent-list .rent-8 .year,
  main .rent-list .rent-9 .year {
    color: black;
    font-weight: bold;
  }
  main .rent-list .rent-1 button,
  main .rent-list .rent-2 button,
  main .rent-list .rent-3 button,
  main .rent-list .rent-4 button,
  main .rent-list .rent-5 button,
  main .rent-list .rent-6 button,
  main .rent-list .rent-7 button,
  main .rent-list .rent-8 button,
  main .rent-list .rent-9 button {
    border: none;
    padding: 0.5rem 1rem;
    border-radius: 1rem;
    margin-bottom: 2rem;
  }
  main .rent-list .rent-1 button:hover,
  main .rent-list .rent-2 button:hover,
  main .rent-list .rent-3 button:hover,
  main .rent-list .rent-4 button:hover,
  main .rent-list .rent-5 button:hover,
  main .rent-list .rent-6 button:hover,
  main .rent-list .rent-7 button:hover,
  main .rent-list .rent-8 button:hover,
  main .rent-list .rent-9 button:hover {
    background-color: #c61616;
    color: white;
  }
  footer {
    width: 100%;
    text-align: center;
    background-color: #313131;
    padding: 5% 0;
  }
  footer .logo-copyright-social .logo-footer h1 {
    font-size: 1.2rem;
  }
  footer .logo-copyright-social p {
    font-size: 1rem;
  }
  footer .logo-copyright-social .social-mail-footer .social-footer img {
    width: 2rem;
    margin: 2% 3%;
  }
  footer .logo-copyright-social .logo-footer h1 {
    font-size: 1.2rem;
  }
  footer .logo-copyright-social p {
    font-size: 1rem;
  }
  footer .logo-copyright-social .social-mail-footer .social-footer img {
    width: 2rem;
    margin: 2% 3%;
  }
}

@media screen and (min-width: 760px) and (max-width: 1350px) {
  header {
    background-color: #1f1f1f;
    position: fixed;
    width: 100%;
    top: 0;
    left: 0;
    padding: 1% 0;
  }
  header a {
    color: white;
  }
  header .navigation {
    width: 100%;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-pack: justify;
        -ms-flex-pack: justify;
            justify-content: space-between;
    -webkit-box-align: center;
        -ms-flex-align: center;
            align-items: center;
    margin: auto;
  }
  header .navigation .logo {
    width: 50%;
    margin: auto;
    padding: 1%;
    font-size: 1.6rem;
  }
}

@media screen and (min-width: 760px) and (max-width: 1350px) and (max-width: 1350px) {
  header .navigation .nav_menu {
    position: fixed;
    padding: 1rem 0;
    width: 40%;
    top: -310px;
    left: 10rem;
    right: 0;
    margin: 0 auto;
    -webkit-transition: 0.4s;
    transition: 0.4s;
    background-color: white;
    border-radius: 1rem;
  }
}

@media screen and (min-width: 760px) and (max-width: 1350px) {
  header .navigation .nav_list {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
        -ms-flex-direction: column;
            flex-direction: column;
    -webkit-box-align: center;
        -ms-flex-align: center;
            align-items: center;
    row-gap: 1rem;
  }
  header .navigation .nav_list .nav_item a {
    font-size: 1rem;
    color: black;
  }
  header .navigation .nav_list .nav_item .links:hover {
    color: #c61616;
  }
  header .navigation .nav_toggle {
    width: 50%;
    margin: auto;
    text-align: right;
    cursor: pointer;
  }
  header .navigation .nav_toggle img {
    margin: auto;
  }
  header #nav-menu.active {
    top: 0.5rem;
  }
  main {
    width: 100%;
    margin-top: 2rem;
  }
  main a {
    text-decoration: none;
    color: black;
    font-weight: bold;
  }
  main li {
    list-style: none;
  }
  main h1 {
    color: white;
    font-size: 1.6rem;
    margin: 2% 0;
  }
  main span {
    color: #c61616;
  }
  main h2 {
    text-align: center;
    font-size: 1.4em;
    color: #c61616;
    margin: 2% 0;
  }
  main h3 {
    font-size: 1.2rem;
  }
  main h4 {
    font-size: 1rem;
    color: #c61616;
    margin: 2% 0;
  }
  main p {
    margin: 2% 0;
    font-size: 1rem;
  }
  main .rental-welcome-image {
    padding: 2rem 0;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    background-color: #313131;
  }
  main .rental-welcome-image .image {
    display: none;
  }
  main .rental-welcome-image .welcome {
    width: 30%;
    margin: auto;
  }
  main .rental-welcome-image .welcome button {
    padding: 1rem 2rem;
    border-radius: 2rem;
    border: none;
    background-color: #c61616;
    color: white;
    font-weight: bold;
  }
  main .rental-welcome-image .image2 {
    width: 40%;
    margin: auto;
    padding: 2rem 0;
  }
  main .rental-welcome-image .image2 img {
    width: 45vw;
  }
  main .rent-list {
    margin: 2rem;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -ms-flex-wrap: wrap;
        flex-wrap: wrap;
    -ms-flex-pack: distribute;
        justify-content: space-around;
  }
  main .rent-list .rent-1,
  main .rent-list .rent-2,
  main .rent-list .rent-3,
  main .rent-list .rent-4,
  main .rent-list .rent-5,
  main .rent-list .rent-6,
  main .rent-list .rent-7,
  main .rent-list .rent-8,
  main .rent-list .rent-9 {
    background-color: grey;
    width: 20rem;
    border-radius: 2rem;
    margin: 2rem auto;
    text-align: center;
  }
  main .rent-list .rent-1 img,
  main .rent-list .rent-2 img,
  main .rent-list .rent-3 img,
  main .rent-list .rent-4 img,
  main .rent-list .rent-5 img,
  main .rent-list .rent-6 img,
  main .rent-list .rent-7 img,
  main .rent-list .rent-8 img,
  main .rent-list .rent-9 img {
    width: 15rem;
  }
  main .rent-list .rent-1 .details,
  main .rent-list .rent-2 .details,
  main .rent-list .rent-3 .details,
  main .rent-list .rent-4 .details,
  main .rent-list .rent-5 .details,
  main .rent-list .rent-6 .details,
  main .rent-list .rent-7 .details,
  main .rent-list .rent-8 .details,
  main .rent-list .rent-9 .details {
    font-weight: bold;
  }
  main .rent-list .rent-1 .year,
  main .rent-list .rent-2 .year,
  main .rent-list .rent-3 .year,
  main .rent-list .rent-4 .year,
  main .rent-list .rent-5 .year,
  main .rent-list .rent-6 .year,
  main .rent-list .rent-7 .year,
  main .rent-list .rent-8 .year,
  main .rent-list .rent-9 .year {
    color: black;
    font-weight: bold;
  }
  main .rent-list .rent-1 button,
  main .rent-list .rent-2 button,
  main .rent-list .rent-3 button,
  main .rent-list .rent-4 button,
  main .rent-list .rent-5 button,
  main .rent-list .rent-6 button,
  main .rent-list .rent-7 button,
  main .rent-list .rent-8 button,
  main .rent-list .rent-9 button {
    border: none;
    padding: 0.5rem 1rem;
    border-radius: 1rem;
    margin-bottom: 2rem;
  }
  main .rent-list .rent-1 button:hover,
  main .rent-list .rent-2 button:hover,
  main .rent-list .rent-3 button:hover,
  main .rent-list .rent-4 button:hover,
  main .rent-list .rent-5 button:hover,
  main .rent-list .rent-6 button:hover,
  main .rent-list .rent-7 button:hover,
  main .rent-list .rent-8 button:hover,
  main .rent-list .rent-9 button:hover {
    background-color: #c61616;
    color: white;
  }
  footer {
    width: 100%;
    text-align: center;
    background-color: #313131;
    padding: 5% 0;
  }
  footer .logo-copyright-social .logo-footer h1 {
    font-size: 1.2rem;
  }
  footer .logo-copyright-social p {
    font-size: 1rem;
  }
  footer .logo-copyright-social .social-mail-footer .social-footer img {
    width: 2rem;
    margin: 2% 3%;
  }
  footer .logo-copyright-social .logo-footer h1 {
    font-size: 1.2rem;
  }
  footer .logo-copyright-social p {
    font-size: 1rem;
  }
  footer .logo-copyright-social .social-mail-footer .social-footer img {
    width: 2rem;
    margin: 2% 3%;
  }
}

@media screen and (min-width: 1350px) {
  header {
    background-color: #1f1f1f;
    position: fixed;
    width: 100%;
    top: 0;
    left: 0;
    padding: 1% 0;
  }
  header a {
    color: white;
  }
  header .navigation {
    width: 100%;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-pack: justify;
        -ms-flex-pack: justify;
            justify-content: space-between;
    -webkit-box-align: center;
        -ms-flex-align: center;
            align-items: center;
    margin: auto;
  }
  header .navigation .logo {
    width: 25%;
    margin: auto;
    padding: 0.5rem;
    font-size: 1.6rem;
  }
  header .navigation .nav_menu {
    width: 65%;
    top: 0px;
    left: 0px;
    right: 0;
    margin: 0 auto;
    -webkit-transition: 0.4s;
    transition: 0.4s;
    border-radius: 1rem;
  }
  header .navigation .nav_list {
    margin: auto;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-pack: end;
        -ms-flex-pack: end;
            justify-content: end;
  }
  header .navigation .nav_list .nav_item {
    margin: 1rem 2rem;
  }
  header .navigation .nav_list .nav_item a {
    font-size: 1.2rem;
  }
  header .navigation .nav_list .nav_item .links:hover {
    color: #c61616;
  }
  header .navigation .nav_toggle {
    display: none;
  }
  main {
    width: 100%;
    margin-top: 2rem;
  }
  main a {
    text-decoration: none;
    color: black;
    font-weight: bold;
  }
  main li {
    list-style: none;
  }
  main h1 {
    color: white;
    font-size: 1.6rem;
    margin: 2% 0;
  }
  main span {
    color: #c61616;
  }
  main h2 {
    text-align: center;
    font-size: 1.4em;
    color: #c61616;
    margin: 2% 0;
  }
  main h3 {
    font-size: 1.2rem;
  }
  main h4 {
    font-size: 1rem;
    color: #c61616;
    margin: 2% 0;
  }
  main p {
    margin: 2% 0;
    font-size: 1rem;
  }
  main .rental-welcome-image {
    padding: 2rem 0;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    background-color: #313131;
  }
  main .rental-welcome-image .image {
    display: none;
  }
  main .rental-welcome-image .welcome {
    width: 30%;
    margin: auto;
  }
  main .rental-welcome-image .welcome button {
    padding: 1rem 2rem;
    border-radius: 2rem;
    border: none;
    background-color: #c61616;
    color: white;
    font-weight: bold;
  }
  main .rental-welcome-image .image2 {
    margin: 3% auto;
  }
  main .rental-welcome-image .image2 img {
    width: 45vw;
  }
  main .rent-list {
    margin: 2rem;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -ms-flex-wrap: wrap;
        flex-wrap: wrap;
    -ms-flex-pack: distribute;
        justify-content: space-around;
  }
  main .rent-list .rent-1,
  main .rent-list .rent-2,
  main .rent-list .rent-3,
  main .rent-list .rent-4,
  main .rent-list .rent-5,
  main .rent-list .rent-6,
  main .rent-list .rent-7,
  main .rent-list .rent-8,
  main .rent-list .rent-9 {
    background-color: grey;
    width: 30rem;
    border-radius: 2rem;
    margin: 2rem auto;
    text-align: center;
  }
  main .rent-list .rent-1 img,
  main .rent-list .rent-2 img,
  main .rent-list .rent-3 img,
  main .rent-list .rent-4 img,
  main .rent-list .rent-5 img,
  main .rent-list .rent-6 img,
  main .rent-list .rent-7 img,
  main .rent-list .rent-8 img,
  main .rent-list .rent-9 img {
    width: 20rem;
  }
  main .rent-list .rent-1 .details,
  main .rent-list .rent-2 .details,
  main .rent-list .rent-3 .details,
  main .rent-list .rent-4 .details,
  main .rent-list .rent-5 .details,
  main .rent-list .rent-6 .details,
  main .rent-list .rent-7 .details,
  main .rent-list .rent-8 .details,
  main .rent-list .rent-9 .details {
    font-weight: bold;
  }
  main .rent-list .rent-1 .year,
  main .rent-list .rent-2 .year,
  main .rent-list .rent-3 .year,
  main .rent-list .rent-4 .year,
  main .rent-list .rent-5 .year,
  main .rent-list .rent-6 .year,
  main .rent-list .rent-7 .year,
  main .rent-list .rent-8 .year,
  main .rent-list .rent-9 .year {
    color: black;
    font-weight: bold;
  }
  main .rent-list .rent-1 button,
  main .rent-list .rent-2 button,
  main .rent-list .rent-3 button,
  main .rent-list .rent-4 button,
  main .rent-list .rent-5 button,
  main .rent-list .rent-6 button,
  main .rent-list .rent-7 button,
  main .rent-list .rent-8 button,
  main .rent-list .rent-9 button {
    border: none;
    padding: 0.5rem 1rem;
    border-radius: 1rem;
    margin-bottom: 2rem;
  }
  main .rent-list .rent-1 button:hover,
  main .rent-list .rent-2 button:hover,
  main .rent-list .rent-3 button:hover,
  main .rent-list .rent-4 button:hover,
  main .rent-list .rent-5 button:hover,
  main .rent-list .rent-6 button:hover,
  main .rent-list .rent-7 button:hover,
  main .rent-list .rent-8 button:hover,
  main .rent-list .rent-9 button:hover {
    background-color: #c61616;
    color: white;
  }
  footer {
    width: 100%;
    text-align: center;
    background-color: #313131;
    padding: 1% 0;
  }
  footer .logo-copyright-social {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    margin: auto;
  }
  footer .logo-copyright-social .logo-footer {
    margin: auto;
  }
  footer .logo-copyright-social .logo-footer h1 {
    font-size: 2vw;
  }
  footer .logo-copyright-social p {
    font-size: 1.2vw;
  }
  footer .logo-copyright-social .social-mail-footer {
    margin: auto;
  }
  footer .logo-copyright-social .social-mail-footer .social-footer {
    margin: auto;
  }
  footer .logo-copyright-social .social-mail-footer .social-footer img {
    width: 2rem;
    margin: 2% 3%;
  }
}
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <header>
      <nav id="navigation" class="navigation">
        <a href="" class="logo">GORILLA MOTORS</a>
        <div id="nav-menu" class="nav_menu">
          <ul id="nav_list" class="nav_list">
            <li class="nav_item">
                <a href="Home.html" id="home" class="links">Home</a>
            </li>
            <li class="nav_item">
                <a href="About.jsp" id="about" class="links">About</a>
            </li>
            <li class="nav_item">
                <a href="Rent.jsp" id="rental" class="links">Rentals</a>
            </li>
            <li class="nav_item">
              <a href="" id="buy" class="links">Buy a Car</a>
            </li>
            <li class="nav_item">
              <a href="" id="repair" class="links">Repair Shop</a>
            </li>
            <li class="nav_item">
              <a href="" id="order" class="links">Order a Car</a>
            </li>
          </ul>
        </div>
        <div id="nav-toggle" class="nav_toggle">
          <img
            alt="toggle"
            onclick="togglemenu()"
            src="/images/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAAXNSR0IArs4c6QAAAIBJREFUSEvtVUEOgDAI616m/lxfNmMixrBgids4sePoaCiUFUw+ZXJ+hBPsABajqiu23TEvrqmgEsmkYi/OJNDSSUJNwHBJwBWwNLR63d3kr/E7AKyOMX3j4o02fHPoHngd6sWlk//7gO0YvZtkOJp7lsh62E2QTn4UCP+Th6+KE3LlOBnu4XThAAAAAElFTkSuQmCC"
          />
        </div>
      </nav>
    </header>
        <main>
      <div class="rental-welcome-image">
        <div id="image" class="image">
            <img src="images/n_00-1008408_luxury-cars-png-j_b.png" alt="" />
        </div>
        <div id="welcome" class="welcome">
          <h1>RENTAL CARS <span>GORILLA MOTORS</span></h1>
          <button type="submit" > <a href="single_car_rent.html">BOOK NOW </a></button>
        </div>
        <div id="image2" class="image2">
            <img src="images/n_00-1008408_luxury-cars-png-j_b.png" alt="" />
        </div>
      </div>
      <div class="rent-list">
        <div class="rent-1">
            <img src="images/Audi-SQ5_0.png" alt="" />
          <p class="details">4X4 WHITE INFINITE SUV</p>
          <p class="year">2021</p>
          <a href="single_car_rent.html"><button>View Details</button></a>
        </div>
        <div class="rent-2">
            <img src="images/Audi-SQ5_0.png" alt="" />
          <p class="details">4X4 WHITE INFINITE SUV</p>
          <p class="year">2021</p>
          <a href="single_car_rent.html"><button>View Details</button></a>
        </div>
        <div class="rent-3">
            <img src="images/Audi-SQ5_0.png" alt="" />
          <p class="details">4X4 WHITE INFINITE SUV</p>
          <p class="year">2021</p>
          <a href="single_car_rent.html"><button>View Details</button></a>
        </div>
        <div class="rent-4">
            <img src="images/Audi-SQ5_0.png" alt="" />
          <p class="details">4X4 WHITE INFINITE SUV</p>
          <p class="year">2021</p>
          <a href="single_car_rent.html"><button>View Details</button></a>
        </div>
        <div class="rent-5">
            <img src="images/Audi-SQ5_0.png" alt="" />
          <p class="details">4X4 WHITE INFINITE SUV</p>
          <p class="year">2021</p>
          <a href="single_car_rent.html"><button>View Details</button></a>
        </div>
        <div class="rent-6">
            <img src="images/Audi-SQ5_0.png" alt="" />
          <p class="details">4X4 WHITE INFINITE SUV</p>
          <p class="year">2021</p>
          <a href="single_car_rent.html"><button>View Details</button></a>
        </div>
        <div class="rent-7">
            <img src="images/Audi-SQ5_0.png" alt="" />
          <p class="details">4X4 WHITE INFINITE SUV</p>
          <p class="year">2021</p>
          <a href="single_car_rent.html"><button>View Details</button></a>
        </div>
        <div class="rent-8">
            <img src="images/Audi-SQ5_0.png" alt="" />
          <p class="details">4X4 WHITE INFINITE SUV</p>
          <p class="year">2021</p>
          <a href="/single_car_rent.html"><button>View Details</button></a>
        </div>
        <div class="rent-9">
            <img src="images/Audi-SQ5_0.png" alt="" />
          <p class="details">4X4 WHITE INFINITE SUV</p>
          <p class="year">2021</p>
          <a href="/single_car_rent.html"><button>View Details</button></a>
        </div>
      </div>
    </main>
    <footer>
      <div id="logo-copyright-social" class="logo-copyright-social">
        <div class="logo-footer">
          <h1>GORILLA MOTORS</h1>
        </div>
        <p>2021 GORILLA MOTORS. All right reserved | A site by Grit</p>
        <div class="social-mail-footer">
          <div class="social-footer">
              <img src="icon/facebook.png" alt="" />
              <img src="icon/instagram.png" alt="" />
              <img src="icon/twitter.png" alt="" />
          </div>
          <div class="mail-footer">
            <p>gorillamotorsltd@gmail.com</p>
          </div>
        </div>
      </div>
    </footer>
    <script src="/java/home.js"></script>
    </body>
</html>
