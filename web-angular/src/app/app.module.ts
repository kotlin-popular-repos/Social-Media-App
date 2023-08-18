import {NgModule} from '@angular/core';
import {BrowserModule} from '@angular/platform-browser';

import {AppRoutingModule} from './app-routing.module';
import {AppComponent} from './app.component';
import {ArticlePostComponent} from "./articles/article-post/article-post.component";
import {ArticleCardComponent} from "./articles/article-list/article-card/article-card.component";
import {ArticleListComponent} from "./articles/article-list/article-list.component";
import {ArticleService} from "./articles/service/article.service";
import {HttpClientModule} from "@angular/common/http";
import {FormsModule} from "@angular/forms";
import {ArticleDeleteComponent} from "./articles/article-list/article-card/article-delete/article-delete.component";
import {
  NotificationCardComponent
} from "./notifications/notification-list/notification-card/notification-card.component";
import {NotificationListComponent} from "./notifications/notification-list/notification-list.component";
import {NotificationService} from "./notifications/service/notification.service";
import {NotificationsComponent} from "./notifications/notifications.component";
import {ArticlesComponent} from "./articles/articles.component";
import {NavigationBoardComponent} from "./navigation-board/navigation-board.component";
import {SearchBoardComponent} from "./search-board/search-board.component";
import {LoginComponent} from "./auth/login/login.component";
import {RegisterComponent} from "./auth/register/register.component";
import {AuthorizationService} from "./auth/service/authorization.service";

@NgModule({
  declarations: [
    AppComponent,
    NavigationBoardComponent,
    SearchBoardComponent,
    ArticlesComponent,
    ArticleListComponent,
    ArticlePostComponent,
    ArticleCardComponent,
    ArticleDeleteComponent,
    NotificationsComponent,
    NotificationListComponent,
    NotificationCardComponent,
    LoginComponent,
    RegisterComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    FormsModule,
    AppRoutingModule
  ],
  providers: [ArticleService, NotificationService, AuthorizationService],
  bootstrap: [AppComponent]
})
export class AppModule {
}
