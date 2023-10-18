<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head><title>Projection by TEMPLATED</title>
  <meta charset="utf-8">
  <meta name="robots" content="index, follow, max-image-preview:large, max-snippet:-1, max-video-preview:-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/member/css/main.css">
  <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
  <link rel="stylesheet" href="/css/mypage.css">
</head>
<body>

<!-- Banner -->
<section id="banner">
  <div class="inner">
    <h2 style="color: white; position:absolute; top:3rem; left:15em;">${member.nickname }님의 마이페이지</h2>
    <header>
      <div class="inner">
        <c:if test="${member.profile != null}">
          <div class="image round">
            <img class="profile"
                 src="${pageContext.request.contextPath }/images/profile/${member.profile}" alt="Pic 01"
                 width="150" height="150">
          </div>
        </c:if>
        <c:if test="${member.profile == null}">
          <div class="image round">
            <img class="profile" src="${pageContext.request.contextPath }/images/profile/프사기본.jpg" alt="profile_img" width="150" alt="Pic 01"
                 height="150">
          </div>
        </c:if>

        <header>
          </br><h3>${member.nickname }</h3><br>
        </header>

      </div>

      <div class="flex ">
        <div id="followingCount">
          <h3>${followingCount}</h3>
          <p>팔로워</p> <!--날 추종함-->
        </div>

        <div id="followerCount">
          <h3>${followerCount}</h3>
          <p>팔로잉</p> <!-- 내가 추종-->
        </div>
      </div>


      <footer>
        <c:if test="${sessionScope.loginId.loginId ne member.loginId }">
          <c:if test="${not isFollowed }">
            <a onclick="follow()" class="button <c:if test="${empty loginId}">disabled</c:if>">팔로우</a>
          </c:if>
          <c:if test="${isFollowed }">
            <a onclick="follow()" class="button">팔로우취소</a>
          </c:if>
        </c:if>
        <c:if test="${sessionScope.loginId.loginId eq member.loginId}">
          <a href="${pageContext.request.contextPath }/member/edit.do?loginId=${sessionScope.loginId.loginId}" class="button">프로필편집</a>
        </c:if>
      </footer>
    </header>
  </div>
</section><!-- Three -->


<c:if test="${rlist != null}">
  <h3><span class="badge text-bg-primary">${member.nickname}님의 <strong style="color:red;">찜</strong> 목록</span></h3>
  <div class="swiper-container">
    <div class="swiper-wrapper">
      <c:forEach var="r" items="${rlist}" varStatus="loop">
        <div class="swiper-slide">
          <a href="${pageContext.request.contextPath}/recipe/detail.do?recipeId=${r.recipeId}">
            <img src="${r.completePicture}" style="width:200px; height:200px;" class="border rounded"
                 alt="${pageContext.request.contextPath }/images/recipe/default.jpg">
          </a>
        </div>
      </c:forEach>
    </div>
    <div class="swiper-button-next"></div>
    <div class="swiper-button-prev"></div>
  </div>

  <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
  <script>
      var swiper = new Swiper('.swiper-container', {
          slidesPerView: 6,
          spaceBetween: 100,

          navigation: {
              nextEl: '.swiper-button-next',
              prevEl: '.swiper-button-prev',
          },
      });

      document.querySelector('.swiper-button-next').style.top = 1250 + 'px';
      document.querySelector('.swiper-button-prev').style.top = 1250 + 'px';
  </script>
</c:if>


<!-- Scripts -->
<script type="text/javascript">
    console.log('${loginId}')
    function follow() {
        if ('${loginId}' === '') {
            alert("로그인을 해주세요.")
        } else {
          window.location.href = "/follow/add.do?followerId=${sessionScope.loginId.memberId}&followingId=${member.memberId}";
        }
    }
</script>


<c:forEach var="r" items="${rlist}" varStatus="loop">
  <a href="${pageContext.request.contextPath}/member/mypage.do?memberId=${member.nickname}"></a>
</c:forEach>

<script>
    function loadFollowingList() {
        var width = 600;
        var height = 600;
        var left = (window.innerWidth - width) / 2;
        var top = (window.innerHeight - height) / 2;

        window.open("${pageContext.request.contextPath}/follow/followerList.do?loginId=${member.loginId}", "_blank", "width=" + width + ",height=" + height + ",left=" + left + ",top=" + top + ",history=no,resizable=no,status=no,scrollbars=yes,menubar=no");
    }
    document.getElementById('followingCount').addEventListener('click', loadFollowingList);
</script>
<script>
    function loadFollowerList() {
        var width = 600;
        var height = 600;
        var left = (window.innerWidth - width) / 2;
        var top = (window.innerHeight - height) / 2;

        window.open("${pageContext.request.contextPath}/follow/followingList.do?loginId=${member.loginId}", "_blank", "width=" + width + ",height=" + height + ",left=" + left + ",top=" + top + ",history=no,resizable=no,status=no,scrollbars=yes,menubar=no");
    }
    document.getElementById('followerCount').addEventListener('click', loadFollowerList);
</script>

<script src="js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/member/js/skel.min.js"></script>
<script src="${pageContext.request.contextPath}/member/js/util.js"></script>
<script src="${pageContext.request.contextPath}/member/js/main.js"></script>
</body>
</html>
