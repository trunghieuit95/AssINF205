<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="bootstrap-3.3.6-dist/css/bootstrap.css" />
<link rel="stylesheet" href="bootstrap-3.3.6-dist/css/bootstrap-theme.css" />
<link href="styles.css" rel="stylesheet" type="text/css" />

<title>Untitled Document</title>
</head>

<body>
    <form id="form1" runat="server">
<div id="wrapper">
  <div id="header">
    <div class="logo"> <img src="img/logo.png" border="0" width="150px" /> </div>
    
    <div class="topmenu">
      <ul>
        <li class="selected"><a href="#">Home</a></li>
        <li class="sep">|</li>
        <li><a href="#">Front-End</a></li>
        <li class="sep">|</li>
        <li><a href="#">Logout</a></li>
      </ul>
    </div>
  </div>
  <div id="colleft">
    <div class="categories">
      <div class="sidebar_header">Categories</div>
      <div class="content">
        <ul>
          <li class="sep"></li>
          <li role="presentation"><a href="#client" aria-controls="profile">Khách hàng</a></li>
          <li class="sep"></li>
          <li role="presentation"><a href="#bill" aria-controls="profile">Hóa đơn</a></li>
          <li class="sep"></li>
          <li role="presentation"><a href="#cate" aria-controls="profile">Danh mục</a></li>
          <li class="sep"></li>
          <li role="presentation"><a href="#products" aria-controls="profile">Sản phẩm</a></li>
        </ul>
      </div>
    </div>
  <div id="content" class="tab-content">
    	<div class="sidebar_header">Khách hàng</div>
        <div class="content">
        <asp:DetailsView ID="DetailsView1" runat="server" Height="101px" Width="641px" AutoGenerateRows="False" DataKeyNames="id_client" DataSourceID="SqlDataSource1" AllowPaging="True">
                <Fields>
                    <asp:BoundField DataField="full_name" HeaderText="full_name" SortExpression="full_name" />
                    <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                    <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="id_client" HeaderText="id_client" ReadOnly="True" SortExpression="id_client" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:qlchConnectionString %>" DeleteCommand="DELETE FROM [client] WHERE [id_client] = @id_client" InsertCommand="INSERT INTO [client] ([full_name], [phone], [address], [email], [id_client]) VALUES (@full_name, @phone, @address, @email, @id_client)" SelectCommand="SELECT [full_name], [phone], [address], [email], [id_client] FROM [client]" UpdateCommand="UPDATE [client] SET [full_name] = @full_name, [phone] = @phone, [address] = @address, [email] = @email WHERE [id_client] = @id_client">
                <DeleteParameters>
                    <asp:Parameter Name="id_client" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="full_name" Type="String" />
                    <asp:Parameter Name="phone" Type="Int32" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="full_name" Type="String" />
                    <asp:Parameter Name="phone" Type="Int32" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    	<div class="sidebar_header">Hóa đơn</div>
        <div class="content">
            <asp:DetailsView ID="DetailsView2" runat="server" Height="50px" Width="648px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="id_bill_item" DataSourceID="SqlDataSource2">
                <Fields>
                    <asp:BoundField DataField="id_bill_item" HeaderText="id_bill_item" ReadOnly="True" SortExpression="id_bill_item" />
                    <asp:BoundField DataField="id_bill" HeaderText="id_bill" SortExpression="id_bill" />
                    <asp:BoundField DataField="id_product" HeaderText="id_product" SortExpression="id_product" />
                    <asp:BoundField DataField="amount" HeaderText="amount" SortExpression="amount" />
                    <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:qlchConnectionString %>" DeleteCommand="DELETE FROM [Bill_item] WHERE [id_bill_item] = @id_bill_item" InsertCommand="INSERT INTO [Bill_item] ([id_bill_item], [id_bill], [id_product], [amount], [price]) VALUES (@id_bill_item, @id_bill, @id_product, @amount, @price)" SelectCommand="SELECT [id_bill_item], [id_bill], [id_product], [amount], [price] FROM [Bill_item]" UpdateCommand="UPDATE [Bill_item] SET [id_bill] = @id_bill, [id_product] = @id_product, [amount] = @amount, [price] = @price WHERE [id_bill_item] = @id_bill_item">
                <DeleteParameters>
                    <asp:Parameter Name="id_bill_item" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="id_bill_item" Type="Int32" />
                    <asp:Parameter Name="id_bill" Type="Int32" />
                    <asp:Parameter Name="id_product" Type="Int32" />
                    <asp:Parameter Name="amount" Type="Int32" />
                    <asp:Parameter Name="price" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="id_bill" Type="Int32" />
                    <asp:Parameter Name="id_product" Type="Int32" />
                    <asp:Parameter Name="amount" Type="Int32" />
                    <asp:Parameter Name="price" Type="Int32" />
                    <asp:Parameter Name="id_bill_item" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    	<div class="sidebar_header">Danh mục</div>        
        <div class="content">
            <asp:DetailsView ID="DetailsView3" runat="server" Height="50px" Width="650px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="id_product_category" DataSourceID="SqlDataSource3">
                <Fields>
                    <asp:BoundField DataField="id_product_category" HeaderText="id_product_category" ReadOnly="True" SortExpression="id_product_category" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="id_parent" HeaderText="id_parent" SortExpression="id_parent" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:qlchConnectionString %>" DeleteCommand="DELETE FROM [product_category] WHERE [id_product_category] = @id_product_category" InsertCommand="INSERT INTO [product_category] ([id_product_category], [name], [id_parent]) VALUES (@id_product_category, @name, @id_parent)" SelectCommand="SELECT [id_product_category], [name], [id_parent] FROM [product_category]" UpdateCommand="UPDATE [product_category] SET [name] = @name, [id_parent] = @id_parent WHERE [id_product_category] = @id_product_category">
                <DeleteParameters>
                    <asp:Parameter Name="id_product_category" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="id_product_category" Type="Int32" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="id_parent" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="id_parent" Type="Int32" />
                    <asp:Parameter Name="id_product_category" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    	<div class="sidebar_header" id="products">Sản phẩm</div>
        <div class="content">
            <asp:DetailsView ID="DetailsView4" runat="server" Height="50px" Width="649px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="id_product" DataSourceID="SqlDataSource4" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                <EditRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <Fields>
                    <asp:BoundField DataField="id_product" HeaderText="Mã sản phẩm" ReadOnly="True" SortExpression="id_product" />
                    <asp:BoundField DataField="name" HeaderText="Tên sản phẩm" SortExpression="name" />
                    <asp:BoundField DataField="id_product_category" HeaderText="Mã loại" SortExpression="id_product_category" />
                    <asp:BoundField DataField="price" HeaderText="Giá" SortExpression="price" />
                    <asp:BoundField DataField="description" HeaderText="Mô tả" SortExpression="description" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" ButtonType="Button" CancelText="Hủy" DeleteText="Xóa" EditText="Sửa" InsertText="Thêm" NewText="Mới" SelectText="Chọn" UpdateText="Cập nhật" />
                </Fields>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:qlchConnectionString %>" DeleteCommand="DELETE FROM [product] WHERE [id_product] = @id_product" InsertCommand="INSERT INTO [product] ([id_product], [name], [id_product_category], [price], [description], [img]) VALUES (@id_product, @name, @id_product_category, @price, @description, @img)" SelectCommand="SELECT [id_product], [name], [id_product_category], [price], [description], [img] FROM [product]" UpdateCommand="UPDATE [product] SET [name] = @name, [id_product_category] = @id_product_category, [price] = @price, [description] = @description, [img] = @img WHERE [id_product] = @id_product">
                <DeleteParameters>
                    <asp:Parameter Name="id_product" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="id_product" Type="Int32" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="id_product_category" Type="Int32" />
                    <asp:Parameter Name="price" Type="Int32" />
                    <asp:Parameter Name="description" Type="String" />
                    <asp:Parameter Name="img" Type="Object" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="id_product_category" Type="Int32" />
                    <asp:Parameter Name="price" Type="Int32" />
                    <asp:Parameter Name="description" Type="String" />
                    <asp:Parameter Name="img" Type="Object" />
                    <asp:Parameter Name="id_product" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>

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
       	</div>
    </div>
</footer>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript" src="bootstrap-3.3.6-dist/js/bootstrap.min.js"></script>
    </form>
</body>
</html>
