<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>example_4_1</title>
    <style>
        h1, h2 {
            text-align: center;
        }
    </style>
    <script>
        // 定义一个changeColor()函数，用于改变标签的颜色
        function changeColor() {
            let title1 = document.getElementById("title1");
            let title2 = document.getElementById("title2");
            let colors = ["red", "green", "blue", "yellow"]; // 用一个数组保存所有可能的颜色值
            let currentColor1 = title1.style.color; // 获取当前的颜色值
            let currentColor2 = title2.style.color;
            let index1 = colors.indexOf(currentColor1); // 获取当前颜色值在数组中的位置
            let index2 = colors.indexOf(currentColor2);
            let nextIndex1 = (index1 + 1) % colors.length; // 计算下一个颜色值在数组中的位置
            let nextIndex2 = (index2 + 1) % colors.length;
            title1.style.color = colors[nextIndex1]; // 设置标签的颜色为下一个颜色值
            title2.style.color = colors[nextIndex2];
        }
        // 使用定时器每隔0.5秒执行一次changeColor()函数
        window.setInterval(changeColor, 500);
    </script>
</head>
<body>
<h1 id="title1">hello,Java</h1>
<h2 id="title2">◕‿◕</h2>
</body>
</html>
