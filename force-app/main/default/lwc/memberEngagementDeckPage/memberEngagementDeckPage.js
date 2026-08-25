import { LightningElement, api } from "lwc";
import memberEngagementDeck from "@salesforce/resourceUrl/memberEngagementDeck";

export default class MemberEngagementDeckPage extends LightningElement {
  @api iframeHeight = 900;

  get sourceUrl() {
    return `${memberEngagementDeck}/member-engagement-deck.html`;
  }

  get frameStyle() {
    const parsedHeight = Number(this.iframeHeight);
    const height =
      Number.isFinite(parsedHeight) && parsedHeight >= 400 ? parsedHeight : 900;
    return `height:${height}px`;
  }
}
