function quiz (){
  
  // 問題文、選択肢、回答番号
  let Question = [
    ["タンパク質は、英語で「プロテイン」です。プロテインは古代ギリシャ語の「プロテオス」が語源ですが、「プロテオス」の意味は次のうちどれでしょう？",
    "1.もっとも重要なもの",
    "2.生命",
    "3.神様",
    "1",
    "【 Answer.1 】   タンパク質は、英語で「プロテイン」です。プロテインは古代ギリシャ語の「プロテオス」が語源でその意味は『もっとも重要なもの』。タンパク質はまさに、体にとってもっとも重要な栄養素の一つなのです。"],
    ["立つ、歩く、座るなど、筋肉は日常のあらゆる動作をするために欠かせませんが、タンパク質は人間に備わる筋肉全体の約何％を構成しているでしょうか？",
    "1. 40%",
    "2. 60%",
    "3. 80%",
    "3",
    "【 Answer.2 】\n   タンパク質は人間に備わる筋肉全体の『約80％』を構成しています。筋肉量を維持、あるいは増やしていくにはタンパク質をしっかり摂ることが大切になります。"],
    ["人によって違いはありますが、1日に必要なタンパク質の量は体重1kgあたり約何g必要と言われているでしょう？",
    "1. 0.3g",
    "2. 0.6g",
    "3. 0.9g",
    "3",
    "【 Answer.3 】\n   人によって違いはありますが、1日に必要なタンパク質の量は体重1kgあたり『約0.9g』必要と言われています。（身体活動が普通の場合）つまり、体重が60kgの人なら、1日に少なくとも54gのタンパク質を摂ることが推奨されます。"]
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

const answer_check = document.getElementById("answer");
answer_check.addEventListener("click", function() {
  ans = answer_check.value

  if(ans == Question[Q_count][4]) {
    alert("【正解】");
    Correct++;
  } else {
    alert("【不正解】");
  };
  Q_count++;
  
  if (Q_count == Question.length) {
    Q.textContent = "問題は以上です。正解数は" + Correct + "でした。";
    A1.textContent = "";
    A2.textContent = "";
    A3.textContent = "";

      const explain1 = document.getElementById('explain_1');
      explain1.textContent = Question[0][5];
      const explain2 = document.getElementById('explain_2');
      explain2.textContent = Question[1][5];
      const explain3 = document.getElementById('explain_3');
      explain3.textContent = Question[2][5];

  } else {
  Q_Set();
  };
});

};

window.addEventListener('load', quiz);




// function Answer_Check(ans) {
//   if(ans == Question[Qcnt][4]) {
//   alert("正解");
//   Correct++;
//   } else {
//   alert("不正解");
//   }
//   Qcnt++;
//   if (Qcnt == Question.length) {
//   Q.textContent = "問題は以上です。正解数は" + Correct + "でした。";
//   A1.textContent = "";
//   A2.textContent = "";
//   A3.textContent = "";
//   } else {
//   Q_Set();
//   }
// }