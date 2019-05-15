require "option_parser"
require "colorize"
require "time"
require "./searcher"

module Grepper
  VERSION = "1.0.0"

  directory = Dir.current
  extention = ".txt"
  query = ""

  OptionParser.parse! do |parser|
    parser.banner = "
    #{"Defaults:".colorize.mode(:bold)}
    #{"path:".colorize.mode(:bold)} if --path is not defined, path wil be set to current working directory.
    #{"extention:".colorize.mode(:bold)} if --extention is not defined the default would be set to .txt.

    #{"Usage:".colorize.mode(:bold)} grepper [query] -- [arguments]
    "

    parser.on("-p=PATH", "--path=PATH", "Define path to search for files in") { |input| directory = input }
    parser.on("-e=EXT", "--extention=EXT", "Define file extention should be read (Required)") { |input| extention = input }
    parser.on("-q=QUERY", "--query", "Define the string to search for") { |input| query = input }
    parser.on("-h", "--help", "Show this help") {
      puts parser
      exit
    }
  end

  queryStartTime = Time.now

  if query.size <= 0
    begin
      raise "Error: You forgot to add a query run the --help to see options"
    rescue ex
      puts ex.message.colorize(:red)
      exit
    end
  end

  search = Searcher.new Dir.glob("#{directory}/**/*#{extention}")
  result = search.getResult(query)

  executionTime = Time.now - queryStartTime

  result.each do |file|
    puts "#{file[:filename].colorize(:green)}:#{file[:number].colorize(:green)} #{file[:line].strip}"
  end

  puts "
  Search through #{search.getDataSetSize} files.
  Lines containing query '#{query}': #{result.size}

  Query execution time: #{executionTime.milliseconds}ms
  "
end
