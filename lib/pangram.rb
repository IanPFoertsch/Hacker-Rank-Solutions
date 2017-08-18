class Pangram
  def self.run
    s = STDIN.gets.strip

    count = s.downcase.gsub(/[^a-zA-Z]/, "").chars.uniq.count

    result = count == 26 ? "pangram" : "not pangram"

    puts result
  end
end

Pangram.run
