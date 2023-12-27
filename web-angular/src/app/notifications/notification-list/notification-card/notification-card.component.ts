import {Component, Input, OnInit, ViewEncapsulation} from "@angular/core";
import {Notification} from "../../dto/notification.type";
import {DataStorageService} from "../../../shared/data-storage.service";
import {Author} from "../../../articles/dto/author.type";

@Component({
  selector: 'notification-card',
  templateUrl: './notification-card.component.html',
  styleUrls: ['./notification-card.component.scss'],
  encapsulation: ViewEncapsulation.None
})
export class NotificationCardComponent implements OnInit {
  @Input() notification!: Notification;
  authors: Author[] = [];
  selectedAuthorId: string = '';
  authorsLoaded: boolean = false;

  constructor(private dataStorageService: DataStorageService) {
  }

  ngOnInit() {
    this.loadAuthors();
  }

  loadAuthors() {
    if (!this.authorsLoaded) {
      this.dataStorageService.fetchAuthors().subscribe(authors => {
        this.authors = authors;
        this.authorsLoaded = true;
      });
    }
  }

  updateAuthor() {
    const selectedAuthor = this.authors.find(author => author.id == this.selectedAuthorId);
    if (selectedAuthor) {
      const nameBox = document.querySelector('.notification-card__name') as HTMLTextAreaElement
      nameBox!.innerText = selectedAuthor.firstName + ' ' + selectedAuthor.lastName;
    }

    this.dataStorageService.updateNotification(this.notification.id, this.selectedAuthorId);
  }
}
