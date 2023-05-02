<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>

<head>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
</head>


<body>


<div class="container">
<h1>Expense Manager</h1>

<form action="dataInsert.jsp" method="post">

    <div class="mb-3">
      <select name="category" class="form-select" aria-label="Default select example">
         <option value="">--Please Select--</option>
         <option value="Transportation">Transportation</option>
         <option value="Food">Food</option>
         <option value="Fees">Fees</option>
         <option value="Bill">Bills</option>
         <option value="Entertainment">Entertainment</option>
       </select>
     </div>


  <div class="mb-3">
           <label for="expenseDate">Date:</label>
           <input type="date"  name="date">
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Expense Name</label>
    <input type="text" name="name" class="form-control">
  </div>

  <div class="mb-3">
    <label class="form-label">Description</label>
    <textarea name="description" id="" cols="100" rows="5"></textarea>
  </div>

   <div class="mb-3">
      <label  class="form-label">Amount</label>
      <input type="text" name= "amount" class="form-control">
    </div>

 <input type="submit" value="Submit">
</form>


</div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
