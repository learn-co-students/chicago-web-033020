class SaveableObject

  def save
    DB[:conn].execute("INSERT INTO #{self.table_name} (message, username) VALUES (?, ?)", self.message, self.username)
  end

  def table_name
    self.class.to_s.downcase + 's'
  end
end