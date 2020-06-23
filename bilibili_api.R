library(shiny)
library(shinyjs)
library(cidian)
library(jiebaR)
library(wordcloud2)
library(xml2)
library(httr)
library(rvest)
library(jsonlite)
library(stringr)
library(wordcloud)

# 主页API
api <- "www.bilibili.com/index/ding.json"
api2 <- "http://api.bilibili.cn/search"

# up主信息
mid = "2019740" #逆风笑
api3 <- paste0("https://api.bilibili.com/x/web-interface/card?mid=",mid,"&;jsonp=jsonp&article=true")
api4 = "https://api.bilibili.com/x/space/upstat?mid=2019740&jsonp=jsonp"

api5 = "http://api.bilibili.com/archive_stat/stat?aid=497668785&type=jsonp"

bilibili.list <- jsonlite::parse_json(response)

str(bilibili.list)

bilibili.list$ttl
bilibili.list$result

html_nodes(content(response), xpath = )

unlist(lapply(bilibili.list$technology, function(x) {x$title}))
unlist(lapply(bilibili.list$technology, function(x) {x$owner$name}))
unlist(lapply(bilibili.list$technology, function(x) {x$cid}))


# 查看合集
url = "https://www.bilibili.com/video/BV1iK411L7G5";
html <- read_html(url);
html_extract <- html_nodes(html, css = "ul.list-box > li");
paste0("合集中有",length(html_extract),"个视频")

"https://api.bilibili.com/x/space/upstat?mid=2019740&jsonp=jsonp"
urlp1 <- "https://www.bilibili.com/video/BV1iK411L7G5?p=1"
html <- read_html(urlp1)
html_extract <- html_nodes(html, css = "li a")
html_attr(html_extract, "href")
