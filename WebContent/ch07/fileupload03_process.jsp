<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <%
      String fileUploadPath = "C:\\java13\\upload";
      DiskFileUpload upload = new DiskFileUpload();
      
      /* request 내장 객체에서 multipart/form-data 방식을 데이터를 모두 가져옴 */
      List items = upload.parseRequest(request);
      Iterator params = items.iterator();
      
      while(params.hasNext()) {
         FileItem fileItem = (FileItem) params.next();
         if(!fileItem.isFormField()){
            String fileName = fileItem.getName();
            /* substring : 지정된 index에서 부터 끝까지의 문자열을 잘라내어 반환 */
            /* lastIndexOf : 지정된 문자열을 해당 문자열의 끝에서부터 검색하여 문자열이 있는 index 위치를 알려줌 */
            /* 경로를 제외한 파일 이름만 가져옴 */
            fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
            File file = new File(fileUploadPath + "/" + fileName);
            /* 지정된 경로 파일을 저장 */
            fileItem.write(file);
         }
      }
   %>
</body>
</html>