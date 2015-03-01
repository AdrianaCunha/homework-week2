class Email
  attr_reader :subject
  attr_reader :email_headers


  attr_writer :subject
  attr_writer :email_headers





  def initialize
    @subject=""
    @email_headers={}

  end

  def initialize(subject,email_headers)
    @subject=subject
    @email_headers=email_headers
  end

  def subject=(subject)
    @subject=subject
  end

  def email_headers
    @email_headers=email_headers

  end

 def date
   email_headers[:date]
 end

  def from
    email_headers[:from]
  end

  def subject
    @subject
  end

  def email_headers
    @email_headers
  end



end


email = Email.new("Keep on coding! :)", { :date => "2014-12-01", :from => "Ferdous" })



puts "Date:    #{email.date}"
puts "From:    #{email.from}"
puts "Subject: #{email.subject}"
