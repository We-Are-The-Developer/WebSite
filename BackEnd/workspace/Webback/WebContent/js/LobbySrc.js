var sessname = '<%=session.getAttribute("name")%>';
function loginopen()// 로그인 창열기 
{
	window.open("Login.html", "blank1");
} 
function registeropen()// 회원가입 창열기  
{
	window.open("../html/Register.html", "blank1");
}

// //////////////////////////////////////////////////////////// 학교소개

function schintro() // 학교 소개창 열기 새화면이뜬다
{
	window.open("Schintro.html", "blank2");// blank1은 메인화면 그게 아니면 새화면이 뜬다
}

function principal()// 학교장소개
{
	window.open("Principal.html", "blank2");
}// blank2 화면에서는 같은 화면이 뜬다

function shcsymbol() // 학교상징
{
	window.open("Shcsymbol.html", "blank2");
}

function schfeat()// 학교특징
{
	window.open("Schfeat.html", "blank2");
}// blank2 화면에서는 같은 화면이 뜬다

function newcolor()// 뉴칼라스쿨
{
	window.open("Newcolor.html", "blank2");
}// blank2 화면에서는 같은 화면이 뜬다

// ///////////////////////////////////////////////////////////////////////////////
// 학교생활

function admission() { // 입학안내
	window.open("Addmission.html", "blank2"); // blank3 즉 새로운 창에서 나온다
}

function transfer() { // 전학안내
	window.open("Transfer.html", "blank2"); 
}

function curprocess() { // 교육과정
	window.open("Curprocess.html", "blank2"); 
}

function curactivity() { // 교과활동
	window.open("Curactivity.html", "blank2"); 
}

function external() { // 외부활동
	window.open("External.html", "blank2"); 
}

function qualifi() { // 자격검정
	window.open("Qualifi.html", "blank2");
}

function academic() { // 학사일정
	window.open("Academic.html", "blank2"); 
}

//////////////////////////////////////////////////  학교뉴스

function pressrel(){// 언론 보도
	window.open("Pressrel.html", "blank2"); //여기는 링크로 넣거나 새롭게 생각해보자
}

function schnews(){// 교내뉴스
	window.open("Schnews.html", "blank2"); 
}
////////////////////////////////////////////////// q&a 질문 jsp는 그냥 html파일로 만들어주면돼
//그 파일 입히고 내가 코딩할거야

function admqna(){ //입,전학 qna 
	window.open("Admqna.jsp","blank2");
}

function otherqna(){
	window.open("Otherqna.jsp","blank2");
}
//function postwrite() {  지금 이거는 글 쓸 때 로그인창 띄우는거 밑에꺼는 글 수정 이거는 안보면 돼
//	if (sessname == "" || sessname == "null") {
//		alert("로그인후 등록이 가능합니다.");
//		return;
//	}
//	window.open("Login.jsp", "blank3",
//			'width=500,height=600,menubar=no,status=no,toolbar=no');
//}

//function modi(sendseq) {
//	window.open("modify.jsp?seq=" + sendseq, "delete", "width=0;,height=0;");
//}
//function reg_id(sendid) {
//	window.open("register.jsp?id=" + sendid, "delete", "width=0;,height=0;");
//}
//function del(sendseq) {
//	window.open("postpagedelete.jsp?seq=" + sendseq, "delete",
//			"width=0;,height=0;");
//}
//function cont(sendseq) {
//
//	if (sessname == "" || sessname == "null") {
//		alert("로그인후 등록이 가능합니다.");
//		return;
//	}
//	window.open("content.jsp?seq=" + sendseq, "content",
//			"width=500;,height=700;");
//}
