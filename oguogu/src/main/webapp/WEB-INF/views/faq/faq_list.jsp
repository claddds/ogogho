<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="en">
<meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>FAQ</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
#title {
    width: 600px;
    height: 100px;
    background-color: white;
    text-align: center;
    margin : auto;
    margin-top:60px;
    color: #FFA629;
    font-family: 'Bagel Fat One', cursive;        
    text-shadow: 1px 1px 2px #D1D1D1;
    font-size: 60pt;
    border: none;
    padding-top: 10px;
    justify-content: center; /* 가로 가운데 정렬 */
    align-items: center; /* 세로 가운데 정렬 */
    display: flex; /* Flexbox 사용 */
}

#faqWrapper{
        width: 1130px;
        height: 1200px;
        margin: auto;
        font-family: 'Noto Sans KR', sans-serif;
    }
#faqWrapper > ul > li:first-child {
        text-align: center;
        font-size:14pt;
        height:40px;
        vertical-align:middle;
        line-height:30px;
}
#divPaging {
          clear:both; 
        margin:0 auto; 
        width:220px; 
        height:50px;
}

    #divPaging > div {
        float:left;
        width: 30px;
        margin:0 auto;
        text-align:center;
}

    #liSearchOption {clear:both;}
    #liSearchOption > div {
        margin:0 auto; 
        margin-top: 30px; 
        width:auto; 
        height:100px;

}
.center {
        text-align : center;
}

.sidebar {
	width: 15%;
	background-color: white;
	font-size: 15pt;
	float: left;
	text-align: left;
	padding: 20px;
	box-sizing: border-box;
	margin-top: 160px;
	margin-right: 10px;
}
.sidebar-menu li {
  margin-bottom: 10px;
  list-style-type: none; 
  text-align: left;
}
.sidebar-menu a {
  text-decoration: none;
  color: #333;
}
.table{
	width:1500px;
	margin:0 auto;
	float: right;
	margin-top: 100px;
	
}
footer{
		width:1920px;
		display:flex;
		margin:auto;
		margin-top:20px;
		margin-bottom: 20px;
	}
</style>

    <script type="text/javascript"
            src="${pageContext.servletContext.contextPath }/resources/js/jquery-3.6.3.min.js"></script>
    <script type="text/javascript">
	function write_go() {
		//글쓰기로 이동하는 함수
		location.href = "/faq_insertForm.do";
}
    </script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
</head>
<body>
	<!-- 헤더 구역 -->
	<header>
		<jsp:include page="../home/home_top.jsp" />
	</header>

<div id="faqWrapper" style="width: 1920px;">
	<!-- 사이드바 구역 -->
	<div class="sidebar">
    <ul class="sidebar-menu">
      <li class="notice"><a href="/sup_list.do">공지사항</a></li>
      <hr>
      <li class="faq" style="font-weight: bold;"><a href="/faq_list.do">문의사항</a></li>
      <hr>
      <li class="report"><a href="/rep_list.do">신고</a></li>
     </ul>
  </div>
  <!-- 게시판 리스트 구역 -->
  <div>
	<p id="title">문의사항</p>
	</div>
  <div class="faq_list">
	<table class="table">
  <thead>
    <tr>
      <th scope="col">No.</th>
      <th scope="col">제목</th>
      <th scope="col">유형</th>
      <th scope="col">작성자</th>
      <th scope="col">작성 날짜</th>
      <th scope="col">진행상황</th>
    </tr>
  </thead>
  <tbody>
  <%--
    <c:choose>
					<c:when test="${empty faq_list}">
						<tr>
							<td colspan="5"><h2 style="text-align: center;">자료가 존재하지 않습니다.</h2></td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach var="f" items="${faq_list}" varStatus="vs">
							<tr>
								<td>${paging.totalRecord - ((paging.nowPage-1)*paging.numPerPage + vs.index)}</td>
								<c:choose>
									<c:when test="${f.status == 1 }">
									 <td style="color: gray"> 삭제된 게시물 입니다.</td>
									</c:when>
									<c:otherwise>
									<!-- 제목을 누르면 해당 게시글의 상세정보 페이지로 이동 -->
										<td><a href="/sup_onelist.do?rep_idx=${f.faq_idx}&cPage=${paging.nowPage}">${f.faq_title}</a></td>
									</c:otherwise>
								</c:choose>
								<td>${f.user_id }</td>
								<td>${f.faq_date.substring(0,10)}</td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
  
   --%>
   <tr>
      <th scope="row">1</th>
      <td>반려동물 프로필 사진 어떻게 바꾸나요?</td>
      <td>강아지</td>
      <td>hohoho</td>
      <td>2023/08/24</td>
      <td>답변 대기중</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>hohoho</td>
      <td>2023/08/24</td>
      <td>답변 대기중</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td colspan="2">Larry the Bird</td>
      <td>hohoho</td>
      <td>2023/08/24</td>
      <td>답변 대기중</td>
    </tr>
    <tr>
      <th scope="row">4</th>
      <td colspan="2">Larry the Bird</td>
      <td>hohoho</td>
      <td>2023/08/24</td>
      <td>답변 대기중</td>
    </tr>
    <tr>
      <th scope="row">5</th>
      <td colspan="2">Larry the Bird</td>
      <td>hohoho</td>
      <td>2023/08/24</td>
      <td>답변 대기중</td>
    </tr>
    <tr>
      <th scope="row">6</th>
      <td colspan="2">Larry the Bird</td>
      <td>hohoho</td>
      <td>2023/08/24</td>
      <td>답변 대기중</td>
    </tr>
    <tr>
      <th scope="row">7</th>
      <td colspan="2">Larry the Bird</td>
      <td>hohoho</td>
      <td>2023/08/24</td>
      <td>답변 대기중</td>
    </tr>
    <tr>
      <th scope="row">8</th>
      <td colspan="2">Larry the Bird</td>
      <td>hohoho</td>
      <td>2023/08/24</td>
      <td>답변 대기중</td>
    </tr>
    <tr>
      <th scope="row">9</th>
      <td colspan="2">Larry the Bird</td>
      <td>hohoho</td>
      <td>2023/08/24</td>
      <td>답변 대기중</td>
    </tr>
    <tr>
      <th scope="row">10</th>
      <td colspan="2">Larry the Bird</td>
      <td>hohoho</td>
      <td>2023/08/24</td>
      <td>답변 대기중</td>
    </tr>
   
   
  </tbody>
</table>
  </div>
<%--검색 항목--%>
		<center>
            <li id='liSearchOption'>
            	<form action="qnasearch.do?page=1" method="post">
            	<input type="button" value="글쓰기" style="float: right;" onclick="write_go()">
                <div>
                    <select name="searchtype" >
                        <option value="qname">제목</option>
                        <option value="qcontent">내용</option>
                        <option value="qid">작성자</option>                        
                    </select>
                    <input type="search" name="keyword">
                    <input type="submit" value="검색">
                </div>
                </form>
             </li>

        </ul>
   </div>
   <br>
</center>
<footer>
		<jsp:include page="/WEB-INF/views/home/home_bottom.jsp" />
	</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" ></script>
</body>
</html>