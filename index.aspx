﻿<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link rel="stylesheet" href="bootstrap-3.3.6-dist/css/bootstrap.css" />
<link rel="stylesheet" href="bootstrap-3.3.6-dist/css/bootstrap-theme.css" />
<link rel="stylesheet" href="mystyles.css" />
<title>Untitled Document</title>
</head>

<body>
    <nav class="navbar navbar-inverse" style="border-radius:0px">
      <div class="container">
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li><a href="#">Giỏ hàng</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
<div class="container">
	<!--menu header -->
	<div class="row" id="header">
    	<div class="col-md-2 text-center"><a href="#">Trang chủ</a></div>
        <div class="col-md-2 text-center"><a href="#">Sản phẩm</a></div>
        <div class="col-md-4 text-center"><img src="img/logo.png" width="150"/></div>
        <div class="col-md-2 text-center"><a href="#">Liên hệ</a></div>
        <div class="col-md-2 text-center"><a href="#">Giới thiệu</a></div>
    </div>
    <!-- slideshow -->
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
      </ol>
    
      <!-- Wrapper for slides -->
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <img src="img/1.png">
          <div class="carousel-caption">
            1
          </div>
        </div>
        <div class="item">
          <img src="img/2.jpg">
          <div class="carousel-caption">
            2
          </div>
        </div>
        <div class="item">
          <img src="img/3.jpg">
          <div class="carousel-caption">
            3
          </div>
        </div>
      </div>
    
      <!-- Controls -->
      <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
    <!-- Content -->
        <div class="row">
            <h2>Sản phẩm mới nhất</h2>
                    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" GroupItemCount="3">
                        <AlternatingItemTemplate>
                            <td runat="server" style="">
                                <div class="row">
                                    <img src="img/sp1.jpg" width="100%" />
                                    <h4 align="center"><asp:Label ID="Label1" runat="server" Text='<%# Eval("name") %>' /></h4>
                                    <div class="row">
                                	    <div class="col-md-6"><asp:Label ID="Label2" runat="server" Text='<%# Eval("price") %>' /></div>
                                        <div class="col-md-6"><a href="#">Xem</a></div>
                                    </div>
                                    <p class="text-justify"><asp:Label ID="Label3" runat="server" Text='<%# Eval("description") %>' /></p>
                                </div>
                                </td>
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <td runat="server" style="">name:
                                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                                <br />price:
                                <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                                <br />description:
                                <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                                <br />
                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                <br />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                <br /></td>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            <table runat="server" style="">
                                <tr>
                                    <td>No data was returned.</td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>
                        <EmptyItemTemplate>
<td runat="server" />
                        </EmptyItemTemplate>
                        <GroupTemplate>
                            <tr id="itemPlaceholderContainer" runat="server">
                                <td id="itemPlaceholder" runat="server"></td>
                            </tr>
                        </GroupTemplate>
                        <InsertItemTemplate>
                            <td runat="server" style="">name:
                                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                                <br />price:
                                <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                                <br />description:
                                <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                                <br />
                                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                <br />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                <br /></td>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <td runat="server" style="">
                                <div class="row">
                                    <img src="img/sp1.jpg" width="100%" />
                                    <h4 align="center"><asp:Label ID="Label1" runat="server" Text='<%# Eval("name") %>' /></h4>
                                    <div class="row">
                                	    <div class="col-md-6"><asp:Label ID="Label2" runat="server" Text='<%# Eval("price") %>' /></div>
                                        <div class="col-md-6"><a href="#">Xem</a></div>
                                    </div>
                                    <p class="text-justify"><asp:Label ID="Label3" runat="server" Text='<%# Eval("description") %>' /></p>
                                </div>
                            </td>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <table runat="server">
                                <tr runat="server">
                                    <td runat="server">
                                        <table id="groupPlaceholderContainer" runat="server" border="0" style="">
                                            <tr id="groupPlaceholder" runat="server">
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr runat="server">
                                    <td runat="server" style="">
                                        <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
                                            <Fields>
                                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                                <asp:NumericPagerField />
                                                <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                            </Fields>
                                        </asp:DataPager>
                                    </td>
                                </tr>
                            </table>
                        </LayoutTemplate>
                        <SelectedItemTemplate>
                            <td runat="server" style="">name:
                                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                                <br />price:
                                <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                                <br />description:
                                <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                                <br /></td>
                        </SelectedItemTemplate>
                    </asp:ListView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:qlchConnectionString %>" SelectCommand="SELECT [name], [price], [description] FROM [product]"></asp:SqlDataSource>
        </div>
</div>
<footer class="footer">
	    <div class="container">
    	<div class="row">
            <div class="col-md-6">
            	<h1>Liên hệ</h1>
                <div class="row">Đỗ Gia Long : 0966 078 534</div>
                <div class="row">Nguyễn Trung Hiếu : 0167 260 5929</div>
                <div class="row">Địa chỉ : 4/810 Đê La Thành - Ba Đình - Hà Nội</div>
            </div>
            <div class="col-md-6" style="margin-top:5px;">
                <div class="row"><a href="#">Giới thiệu</a></div>
                <div class="row"><a href="#">Sản phẩm</a></div>
                <div class="row"><a href="#">Liên hệ</a></div>
            </div>
       	</div>
    </div>
</footer>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript" src="bootstrap-3.3.6-dist/js/bootstrap.min.js"></script>
</body>
</html>
