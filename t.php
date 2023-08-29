<html>

    <head>
        <title id="ti">Fire Safety</title>
        <script
	src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.min.js"></script>
        <link rel="stylesheet" href="style.css">
		
        <script type="text/javascript" src="jquery-3.6.0.min.js"
        src="jautocalc.js"></script>

        <style>
   html{
  height: 100%;
}
body{
  position: relative;
  height: 100%;
}

body:before{
  content: ' ';
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  background:  url(background.png);
  background-position: center;  
  background-repeat: no-repeat;
  background-attachment: fixed;
  z-index: -1;
  opacity: 2.5;
}
.header {
        overflow: hidden;
        background-color: #f1f1f1;
        padding: 15px 10px;
      }
      .header a.font{
        color: #171FF6;
      }
      .header a {
        float: left;
        color:black;
        text-align: center;
        padding: 12px;
        text-decoration: none;
        font-size: 18px; 
        line-height: 25px;
        border-radius: 4px;
      }
      
      .header a.logo {
        font-size: 25px;
        font-weight: bold;
      }
      
      .header a:hover {
        background-color: #ddd;
        color: black;
      }
      
      .header a.active {
        background-color: rgb(253, 74, 74);
        color: white;
      }
      
      
      .header-right {
        float: right;
      }
      
      @media screen and (max-width: 500px) {
        .header a {
          float: none;
          display: block;
          text-align: left;
        }
        
        .header-right {
          float: none;
        }
      }
      td {
  padding: 10px;
  text-align: left;
  border: 1px solid #ddd;
}
table {
  border-collapse: collapse;
  width: 100%;
  margin-left:25%;
  margin-top:10%;
}
th {
  background-color:#FFCCCB;
}

     </style>
    
    </head>
    <div class="header">
            <a href="#default" class="logo" style="padding-left:45%;">Fire Safety</a>
            <div class="header-right">
    </div>
    </div>
    <body>
<?php
//require_once __DIR__ . '/template.html'; 
// Connect to MySQL database
$conn = mysqli_connect("localhost", "root", "", "id20230661_myoffice");

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

// Fetch data from MySQL database
$sql = "SELECT * FROM cust_date";
$sql1="SELECT * FROM income";
$result = mysqli_query($conn, $sql);
$result1 = mysqli_query($conn, $sql1);?>
<div id="content" style="margin-top:20px;">
<table style="width:50%;">
  <tr>
  <th><?php echo 'cname'?></th>
  <th><?php echo 'estimate'?></th>
  <th><?php echo 'company_name'?></th>
</tr>

<?php while ($row = mysqli_fetch_assoc($result)) {?>
  <tr>
  <td><?php echo $row['cname']?></td>
    <td><?php echo $row['estimate']?></td>
    <td><?php echo $row['company_name']?></td>
</tr>
<?php } ?>
</table>
</div>
<button id="print" style="margin-top:10px;margin-left:45%;" >Save</button>
<div id="content1">
      <table style="width:50%;">
        <tr>
        <th><?php echo 'cname'?></th>
        <th><?php echo 'Company Namw'?></th>
        <th><?php echo 'Amount'?></th>
      </tr>
      <?php while ($row1 = mysqli_fetch_assoc($result1)) {?>
        <tr>
        <td><?php echo $row1['cname']?></td>
          <td><?php echo $row1['company_name']?></td>
          <td><?php echo $row1['amount']?></td>
      </tr>
      <?php } ?>
      </table>
     
</div>
<button id="print1" style="margin-top:10px;margin-left:45%;" >Save</button>
<br>
      <br>
<script>
	var buttonElement = document.querySelector("#print");
		buttonElement.addEventListener('click', function() {
			var pdfContent = document.querySelector("#content");
			html2pdf().from(pdfContent).save();
		});
    var buttonElement = document.querySelector("#print1");
		buttonElement.addEventListener('click', function() {
			var pdfContent = document.querySelector("#content1");
			html2pdf().from(pdfContent).save();
		});
</script>
</body>
</html>