package com.example.articles.controller

data class ArticleResponse(
    val id: Int,
    val title: String,
    val text: String,
    val author_firstName: String,
    val author_lastName: String
)