<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<c:set var="path" value="${pageContext.request.contextPath }"/>	
  <div class="modal fade" id="formModal" tabindex="-1" aria-labelledby="formModalLabel" aria-hidden="true">
	    <div class="modal-dialog modal-lg">
	      <div class="modal-content">
	        <div class="modal-header">
	          <h5 class="modal-title" id="formModalLabel">사원 등록</h5>
	          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	            <span aria-hidden="true">&times;</span>
	          </button>
	        </div>
        <div class="modal-body">
		<form action="${path}/admin/member/insertmemberend.do" method="post">
		 <div class="container">
          <div class="page-inner">
            	<div class="form-group">
            		<div class="form-group">
                          <label
                            for="memberName"
                            class="col-md-3 col-form-label"
                            >이름</label
                          >
                          <div class="col-md-9 p-0">
                            <input
                              type="text"
                              class="form-control input-full"
                              id="memberName"
                              name="memberName"
                              placeholder="이름"
							  required
                            />
                          </div>
               		</div>
               		<div class="form-group">
                          <label
                            for="memberAddress"
                            class="col-md-3 col-form-label"
                            >주소</label
                          >
                          <div class="col-md-9 p-0">
                            <input
                              type="text"
                              class="form-control input-full"
                              id="memberAddress"
                              name="memberAddress"
                              placeholder="주소"
							  required
                            />
                          </div>
               		</div>

               		<div class="form-group">
                          <label
                            for="memberPhone"
                            class="col-md-3 col-form-label"
                            >핸드폰</label
                          >
                          <div class="col-md-9 p-0">
                            <input
                              type="text"
                              class="form-control input-full"
                              id="memberPhone"
                              name="memberPhone"
                              placeholder=" -없이 입력해주세요 예)01012341234"
							  required
                            />
                          </div>
               		</div>
               		<div class="form-group">
                          <label
                            for="memberTell"
                            class="col-md-3 col-form-label"
                            >사내번호</label
                          >
                          <div class="col-md-9 p-0">
                            <input
                              type="text"
                              class="form-control input-full"
                              id="memberTell"
                              name="memberTell"
                              placeholder="사내번호 예)845-0000"
							  required
                            />
                          </div>
               		</div>
						<div class="form-group">
                          <label for="memberEmail" class="col-md-3 col-form-label">Email Address</label>
                            <div class="col-md-9 p-0">
                          <input
                            type="email"
                            class="form-control"
                            id="memberEmail"
                            name="memberEmail"
                            placeholder="Enter Email"
							required
                          />
                        </div>
                       </div>            
	            		<div class="form-group">
	                          <label
	                            for="memberEnrollDate"
	                            class="col-md-3 col-form-label"
	                            >입사일</label
	                          >
	                          <div class="col-md-9 p-0">
	                            <input
	                              type="date"
	                              class="form-control input-full"
	                              id="memberEnrollDate"
	                              name="memberEnrollDate"
								  required
	                            />
	                          </div>
               			</div>

               		<!-- <div class="form-group">
	            		<div class="form-group form-inline">
	                          <label
	                            for="memberLeaveDate"
	                            class="col-md-3 col-form-label"
	                            >퇴사일</label
	                          >
	                          <div class="col-md-9 p-0">
	                            <input
	                              type="date"
	                              class="form-control input-full"
	                              id="memberLeaveDate"
	                              name="memberLeaveDate"
								  required
	                            />
	                          </div>
               			</div>
               		</div> -->
               		
	            		<div class="form-group">
	                          <label
	                            for="memberBirthdate"
	                            class="col-md-3 col-form-label"
	                            >생년월일</label
	                          >
	                          <div class="col-md-9 p-0">
	                            <input
	                              type="date"
	                              class="form-control input-full"
	                              id="memberBirthdate"
	                              name="memberBirthdate"
								  required
	                            />
	                          </div>
               			</div>
                        
                         <div class="form-group">
                          <label>Gender</label><br />
                          <div class="d-flex">
                            <div class="form-check">
                              <label
                                class="form-check-label"
                                for="memberGender"
                              >
                                남
                              </label>
                              <input
                                class="form-check-input"
                                type="radio"
                                name="memberGender"
                                id="memberGender"
                                value="M"
								required
                              />
                            </div>
                            &ensp;&ensp;&ensp;
                            <div class="form-check">
                              <label
                                class="form-check-label"
                                for="memberGender2"
                              >
                                여
                              </label>
                              <input
                                class="form-check-input"
                                type="radio"
                                name="memberGender"
                                id="memberGender2"
                                value="F"
                                required
                              />
                            </div>
                          </div>
                        </div>
                        
                         <div class="form-group">
                          <label for="department"
                            >부서</label
                          >
                          <select
                            class="form-select"
                            id="department"
                            name="deptKey"
							required
                          >
	                          <c:if test="${not empty dept}">
	                          	<c:forEach var="d" items="${dept }">
	                            <option value="${d.deptKey }">${d.deptName }</option>
	                            </c:forEach>
	                           </c:if>
	                           <c:if test="${empty dept}">
	                            <option value="">select</option>
	                           </c:if>
                          </select>
                          
                          
                        </div>
                        <div class="form-group">
                          <label for="job"
                            >직급</label
                          >
                          <select
                            class="form-select"
                            id="job"
                            name="jobKey"
							required
                          >
                            <c:if test="${not empty job}">
	                          	<c:forEach var="j" items="${job }">
	                            <option value="${j.jobKey }">${j.jobName }</option>
	                            </c:forEach>
	                           </c:if>
	                           <c:if test="${empty job}">
	                            <option value="">select</option>
	                           </c:if>
                          </select>
                        </div>
                        <!-- <div class="form-group">
                          <label for="memberState"
                            >현황</label
                          >
                          <select
                            class="form-select"
                            id="memberState"
                            name="memberState"
                          >
                            <option value="재직">재직</option>
                            <option value="휴직">휴직</option>
                            <option value="퇴사">퇴사</option>
                          </select>
                        </div>  -->
 
                       <div class="form-group">
                          <label class="form-label">권한</label>
                          <div class="selectgroup selectgroup-pills">
                            <label class="selectgroup-item">
                              <input
                                type="checkbox"
                                name="accessKey"
                                value="1"
                                class="selectgroup-input"
								
                              />
                              <span class="selectgroup-button">관리자</span>
                            </label>
                            <label class="selectgroup-item">
                              <input
                                type="checkbox"
                                name="accessKey"
                                value="2"
                                class="selectgroup-input"
								
                              />
                              <span class="selectgroup-button">사원</span>
                            </label>
                            <label class="selectgroup-item">
                              <input
                                type="checkbox"
                                name="accessKey"
                                value="3"
                                class="selectgroup-input"
								
                              />
                              <span class="selectgroup-button">인사</span>
                            </label>
                          </div>
                        </div>
                          <button
			                  type="submit"
			                  class="btn btn-success"
			                  data-color="dark"
			                >등록</button>
                      </div>
            
           </div>
          </div>
		</form>
		</div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
        </div>
      </div>
    </div>
  </div> 