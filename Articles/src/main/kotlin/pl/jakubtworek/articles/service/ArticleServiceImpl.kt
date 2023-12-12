package pl.jakubtworek.articles.service

import jakarta.transaction.Transactional
import org.springframework.data.domain.Sort
import org.springframework.stereotype.Service
import pl.jakubtworek.articles.client.service.AuthorizationApiService
import pl.jakubtworek.articles.controller.dto.ArticleRequest
import pl.jakubtworek.articles.controller.dto.ArticleResponse
import pl.jakubtworek.articles.controller.dto.AuthorResponse
import pl.jakubtworek.articles.controller.dto.LikeInfoResponse
import pl.jakubtworek.articles.exception.ArticleNotFoundException
import pl.jakubtworek.articles.exception.UnauthorizedException
import pl.jakubtworek.articles.model.dto.ArticleDTO
import pl.jakubtworek.articles.model.entity.Article
import pl.jakubtworek.articles.repository.ArticleRepository
import pl.jakubtworek.articles.repository.LikeRepository
import java.sql.Timestamp
import java.time.LocalDate

@Service
class ArticleServiceImpl(
    private val articleRepository: ArticleRepository,
    private val likeRepository: LikeRepository,
    private val authorService: pl.jakubtworek.articles.client.service.AuthorApiService,
    private val authorizationService: AuthorizationApiService
) : ArticleService {

    override fun findAllOrderByCreatedTimeDesc(): List<ArticleResponse> =
        articleRepository.findAll(Sort.by(Sort.Direction.DESC, "Timestamp"))
            .map { createResponse(it) }

    override fun findById(articleId: Int): ArticleDTO {
        val article = articleRepository.findById(articleId).orElse(null)
            ?: throw ArticleNotFoundException("Article not found")
        return mapArticleToDTO(article)
    }

    override fun save(theArticle: ArticleRequest, jwt: String) {
        val article = createArticle(theArticle, jwt)
        articleRepository.save(article)
    }

    @Transactional
    override fun deleteById(theId: Int, jwt: String) {
        val userDetails = authorizationService.getUserDetails(jwt)
        val article = articleRepository.findById(theId).orElse(null)
            ?: throw ArticleNotFoundException("Article not found")
        if (article.authorId == userDetails.authorId) {
            likeRepository.deleteAllByArticleId(theId)
            articleRepository.deleteById(theId)
        } else {
            throw UnauthorizedException("You are not authorized to delete this article!")
        }
    }

    override fun findAllByAuthorId(authorId: Int): List<ArticleDTO> =
        articleRepository.findAllByAuthorIdOrderByDate(authorId)
            .map { mapArticleToDTO(it) }

    override fun update(theArticle: ArticleRequest, theId: Int, jwt: String) {
        val userDetails = authorizationService.getUserDetails(jwt)
        val article = articleRepository.findById(theId).orElse(null)
            ?: throw ArticleNotFoundException("Article not found")
        if (article.authorId == userDetails.authorId) {
            val updatedArticle = updateArticle(theArticle, theId, jwt)
            articleRepository.save(updatedArticle)
        } else {
            throw UnauthorizedException("You are not authorized to delete this article!")
        }
    }

    override fun deleteByAuthorId(authorId: Int) =
        articleRepository.deleteAllByAuthorId(authorId)

    private fun mapArticleToDTO(article: Article): ArticleDTO =
        ArticleDTO(
            id = article.id,
            date = article.date,
            timestamp = article.timestamp.toString(),
            text = article.text,
            authorId = article.authorId
        )

    private fun createArticle(request: ArticleRequest, jwt: String): Article {
        val userDetails = authorizationService.getUserDetails(jwt)

        return Article(
            id = 0,
            date = getCurrentDate(),
            timestamp = Timestamp(System.currentTimeMillis()),
            text = request.text,
            authorId = userDetails.authorId
        )
    }

    private fun updateArticle(request: ArticleRequest, idToUpdate: Int, jwt: String): Article {
        val userDetails = authorizationService.getUserDetails(jwt)

        return Article(
            id = idToUpdate,
            date = getCurrentDate(),
            timestamp = Timestamp(System.currentTimeMillis()),
            text = request.text,
            authorId = userDetails.authorId
        )
    }

    private fun createResponse(theArticle: Article): ArticleResponse {
        val author = authorService.getAuthorById(theArticle.authorId)
        val likes = likeRepository.findByArticleId(theArticle.id)
        val likerFullNames = mutableListOf<String>()

        for (like in likes) {
            val liker = authorService.getAuthorById(like.authorId)
            val fullName = "${liker.firstName} ${liker.lastName}"
            likerFullNames.add(fullName)
        }

        return ArticleResponse(
            id = theArticle.id,
            text = theArticle.text,
            timestamp = theArticle.timestamp,
            author = AuthorResponse(
                username = author.username,
                firstName = author.firstName,
                lastName = author.lastName
            ),
            likes = LikeInfoResponse(
                users = likerFullNames
            )
        )
    }

    private fun getCurrentDate(): String {
        return LocalDate.now().toString()
    }
}