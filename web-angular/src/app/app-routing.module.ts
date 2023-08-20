import {NgModule} from '@angular/core';
import {RouterModule, Routes} from '@angular/router';
import {ArticlesResolverService} from "./articles/service/articles-resolver.service";
import {NotificationsResolverService} from "./notifications/service/notifications-resolver.service";

const routes: Routes = [
  {path: '', redirectTo: '/home', pathMatch: 'full'},
  {
    path: "home",
    loadChildren: () =>
      import("./articles/articles.module").then(
        m => m.ArticlesModule
      ),
    resolve: [ArticlesResolverService]
  },
  {
    path: "notifications",
    loadChildren: () =>
      import("./notifications/notifications.module").then(
        m => m.NotificationsModule
      ),
    resolve: [NotificationsResolverService]
  },
  {
    path: "auth",
    loadChildren: () =>
      import("./auth/auth.module").then(
        m => m.AuthModule
      )
  }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule {
}
