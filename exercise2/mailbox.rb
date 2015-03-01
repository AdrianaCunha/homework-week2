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

######################################

class Mailbox

  attr_reader :name
  attr_reader :emails


  attr_writer :name
  attr_writer :emails



  def initialize
    @name=""
    @emails=[]

  end

  def initialize(name,emails)
    @name=name
    @emails=emails
  end

  def name=(name)
    @name=name
  end

  def emails=(emails)
    @emails=emails
  end




  def name
    @name
  end

  def emails
    @emails
  end


end

#########################

emails = [
    Email.new("Homework this week", { :date => "2014-12-01", :from => "Ferdous" }),
    Email.new("Keep on coding! :)", { :date => "2014-12-01", :from => "Dajana" }),
    Email.new("Re: Homework this week", { :date => "2014-12-02", :from => "Ariane" })
]
mailbox = Mailbox.new("Ruby Study Group", emails)

mailbox.emails.each do |email|
  puts "Date:    #{email.date}"
  puts "From:    #{email.from}"
  puts "Subject: #{email.subject}"
  puts
end
