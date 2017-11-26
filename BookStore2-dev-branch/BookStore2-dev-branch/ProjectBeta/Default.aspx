<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProjectBeta._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <img src="https://www.packtpub.com/sites/default/files/bookretailers/V06960_MockupCover.png" alt="Chicago" class="center-block">
                <div class="carousel-caption">
                    <h3>Los Angeles - FIRST SLIDE</h3>
                    <p>LA is always so much fun!</p>
                </div>
            </div>

            <div class="item">
                <img src="https://www.packtpub.com/sites/default/files/bookretailers/V06960_MockupCover.png" alt="Chicago" class="center-block">
                <div class="carousel-caption">
                    <h3>Los Angeles - SECPMD SLIDE</h3>
                    <p>LA is always so much fun!</p>
                </div>
            </div>

            <div class="item">
                <img src="https://www.packtpub.com/sites/default/files/bookretailers/V06960_MockupCover.png" alt="New York" class="center-block">
                <div class="carousel-caption">
                    <h3>Los Angeles  - THIRD SLIDE</h3>
                    <p>LA is always so much fun!</p>
                </div>
            </div>
        </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <!--
    <div class="jumbotron">
        <h1>Books R&#39; Us</h1>
        <p class="lead">Books R&#39; Us is your premium online book store. </p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg btnDefault">Learn more &raquo;</a></p>
    </div>
    -->

    <div class="row">
        <div class="col-md-4">
            <h2>Getting started</h2>
            <p>
                Search our top selection of books. You&#39;ll find what you are looking for...We gaurantee it.</p>
            <p>
                <a class="btn btn-primary btnDefault" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Get less for more</h2>
            <p>
                Books R&#39; Us offers students a discount. Be studeous with us.</p>
            <p>
                <a class="btn btn-primary btnDefault" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Enter our free book of the month Give A Away</h2>
            <p>
                Click below to enter your chance to win a free book by Paul Deitel...Always wanted to learn Web Development, nows your time.
            </p>
            <p>
                <a class="btn btn-primary btnDefault" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
