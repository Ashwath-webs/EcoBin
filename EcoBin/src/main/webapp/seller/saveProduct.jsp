<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="java.util.*" %>

<%

List<Map<String,String>> sellerProducts =

(List<Map<String,String>>)
application.getAttribute("sellerProducts");

if(sellerProducts==null){

sellerProducts =
new ArrayList<>();

}

/* GET VALUES */

String id =
UUID.randomUUID().toString();

String name =
request.getParameter("name");

String category =
request.getParameter("category");

String price =
request.getParameter("price");

String processor =
request.getParameter("processor");

String ram =
request.getParameter("ram");

String storage =
request.getParameter("storage");

String condition =
request.getParameter("condition");

String description =
request.getParameter("description");

String image =
request.getParameter("image");

/* DEBUG */

System.out.println(name);
System.out.println(category);
System.out.println(price);

/* DEFAULT IMAGE */

if(image==null || image.trim().equals("")){

image =
"https://images.unsplash.com/photo-1517336714739-489689fd1ca8?q=80&w=1200&auto=format&fit=crop";

}

/* CREATE PRODUCT */

Map<String,String> product =
new HashMap<>();

product.put("id",id);

product.put("name",name);

product.put("category",category);

product.put("price",price);

product.put("processor",processor);

product.put("ram",ram);

product.put("storage",storage);

product.put("condition",condition);

product.put("description",description);

product.put("image",image);

/* SAVE */

sellerProducts.add(product);

application.setAttribute(
"sellerProducts",
sellerProducts
);

/* REDIRECT */

response.sendRedirect(
"manageProducts.jsp"
);

%>