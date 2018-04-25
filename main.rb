def main
  contents = Array.new()
  File.open('assets/google_sheet.csv', 'r') do |source|
    contents = source.readlines
  end


end

main()
