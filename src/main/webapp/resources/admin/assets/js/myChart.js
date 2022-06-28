var context = document.getElementById("myChart").getContext("2d");
var myChart = new Chart(context, {
  type: "bar", // 차트의 형태
  data: {
    // 차트에 들어갈 데이터
    labels: [
      //x 축
      "1월",
      "2월",
      "3월",
      "4월",
      "5월",
      "6월",
      "7월",
      "8월",
      "9월",
      "10월",
      "11월",
      "12월",
    ],
    datasets: [
      {
        //데이터
        label: "2022년 매출", //차트 제목
        fill: true, // line 형태일 때, 선 안쪽을 채우는지 안채우는지
        data: [
          //x축 label에 대응되는 데이터 값
          21000, //1월
          19000, //2월
          25000, //3월
          20000, //4월
          23000, //5월
          null, //6월
          null,
          null,
          null,
          null,
          null,
          null,
        ],
        backgroundColor: [
          //색상
          "rgba(255, 99, 132, 0.2)",
          "rgba(54, 162, 235, 0.2)",
          "rgba(255, 206, 86, 0.2)",
          "rgba(75, 192, 192, 0.2)",
          "rgba(153, 102, 255, 0.2)",
          "rgba(255, 159, 64, 0.2)",
        ],
        borderColor: [
          //경계선 색상
          "rgba(255, 99, 132, 1)",
          "rgba(54, 162, 235, 1)",
          "rgba(255, 206, 86, 1)",
          "rgba(75, 192, 192, 1)",
          "rgba(153, 102, 255, 1)",
          "rgba(255, 159, 64, 1)",
        ],
        borderWidth: 1, //경계선 굵기
      },
      //   {
      //     label: "test2 ",
      //     fill: false,
      //     data: [8, 34, 12, 24],
      //     backgroundColor: "rgb(157, 109, 12)",
      //     borderColor: "rgb(157, 109, 12)",
      //   },
    ],
  },
  options: {
    scales: {
      yAxes: [
        {
          ticks: {
            beginAtZero: true,
          },
        },
      ],
    },
  },
});
