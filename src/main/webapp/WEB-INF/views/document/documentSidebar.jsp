<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<sec:authentication var="loginMember" property="principal"/>
<%@ page session="true" %>
    <!-- Fonts and icons -->
    <script src="${path}/resources/assets/js/plugin/webfont/webfont.min.js"></script>
    <script>
      WebFont.load({
        google: { families: ["Public Sans:300,400,500,600,700"] },
        custom: {
          families: [
            "Font Awesome 5 Solid",
            "Font Awesome 5 Regular",
            "Font Awesome 5 Brands",
            "simple-line-icons",
          ],
          urls: ["${path}/resources/assets/css/fonts.min.css"],
        },
        active: function () {
          sessionStorage.fonts = true;
        },
      });
    </script>

    <!-- CSS Files -->
    <link rel="stylesheet" href="${path}/resources/assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="${path}/resources/assets/css/plugins.min.css" />
    <link rel="stylesheet" href="${path}/resources/assets/css/kaiadmin.min.css" />

    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link rel="stylesheet" href="${path}/resources/assets/css/demo.css" />
  	<div class="sidebar" data-background-color="dark">
  	<div class="sidebar-logo">
       <!-- Logo Header -->
       <div class="logo-header" data-background-color="dark">
         <a href="${path}/" class="logo">
           <img
             src="${path}/resources/assets/img/KakaoTalk_Photo_2024-07-08-14-27-11.png"
                alt="navbar brand"
                class="navbar-brand"
                height="90"
           />
         </a>
         <div class="nav-toggle">
           <button class="btn btn-toggle toggle-sidebar">
             <i class="gg-menu-right"></i>
           </button>
           <button class="btn btn-toggle sidenav-toggler">
             <i class="gg-menu-left"></i>
           </button>
         </div>
       </div>
       <!-- End Logo Header -->
     </div>
  	<div class="sidebar-wrapper scrollbar scrollbar-inner">
          <div class="sidebar-content">
            <ul class="nav nav-secondary">
           		<li class="mb-4 text-center">
                  <a href="${path }/document/form" class="btn btn-primary btn-round w-75">문서 작성하기</a>
               </li>
              <li class="nav-item">
                <a
                  href="${path }/document/home"
                >
                  <i class="fas fa-home"></i><p>전자결재 Home</p>
                </a>
              </li>
              <!-- 토글리스트 -->
              <li class="nav-section">
                <span class="sidebar-mini-icon">
                  <i class="fa fa-ellipsis-h"></i>
                </span>
              </li>
              <li class="nav-item">
                <a data-bs-toggle="collapse" href="#docING">
                  <i class="fas fa-pen-square"></i>
                  <p>결재 상신함</p>
                  <span class="caret"></span>
                </a>
                <div class="collapse" id="docING">
                  <ul class="nav nav-collapse">
                    <li>
                      <a href="${path }/document/list/employee/inprocess">
                        <span class="sub-item">진행 문서</span>
                      </a>
                    </li>
                    <li>
                      <a href="${path }/document/list/employee/complete">
                        <span class="sub-item">승인 문서</span>
                      </a>
                    </li>
                    <li>
                      <a href="${path }/document/list/employee/rejected">
                        <span class="sub-item">반려 문서</span>
                      </a>
                    </li>
                    <li>
                      <a href="${path }/document/list/employee/retrieve">
                        <span class="sub-item">회수 문서</span>
                      </a>
                    </li>
                    <li>
                      <a href="${path }/document/list/employee/draft">
                        <span class="sub-item">임시 보관 문서</span>
                      </a>
                    </li>
                  </ul>
                </div>
              </li>
              <li class="nav-item">
                <a data-bs-toggle="collapse" href="#sidebarLayouts">
                  <i class="fas fa-th-list"></i>
                  <p>결재 수신함</p>
                  <span class="caret"></span>
                </a>
                <div class="collapse" id="sidebarLayouts">
                  <ul class="nav nav-collapse">
                    <li>
                      <a href="${path }/document/list/approver/waiting">
                        <span class="sub-item">결재 대기 문서</span>
                      </a>
                    </li>
                    <li>
                      <a href="${path }/document/list/approver/complete">
                        <span class="sub-item">결재 승인 문서</span>
                      </a>
                    </li>
                    <li>
                      <a href="${path }/document/list/approver/pending">
                        <span class="sub-item">결재 보류 문서</span>
                      </a>
                    </li>
                    <li>
                      <a href="${path }/document/list/approver/rejected">
                        <span class="sub-item">결재 반려 문서</span>
                      </a>
                    </li>
                  </ul>
                </div>
              </li>
              <li class="nav-item">
                <a data-bs-toggle="collapse" href="#forms">
                  <i class="fas fa-pen-square"></i>
                  <p>열람 문서함</p>
                  <span class="caret"></span>
                </a>
                <div class="collapse" id="forms">
                  <ul class="nav nav-collapse">
                    <li>
                      <a href="${path }/document/list/referer/reference">
                        <span class="sub-item">참조 문서</span>
                      </a>
                    </li>
                  </ul>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
  
  
      <!-- End Sidebar -->
      <!-- End Custom template -->
    <!--   Core JS Files   -->
    <script src="${path}/resources/assets/js/core/jquery-3.7.1.min.js"></script>
    <script src="${path}/resources/assets/js/core/popper.min.js"></script>
    <%-- <script src="${path}/resources/assets/js/core/bootstrap.min.js"></script> --%>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

    <!-- jQuery Scrollbar -->
    <script src="${path}/resources/assets/js/plugin/jquery-scrollbar/jquery.scrollbar.min.js"></script>

    <!-- Chart JS -->
    <script src="${path}/resources/assets/js/plugin/chart.js/chart.min.js"></script>

    <!-- jQuery Sparkline -->
    <script src="${path}/resources/assets/js/plugin/jquery.sparkline/jquery.sparkline.min.js"></script>

    <!-- Chart Circle -->
    <script src="${path}/resources/assets/js/plugin/chart-circle/circles.min.js"></script>

    <!-- Datatables -->
    <script src="${path}/resources/assets/js/plugin/datatables/datatables.min.js"></script>

    <!-- Bootstrap Notify -->
    <script src="${path}/resources/assets/js/plugin/bootstrap-notify/bootstrap-notify.min.js"></script>

    <!-- jQuery Vector Maps -->
    <script src="${path}/resources/assets/js/plugin/jsvectormap/jsvectormap.min.js"></script>
    <script src="${path}/resources/assets/js/plugin/jsvectormap/world.js"></script>

    <!-- Sweet Alert -->
    <script src="${path}/resources/assets/js/plugin/sweetalert/sweetalert.min.js"></script>

    <!-- Kaiadmin JS -->
    <script src="${path}/resources/assets/js/kaiadmin.min.js"></script>

    <!-- Kaiadmin DEMO methods, don't include it in your project! -->
    <script src="${path}/resources/assets/js/setting-demo.js"></script>
    <script src="${path}/resources/assets/js/demo.js"></script>
    <script>
      $("#lineChart").sparkline([102, 109, 120, 99, 110, 105, 115], {
        type: "line",
        height: "70",
        width: "100%",
        lineWidth: "2",
        lineColor: "#177dff",
        fillColor: "rgba(23, 125, 255, 0.14)",
      });

      $("#lineChart2").sparkline([99, 125, 122, 105, 110, 124, 115], {
        type: "line",
        height: "70",
        width: "100%",
        lineWidth: "2",
        lineColor: "#f3545d",
        fillColor: "rgba(243, 84, 93, .14)",
      });

      $("#lineChart3").sparkline([105, 103, 123, 100, 95, 105, 115], {
        type: "line",
        height: "70",
        width: "100%",
        lineWidth: "2",
        lineColor: "#ffa534",
        fillColor: "rgba(255, 165, 52, .14)",
      });
    </script>