<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/memberrecipe/css/detail.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/memberrecipe/css/remote.css">
    <script type="text/javascript">
        function naverShopping(ingredient) {
            var width = 1200;
            var height = 1800;
            var left = (window.innerWidth - width) / 2;
            var top = (window.innerHeight - height) / 2;

            window.open("${pageContext.request.contextPath}/recipe/naverShopping.do?ingredient=" + ingredient, "_blank", "width=" + width + ",height=" + height + ",left=" + left + ",top=" + top + ",history=no,resizable=no,status=no,scrollbars=yes,menubar=no");
        }
    </script>
</head>
<body data-context-path="${pageContext.request.contextPath }" data-recipe-id="${r.memberRecipeId }"
      data-recipe-img="${r.completePicture }">
<div data-bs-spy="scroll" data-bs-target="#remote-controller" data-bs-smooth-scroll="true"
     class="scrollspy-example container" tabindex="0">
    <br/>
    <h2>${r.title }</h2>
    <c:if test="${sessionScope.loginId.memberId eq r.memberId}">
        <button type="button" class="btn btn-primary"
                onclick="location.href='${pageContext.request.contextPath }/memberrecipe/delete.do?memberRecipeId='+${r.memberRecipeId}">
            삭제하기
        </button>
        <button type="button" class="btn btn-primary"
                onclick="location.href='${pageContext.request.contextPath }/memberrecipe/edit.do?memberRecipeId='+${r.memberRecipeId}">
            수정하기
        </button>
    </c:if>
    <div class="grid-container">
        <div class="container mt-3">
            <div class="grid-item">
                <button type="button" class="btn btn-success" data-bs-toggle="collapse" data-bs-target="#col1"><h5
                        id="ingredient"><strong><i class="bi bi-card-list"></i>&nbsp; 재 료 목 록</strong></h5></button>
                <div class="collapse" id="col1">
                    <c:forEach var="ingredientInfo" items="${ingredients}">
                        <c:if test="${not empty ingredients}">
                            <div class="dropend">
                                <a href="${pageContext.request.contextPath}/recipe/listByPage.do?ingredient=${ingredientInfo}" class="dropend-toggle no-underline" data-bs-toggle="dropdown" aria-expanded="false"><h5><strong>${ingredientInfo}</strong></h5></a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="${pageContext.request.contextPath}/recipe/listByPage.do?ingredient=${ingredientInfo}">재료가 포함된 레시피</a></li>
                                    <li><a class="dropdown-item" href ="#" onclick='naverShopping("${ingredientInfo}")'>재료 구매하기</a></li>
                                </ul>
                            </div>
                        </c:if>
                    </c:forEach>
                </div>
            </div>
            <div class="grid-item">
                <button type="button" class="btn btn-success" data-bs-toggle="collapse" data-bs-target="#col2"><h5
                        id="calorie"><strong><i class="bi bi-fire" style="color:red;"></i>&nbsp; 열 량</strong></h5>
                </button>
                <div class="collapse" id="col2">
                    <h5><strong>${r.calorie } kcal</strong></h5>
                </div>
            </div>
            <div class="grid-item">
                <button type="button" class="btn btn-success" data-bs-toggle="collapse" data-bs-target="#col3"><h5
                        id="way"><strong><i class="bi bi-book-half"></i>&nbsp; 요 리 종 류</strong></h5></button>
                <div class="collapse" id="col3">
                    <h5><strong>${r.way }</strong></h5>
                </div>
            </div>
        </div>
    </div>
    <div class="img-box">
        <h3 id="manual"><span class="badge">조 리 방 법</span></h3>
        <div>
            <img src="${pageContext.request.contextPath}/images/memberrecipe/${r.manual_img_01}" class="img-rounded"
                 onerror="this.style.display='none'" alt=""
                 class="img-thumbnail" id="image-01">
            <span class="badge text-wrap" style="width: 60rem; text-align:left;">${r.manual_01}</span>
        </div>
        <div>
            <img src="${pageContext.request.contextPath}/images/memberrecipe/${r.manual_img_02}" class="img-rounded"
                 onerror="this.style.display='none'" alt=/"
                 class="img-thumbnail" id="image-02">
            <span class="badge text-wrap" style="width: 60rem;">${r.manual_02}</span>
        </div>
        <div>
            <img src="${pageContext.request.contextPath}/images/memberrecipe/${r.manual_img_03}" class="img-rounded"
                 onerror="this.style.display='none'" alt=/"
                 class="img-thumbnail" id="image-03">
            <span class="badge text-wrap" style="width: 60rem;">${r.manual_03}</span>
        </div>
        <div>
            <img src="${pageContext.request.contextPath}/images/memberrecipe/${r.manual_img_04}" class="img-rounded"
                 onerror="this.style.display='none'" alt=/"
                 class="img-thumbnail" id="image-04">
            <span class="badge text-wrap" style="width: 60rem;">${r.manual_04}</span>
        </div>
        <div>
            <img src="${pageContext.request.contextPath}/images/memberrecipe/${r.manual_img_05}" class="img-rounded"
                 onerror="this.style.display='none'" alt=/"
                 class="img-thumbnail" id="image-05">
            <span class="badge text-wrap" style="width: 60rem;">${r.manual_05}</span>
        </div>
        <div>
            <img src="${pageContext.request.contextPath}/images/memberrecipe/${r.manual_img_06}" class="img-rounded"
                 onerror="this.style.display='none'" alt=/"
                 class="img-thumbnail" id="image-06">
            <span class="badge text-wrap" style="width: 60rem;">${r.manual_06}</span>
        </div>
    </div>
    <div class="img-box">
        <h3 id="comPic"><span class="badge">완 성 사 진</span></h3>
        <div>
            <img src="${pageContext.request.contextPath}/images/memberrecipe/${r.completePicture}" class="img-rounded"
                 onerror="this.src='${pageContext.request.contextPath }/images/logo/z_no_image.png'"
                 alt="${r.completePicture}" style="width:500px; height:400px;">
        </div>
    </div>

    <%-- 후기 --%>
    <div id="review-container">
        <h3 class="mb-3" id="review"><span class="badge">후 기</span></h3>

        <%-- 후기 작성 --%>
        <button id="write-review" class="btn btn-primary">후기 작성</button>
        <div id="write-review-form" class="py-3 px-4 mb-5 border-bottom d-none">
            <form name="rf" action="${pageContext.request.contextPath}/recipereview/create.do" method="POST"
                  class="w-75 d-flex">
                <input type="hidden" value="${r.memberRecipeId}" name="recipeId">
                <textarea name="content" id="content" placeholder="후기를 입력해주세요."
                          class="form-control flex-fill"></textarea>
                <input type="submit" value="작성" class="btn btn-primary align-self-end ms-3">
            </form>
        </div>

        <%-- 후기 목록--%>
        <div id="review-items" class="px-4">
            <c:forEach var="review" items="${reviews}">
                <div id="review-item-${review.reviewId}" class="review-item border-bottom pt-3 pb-5">
                    <div class="review-info d-flex w-75">
                        <a href="<c:url value="/member/mypage.do?loginId=${review.loginId}"/>">
                            <div class="profile-img d-inline-block rounded-circle" style="">
                                <c:if test="${review.profile != null}">
                                    <img src="${pageContext.request.contextPath}/images/profile/${review.profile}"
                                         alt="profile_img"
                                         class="img-fluid rounded-circle">
                                </c:if>
                                <c:if test="${review.profile == null}">
                                    <img src="${pageContext.request.contextPath}/images/profile/프사기본.jpg"
                                         alt="default_profile_img"
                                         class="img-fluid rounded-circle">
                                </c:if>
                            </div>
                        </a>
                        <div class="review-info-text align-self-center ms-3">
                            <a href="<c:url value="/member/mypage.do?loginId=${review.loginId}"/>" class="text-decoration-none">${review.nickname}</a> | <span class="text-secondary">${review.formattedDateTime}</span>&nbsp;
                        </div>
                        <div class="review-info-btn ms-auto">
                            <c:if test="${sessionScope.loginId.memberId == review.memberId}">
                                <button class="edit-review-btn btn btn-outline-dark btn-sm" val="${review.reviewId}">
                                    수정
                                </button>
                                <form action="<c:url value='/recipereview/delete.do'/>"
                                      class="del-review-form d-inline-block"
                                      method="POST" val="">
                                    <input type="hidden" name="reviewId" value="${review.reviewId}">
                                    <input type="hidden" name="recipeId" value="${review.recipeId}">
                                    <input type="submit" value="삭제" class="btn btn-outline-danger btn-sm">
                                </form>
                            </c:if>
                        </div>
                    </div>
                    <div id="review-content-${review.reviewId}" class="review-content mb-2">
                            ${review.content}
                    </div>
                    <div class="review-like">
                        <button id="r-like-${review.reviewId}" class="r-like-btn btn btn-outline-danger"
                                data-review-id="${review.reviewId}" <c:if test="${loginId == null}">disabled</c:if>><i
                                class="bi bi-heart-fill"></i> <span
                                id="like-cnt-${review.reviewId}">${review.likeCnt}</span></button>
                    </div>

                        <%-- eidt form --%>
                    <div id="edit-review-form-${review.reviewId}" class="edit-review-form pt-3 px-4 d-none">
                        <form name="rf-${review.reviewId}"
                              action="${pageContext.request.contextPath}/recipereview/create.do"
                              method="POST"
                              class="er-form w-75 d-flex">
                            <input type="hidden" value="${review.recipeId}" name="recipeId">
                            <input type="hidden" value="${review.reviewId}" name="reviewId">
                            <textarea name="content" placeholder="후기를 입력해주세요."
                                      class="form-control flex-fill">${review.content}</textarea>
                            <input type="submit" value="수정" class="btn btn-primary align-self-end ms-3">
                        </form>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>

<%-- remote --%>
<div id="float-div" class="d-flex gap-2">
    <div id="remote-controller" class="text-center list-group">
        <a href="#ingredient" class="list-group-item list-group-item-action">재 료 목 록</a>
        <a href="#manual" class="list-group-item list-group-item-action">조 리 방 법</a>
        <a href="#comPic" class="list-group-item list-group-item-action">완 성 사 진</a>
        <a href="#review" class="list-group-item list-group-item-action">후 기 보 기</a>
    </div>
    <div id="view-history" class="">

    </div>
</div>

<script type="text/javascript" src="${pageContext.request.contextPath}/memberrecipe/js/detail_view_history.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/memberrecipe/js/review.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/memberrecipe/js/review_like.js"></script>
</body>
</html>