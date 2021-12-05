function quiz (){
  
  // 問題文、選択肢、回答番号
  let Question = [
    ["タンパク質は、英語で「プロテイン」です。プロテインは古代ギリシャ語の「プロテオス」が語源ですが、「プロテオス」の意味は次のうちどれでしょう？",
    "1.もっとも重要なもの",
    "2.生命",
    "3.神様",
    "1"],
    ["立つ、歩く、座るなど、筋肉は日常のあらゆる動作をするために欠かせませんが、タンパク質はこの人間に備わる筋肉全体の約何％を構成しているでしょうか？",
    "1. 40%",
    "2. 60%",
    "3. 80%",
    "2"]
    ];

  //クイズの一連の実装
  let Q = document.getElementById('_question');

  let A1 = document.getElementById('_ans1');
  let A2 = document.getElementById('_ans2');
  let A3 = document.getElementById('_ans3');

  let Correct = 0;

  let Q_count = 0;

  function Q_Set() {
    Q.textContent = Question[Q_count][0];
    A1.textContent = Question[Q_count][1];
    A2.textContent = Question[Q_count][2];
    A3.textContent = Question[Q_count][3];
  };

  Q_Set();

  function Answer_Check(ans) {
    if (ans == Question[Q_count][4]) {
      alert("正解");
      Correct++;
    } else {
      alert("不正解");
    };
    Q_count++;
    if (Q_count == Question.length) {
      Q.textContent = "お疲れさまでした！正解数は" + Correct + "でした。";
      A1.textContent = "";
      A2.textContent = "";
      A3.textContent = "";
    } else {

      Q_Set();
    };
  };

};

window.addEventListener('load', quiz);



// const Q = document.getElementById('_question');
//   const A1 = document.getElementById('_ans1');
//   const A2 = document.getElementById('_ans2');
//   const A3 = document.getElementById('_ans3');

//   const correct = 0;

//   const XHR = new XMLHttpRequest();
//   XHR.open("GET", "/quizzes", true);
//   XHR.responseType = "json";
//   XHR.send();
//   XHR.onload = () => {
//     if (XHR.status != 200) {
//       alert(`Error ${XHR.status}: ${XHR.statusText}`);
//       return null;
//     };
    
    
//   };