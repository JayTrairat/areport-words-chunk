require 'enumerator'

def main()
  contents = Array.new

  File.open("assets/important_words.txt", "r") do |source|
    contents = source.readlines.map { |content| content.strip }
  end

  # contents = (contents.each_slice((contents.size/4.0).round).to_a)
  contents = (contents.each_slice(5).to_a)

  (0..contents.size - 1).each do |index|
    File.open("assets/important_words_pos_#{index + 1}.txt", "w") do |outp|
      outp.write(contents[index].join("\n"))
    end
  end
end

main()
