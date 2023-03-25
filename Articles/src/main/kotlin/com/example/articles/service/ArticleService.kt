package com.example.articles.service

import com.example.articles.controller.dto.ArticleRequest
import com.example.articles.controller.dto.ArticleResponse
import com.example.articles.model.dto.ArticleDTO

interface ArticleService {
    fun findAllOrderByDateDesc(): List<ArticleResponse>
    fun findAllByAuthorId(authorId: Int): List<ArticleDTO>
    fun findAllByKeyword(theKeyword: String): List<ArticleResponse>
    fun findById(articleId: Int): ArticleDTO
    fun save(theArticle: ArticleRequest, jwt: String)
    fun deleteById(theId: Int, jwt: String)
    fun deleteByAuthorId(authorId: Int)
}

