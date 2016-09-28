<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
  <meta name="description" content="基于 webpack 的构建工具，简单的配置、项目零依赖、快速开始开发">
  <title>cooking - 更易上手的前端构建工具</title>
</head>
<body>
  <app><%= require('./app.html') %></app>
  <% if (process.env.NODE_ENV === 'production') { %>
  <script src="//cdn.jsdelivr.net/vue/1.0.28/vue.min.js"></script>
  <script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
    (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
    m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

    ga('create', 'UA-78788645-1', 'auto');
    ga('send', 'pageview');
  </script><% } %>
</body>
</html>
