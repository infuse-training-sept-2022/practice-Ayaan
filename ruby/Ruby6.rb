require "base64"

# Creating a file
fileObj = File.new("Task6.txt", "w+");

# Writing to the file
fileObj.syswrite("Originally, John Doe was a sham name used to indicate any plaintiff in an
    action of ejectment (a legal action to regain property) in civil court [ “
    the string that will be base encoded ”]. Richard Roe was the counterpart, to
    indicate the defendant. These fake names were used in delicate legal matters,
    a practice that was abolished in English law in 1852.");

# Closing a file
fileObj.close();

class EncodingString
    def Read_And_Write
        string = File.read("Task6.txt")
        string = string.gsub("the string that will be base encoded",
             Base64.encode64("the string that will be base encoded"))
        File.write("Ayan.txt", string)
    end
end

becoding = EncodingString.new
becoding.Read_And_Write