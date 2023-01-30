package com.example.articles.entity

import com.example.articles.controller.article.ArticleResponse
import org.hibernate.Hibernate
import javax.persistence.*

@Entity
@Table(name = "ArticlePost")
data class ArticlePost(
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "Id")
    val id: Int,

    @Column(name = "Date")
    val date: String,

    @Column(name = "Timestamp")
    val timestamp: String,

    @ManyToOne(cascade = [CascadeType.PERSIST, CascadeType.MERGE])
    @JoinColumn(name = "Author_Id")
    var author: AuthorPost,

    @ManyToOne(cascade = [CascadeType.PERSIST, CascadeType.MERGE])
    @JoinColumn(name = "Magazine_Id")
    var magazine: MagazinePost,

    @OneToOne(cascade = [CascadeType.ALL])
    @JoinColumn(name = "Content_Id")
    val content: ArticleContent,


    ) {
    constructor() : this(
        0,
        "sad",
        "200",
        AuthorPost(),
        MagazinePost(),
        ArticleContent()
    )

    fun toResponse(): ArticleResponse {
        return ArticleResponse(
            this.id,
            this.content.title,
            this.content.text,
            this.magazine.name,
            this.author.firstName,
            this.author.lastName
        )
    }

    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (other == null || Hibernate.getClass(this) != Hibernate.getClass(other)) return false
        other as ArticlePost

        return id == other.id
    }

    override fun hashCode(): Int = hashCode()

    @Override
    override fun toString(): String {
        return this::class.simpleName + "(id = $id , date = $date , timestamp = $timestamp , author = $author , magazine = $magazine , content = $content )"
    }
}