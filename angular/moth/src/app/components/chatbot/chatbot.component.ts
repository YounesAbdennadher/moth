import { Component, OnInit } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { Chatbot } from './chatbot';
import { ChatBotService } from '../../services/chat-bot.service'

@Component({
  selector: 'app-chatbot',
  templateUrl: './chatbot.component.html',
  styleUrls: ['./chatbot.component.css']
})

export class ChatbotComponent implements OnInit {
  chatbot: Chatbot;
  initConv = false;

  constructor(private chatBotService: ChatBotService) {
    this.chatbot = new Chatbot(chatBotService);
    this.chatbot.name = 'Hrmmf';
    this.chatbot.historique = [];
    this.chatbot.historique.push("Bonjour, je suis " + this.chatbot.name + ", votre assistant personnel. Libre à vous de me poser des questions. Libre à moi d'y répondre...")
  }

  ngOnInit() {
  }

  sendMessage(question: string) {
    this.chatbot.historique.push(question);
    this.chatbot.answer();
    this.chatbot.currentQuestion = "";
    console.log(this.chatbot.historique);
  }





}
