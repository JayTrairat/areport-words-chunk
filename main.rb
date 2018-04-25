require 'enumerator'

def main
  contents = Array.new
  File.open('assets/google_sheet.csv', 'r') do |source|
    contents = source.readlines
  end

  (0..27).each do |item|
    content = contents[item].strip.split('|')
    content = content.each_slice(3).to_a

    File.open("assets/google_sheet_export_position_#{item + 1}.csv", 'w') do |outp|
      content.each do |element|
          outp.write(element.join('|'))
          outp.write("\n")
      end
    end
  end
end

main()
