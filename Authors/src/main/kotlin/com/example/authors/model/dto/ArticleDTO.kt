package com.example.authors.model.dto

data class ArticleDTO(
    val id: Int,
    val date: String,
    val timestamp: String,
    val authorId: Int,
    val content: ArticleContentDTO
) {
    constructor() : this(0, "", "", 0, ArticleContentDTO())
}