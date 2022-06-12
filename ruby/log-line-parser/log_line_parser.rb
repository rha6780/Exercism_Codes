class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    @message = @line.split(': ')
    msg = @message[1].gsub(/[\t\r\n]/, '').rstrip.lstrip
    
  end

  def log_level
    @line.gsub(']','').gsub('[','').split(': ')[0].downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
