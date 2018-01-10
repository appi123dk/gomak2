class NoticeMailer < ApplicationMailer
  
  default from: 'support@gomakculture.com'

  def sendmail_inquire(username, email, contents)
    @name = username
    @email = email
    @contents = contents

    mail(
    	   to: 'ap_mr.africa@gomakculture.com',
         cc: ['head_director@gomakculture.com', 'ap_cctv@gomakculture.com'],
    	 subject: "프로젝트문의, #{@name}님의 건"
    	)
  end
end
