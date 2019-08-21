class SecretDiary

  def lock
    p "Enter Password:"
    password = gets.chomp
    if password == '9898'
      $unlocked = false
      "Locked!"
    else
      "Error, incorrect password"
    end
  end

  def unlock
    p "Enter Password:"
    password = gets.chomp
    if password == '9898'
      $unlocked = true
      "Unlocked!"
    else
      "Error, incorrect password"
    end
  end

  def add_entries
    if $unlocked == true
      p "Please write your entry"
      input = gets.chomp
      file = File.open('diary.csv', "w")
      csv_line = input + "/n"
      file.puts csv_line
      "Entry saved!"
    else
      "Diary locked!"
    end
  end

  def get_entries
    if $unlocked == true
      p "Getting diary entries"
      file = File.open('diary.csv', "r")

      file.readlines.each do |row|
        row.chomp.split(',')
      end
    else
      "Diary locked!"
    end
  end

end
