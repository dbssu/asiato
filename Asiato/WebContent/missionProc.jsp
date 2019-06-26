<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
<link href="css/mission.css" rel="stylesheet" type="text/css">

     <style type="text/css"> 
 
     form { 
         margin: 0 auto; 
         width: 100px; 
     } 
     .pwd{ 
         width: 100px; 
         height: 27px; 
         background-color: #efefef; 
         border-radius: 6px; 
         border: 1px solid #dedede; 
         padding: 10px; 
         margin-top: 40px; 
         font-size: 0.9em; 
         color: #3a3a3a; 
     } 
         input:focus, textarea:focus{ 
             border: 1px solid #97d6eb; 
         } 
     
     #submit{ 
         width: 50px; 
         height: 48px; 
         text-align: center; 
         border: none; 
         margin-top: 20px; 
         cursor: pointer; 
     } 
     #submit:hover{ 
         color: #fff; 
         background-color: #216282; 
         opacity: 0.9; 
     } 
     #cancel { 
         width: 50px; height: 48px; 
         text-align: center; 
         border: none; 
         margin-top: 20px; 
         cursor: pointer; 
     } 
     #cancel:hover{ 
         color: #fff; 
         background-color: #216282; 
         opacity: 0.9; 
     }

    .modal { 
         position: fixed; 
         left: 0; 
         top: 0; 
         width: 100%; 
         height: 100%; 
         background-color: rgba(0, 0, 0, 0.5); 
         opacity: 0; 
         visibility: hidden; 
         transform: scale(1.1); 
         transition: visibility 0s linear 0.25s, opacity 0.25s 0s, transform 0.25s; 
     } 
     .modal-content { 
         position: absolute; 
         top: 50%; 
         left: 50%; 
         transform: translate(-50%, -50%); 
         background-color: white; 
         padding: 1rem 1.5rem; 
         width: 300px; 
         height: 350px; 
         border-radius: 0.5rem; 
     } 
     .close-button { 
         float: right; 
         width: 50px; 
         line-height: 1.5rem; 
         text-align: center; 
         cursor: pointer; 
         border-radius: 0.25rem; 
         background-color: lightgray; 
     } 
     .close-button:hover { 
         background-color: darkgray; 
     } 
     .show-modal { 
         opacity: 1; 
         visibility: visible; 
         transform: scale(1.0); 
         transition: visibility 0s linear 0s, opacity 0.25s 0s, transform 0.25s; 
     } 
    button{
    	margin-left: 10px;
    	border: none;
    	background-color: #ff9b05;
    	color: #ffffff;
    	padding: 15px;
    	border-radius: 20px;
    }
</style>
</head>

<body>

	<div>
		<img src="assets/img_jp.png" class="img_jp">
	</div>

	<div class="head">
		<p class="title">
			中日友好庭園橋
			<!--중일 우호 정원 다리-->
			<a href="#" class="footnote"> <sup>*</sup> <span class="note">중일
					우호 정원 다리</span>
			</a>
		</p>

	</div>
	<p class="sub_title">
		<!--中日友好庭園橋で写真撮影  -->
		<!--중일 우호 정원 다리에서 사진 촬영하기-->
		<a href="#" class="footnote"> <!--  <sup>*</sup> --> <span
			class="note">중일 우호 정원 다리에서 사진 촬영하기</span>
		</a>
	</p>
	<div class="body">
		<p class="content">
			1899年岐阜市と杭州(中国)の姉妹都市提携10周年を記念して作られた庭園で、
			杭州市の名所である徐虎(ソ・ホ)を模倣して作られた池が四季の風景を照らします。
			庭で個人または人々と一緒にこのポーズで写真を撮りながら見物してください。
			写真を撮った後,庭の関係者の方々に写真をお見せすれば,ミッションを完了できます!
			<!--1899년 기후시와 항저우(중국)의 자매 도시 제휴 10주년을 기념해 
		            만들어진 정원으로 항주시의 명소인 서호를 모방하여 만들어진 
		            연못이 사계절의 풍경을 비춥니다. 정원에서 개인 또는 사람들과 함께 
		            이 포즈로 사진을 찍으면서 구경하십시오. 사진을 찍은 후 정원의 
		            관계자 분들에게 사진을 보여 드리면 미션을 완료할 수 있습니다!-->
			<a href="#" class="footnote"> <sup>*</sup> <span class="note">
					1899년 기후시와 항저우(중국)의 자매 도시 제휴 10주년을 기념해 만들어진 정원으로 항주시의 명소인 서호를 모방하여
					만들어진 연못이 사계절의 풍경을 비춥니다. 정원에서 개인 또는 사람들과 함께 이 포즈로 사진을 찍으면서 구경하십시오.
					사진을 찍은 후 정원의 관계자 분들에게 사진을 보여 드리면 미션을 완료할 수 있습니다! </span>
			</a>
		</p>

		<img src="assets/pic_jp.png" class="pic_jp">
	</div>
	<div class="bottom">
		<!-- 버튼 --> 
     <button class="trigger">承認を受ける</button> 
     
     <!-- 팝업 될 레이어 --> 
     <div class="modal"> 
         <div class="modal-content"> 
             <span class="close-button">&times;</span> 
             <h7 class="modal-title">주변 관계자에게 승인을 받으세요</h7> 
             <form action="missionProc1.jsp" method="POST"> 
               <input type="password" required="required" class="pwd" name="pwd">
               <input type="button" id="cancel" value="취소"> 
               <input type="submit" id="submit" value="보내기"> 
             </form> 
         </div> 
     </div>
		
	</div>
	
	 <script type="text/javascript"> 
         var modal = document.querySelector(".modal"); 
         var trigger = document.querySelector(".trigger"); 
         var closeButton = document.querySelector(".close-button"); 
         var cancelButton = document.querySelector("#cancel");

        //console.log(modal);

        function toggleModal() { 
             modal.classList.toggle("show-modal"); 
         }

        function windowOnClick(event) { 
             if (event.target === modal) { 
                 toggleModal(); 
             } 
         }

        trigger.addEventListener("click", toggleModal); 
         closeButton.addEventListener("click", toggleModal); 
         cancel.addEventListener("click", toggleModal); 
         window.addEventListener("click", windowOnClick); 
     </script>

</body>

</html>
