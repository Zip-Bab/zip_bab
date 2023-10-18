<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Freelancer - Start Bootstrap Theme</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body id="page-top">
        <!-- Contact Section-->
        <section class="page-section" id="contact">
            <div class="container">
                <!-- Contact Section Heading-->
                <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">레시피 작성</h2>
                <!-- Icon Divider-->
                <div class="divider-custom">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div>
                <!-- Contact Section Form-->
                <div class="row justify-content-center">
                    <div class="col-lg-8 col-xl-7">
                        <!-- * * * * * * * * * * * * * * *-->
                        <!-- * * SB Forms Contact Form * *-->
                        <!-- * * * * * * * * * * * * * * *-->
                        <!-- This form is pre-integrated with SB Forms.-->
                        <!-- To make this form functional, sign up at-->
                        <!-- https://startbootstrap.com/solution/contact-forms-->
                        <!-- to get an API token!-->
                        <form id="contactForm" action="${pageContext.request.contextPath }/memberrecipe/create.do" method="post" enctype="multipart/form-data" data-sb-form-api-token="API_TOKEN">
                            <input type="hidden" name="memberId" value="${sessionScope.loginId.memberId }" readonly>

                            <!-- title input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" id="title" name="title" type="text" placeholder="Enter your title..." data-sb-validations="required" />
                                <label for="title">제목</label>
                                <div class="invalid-feedback" data-sb-feedback="title:required">A title is required.</div>
                            </div>
                            <!-- SubTitle input-->
                            <div class="form-floating mb-3">
                                <textarea class="form-control" id="subTitle" name="subTitle" type="text" placeholder="Enter your SubTitle here..." style="height: 10rem" data-sb-validations="required"></textarea>
                                <label for="subTitle">부제목</label>
                                <div class="invalid-feedback" data-sb-feedback="subTitle:required">A subTitle is required.</div>
                            </div>
                            <!-- way input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" id="way" name="way" type="text" placeholder="Enter your way..." data-sb-validations="required" />
                                <label for="way">요리종류</label>
                                <div class="invalid-feedback" data-sb-feedback="way:required">A way is required.</div>
                            </div>
                            <!-- ingredientInfo input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" id="ingredientInfo" name="ingredientInfo" type="text" placeholder="Enter your name..." data-sb-validations="required" />
                                <label for="ingredientInfo">재료</label>
                                <div class="invalid-feedback" data-sb-feedback="ingredientInfo:required">A ingredientInfo is required.</div>
                            </div>
                            <!-- 메뉴얼1 input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" id="menual1" name="manual_01" type="text" placeholder="Enter your menual1..." data-sb-validations="required" />
                                <label for="menual1">메뉴얼1</label>
                                <div class="invalid-feedback" data-sb-feedback="menual1:required">A menual1 is required.</div>
                            </div>
                            <!-- 메뉴얼2 input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" id="menual2" name="manual_02" type="text" placeholder="Enter your menual2..." data-sb-validations="required" />
                                <label for="menual2">메뉴얼2</label>
                                <div class="invalid-feedback" data-sb-feedback="menual2:required">A menual2 is required.</div>
                            </div>
                            <!-- 메뉴얼3 input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" id="menual3" name="manual_03" type="text" placeholder="Enter your menual3..." data-sb-validations="required" />
                                <label for="menual3">메뉴얼3</label>
                                <div class="invalid-feedback" data-sb-feedback="menual3:required">A menual3 is required.</div>
                            </div>
                            <!-- 메뉴얼4 input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" id="메뉴얼4" name="manual_04" type="text" placeholder="Enter your 메뉴얼4..." data-sb-validations="required" />
                                <label for="메뉴얼4">메뉴얼4</label>
                                <div class="invalid-feedback" data-sb-feedback="메뉴얼4:required">A 메뉴얼4 is required.</div>
                            </div>
                            <!-- 메뉴얼5 input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" id="menual5" name="manual_05" type="text" placeholder="Enter your menual5..." data-sb-validations="required" />
                                <label for="menual5">메뉴얼5</label>
                                <div class="invalid-feedback" data-sb-feedback="menual5:required">A menual5 is required.</div>
                            </div>
                            <!-- 메뉴얼6 input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" id="menual6" name="manual_06" type="text" placeholder="Enter your menual6..." data-sb-validations="required" />
                                <label for="menual6">메뉴얼6</label>
                                <div class="invalid-feedback" data-sb-feedback="menual6:required">A menual6 is required.</div>
                            </div>
                            <!-- 메뉴얼7 input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" id="menual7" name="manual_07" type="text" placeholder="Enter your menual7..." data-sb-validations="required" />
                                <label for="menual7">메뉴얼7</label>
                                <div class="invalid-feedback" data-sb-feedback="menual7:required">A menual7 is required.</div>
                            </div>
                            <!-- 메뉴얼8 input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" id="menual8" name="manual_08" type="text" placeholder="Enter your menual8..." data-sb-validations="required" />
                                <label for="menual8">메뉴얼8</label>
                                <div class="invalid-feedback" data-sb-feedback="menual8:required">A menual8 is required.</div>
                            </div>
                            <!-- 메뉴얼9 input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" id="menual9" name="manual_09" type="text" placeholder="Enter your menual9..." data-sb-validations="required" />
                                <label for="menual9">메뉴얼9</label>
                                <div class="invalid-feedback" data-sb-feedback="menual9:required">A menual9 is required.</div>
                            </div>
                            <!-- 메뉴얼10 input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" id="menual10" name="manual_10" type="text" placeholder="Enter your menual10..." data-sb-validations="required" />
                                <label for="menual10">메뉴얼10</label>
                                <div class="invalid-feedback" data-sb-feedback="menual10:required">A menual10 is required.</div>
                            </div>
                            <!-- 메뉴얼11 input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" id="menual11" name="manual_11" type="text" placeholder="Enter your menual11..." data-sb-validations="required" />
                                <label for="menual11">메뉴얼11</label>
                                <div class="invalid-feedback" data-sb-feedback="menual11:required">A menual11 is required.</div>
                            </div>
                            <!-- 메뉴얼12 input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" id="menual12" name="manual_12" type="text" placeholder="Enter your menual12..." data-sb-validations="required" />
                                <label for="menual12">메뉴얼12</label>
                                <div class="invalid-feedback" data-sb-feedback="menual12:required">A menual12 is required.</div>
                            </div>
                            <!-- 사진1 input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" type="file"  id="img1" data-sb-validations="required" name="img1"/>
                                <label for="img1">사진1</label>
                            </div>
                            <!-- 사진2 input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" type="file" id="img2" data-sb-validations="required" name="img2"/>
                                <label for="img2">사진2</label>
                            </div>
                            <!-- 사진3 input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" type="file" id="img3" data-sb-validations="required" name="img3"/>
                                <label for="img3">사진3</label>
                            </div>
                            <!-- 사진4 input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" type="file" id="img4" data-sb-validations="required" name="img4"/>
                                <label for="img4">사진4</label>
                            </div>
                            <!-- 사진5 input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" type="file" id="img5" data-sb-validations="required" name="img5"/>
                                <label for="img5">사진5</label>
                            </div>
                            <!-- 사진6 input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" type="file" id="img6" data-sb-validations="required" name="img6"/>
                                <label for="img6">사진6</label>
                            </div>
                            <!-- 사진7 input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" type="file" id="img7" data-sb-validations="required" name="img7"/>
                                <label for="img7">사진7</label>
                            </div>
                            <!-- 사진8 input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" type="file" id="img8" data-sb-validations="required" name="img8"/>
                                <label for="img8">사진8</label>
                            </div>
                            <!-- 사진9 input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" type="file" id="img9" data-sb-validations="required" name="img9"/>
                                <label for="img9">사진9</label>
                            </div>
                            <!-- 사진10 input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" type="file" id="img10" data-sb-validations="required" name="img10"/>
                                <label for="img10">사진10</label>
                            </div>
                            <!-- 사진11 input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" type="file" id="img11" data-sb-validations="required" name="img11"/>
                                <label for="img11">사진11</label>
                            </div>
                            <!-- 사진12 input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" type="file" id="img12" data-sb-validations="required" name="img12"/>
                                <label for="img12">사진12</label>
                            </div>
                            <!-- 완성사진 input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" type="file" id="completePicture" data-sb-validations="required" name="completePicture"/>
                                <label for="completePicture">완성사진</label>
                            </div>
                            <!-- 열량 input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" id="calorie" name="calorie" type="text" placeholder="Enter your calorie..." data-sb-validations="required" />
                                <label for="calorie">칼로리</label>
                                <div class="invalid-feedback" data-sb-feedback="calorie:required">A calorie is required.</div>
                            </div>

                            <!-- Submit success message-->
                            <!---->
                            <!-- This is what your users will see when the form-->
                            <!-- has successfully submitted-->
                            <div class="d-none" id="submitSuccessMessage">
                                <div class="text-center mb-3">
                                    <div class="fw-bolder">Form submission successful!</div>
                                    To activate this form, sign up at
                                    <br />
                                    <a href="https://startbootstrap.com/solution/contact-forms">https://startbootstrap.com/solution/contact-forms</a>
                                </div>
                            </div>
                            <!-- Submit error message-->
                            <!---->
                            <!-- This is what your users will see when there is-->
                            <!-- an error submitting the form-->
                            <div class="d-none" id="submitErrorMessage"><div class="text-center text-danger mb-3">Error sending message!</div></div>
                            <!-- Submit Button-->
                            <button class="btn btn-primary btn-xl" type="submit" value="등록">등록</button>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
    </body>
</html>
