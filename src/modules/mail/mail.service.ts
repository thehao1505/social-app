import { MailerService } from "@nestjs-modules/mailer";
import { Injectable } from "@nestjs/common";

@Injectable()
export class MailService {
  constructor(
    private mailer: MailerService,
  ) {}

  async sendForgotPasswordEmail(email: string, data: string) {
    await this.mailer.sendMail({
      to: email,
      subject: 'Forgot Password',
      html: data,
    });
  }
}