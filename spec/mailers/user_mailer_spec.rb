require "rails_helper"

RSpec.describe UserMailer, type: :mailer do
  describe "response_notification" do
    question_user = FactoryGirl.create(:user)
    let(:mail) { UserMailer.response_notification(question_user)}

    it "renders the headers" do
      expect(mail.subject).to eq("Your question has been answered")
      expect(mail.to).to eq([question_user.email])
      expect(mail.from).to eq(["kathrynelizabethcarr@gmail.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
