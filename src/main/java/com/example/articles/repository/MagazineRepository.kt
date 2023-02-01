package com.example.articles.repository

import com.example.articles.entity.Magazine
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.stereotype.Repository
import java.util.*

@Repository
interface MagazineRepository : JpaRepository<Magazine, Int> {
    fun findByName(name: String): Optional<Magazine>
}