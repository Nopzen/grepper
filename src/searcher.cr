class Searcher
  def initialize (files : Array(String))
    @files = files
  end

  def getResult (query : String)
    @files

    result = [] of NamedTuple(filename: String, number: Int32, line: String)

    @files.each do |file|
      filename = File.basename(file)
      lines = File.read_lines(file)
      match_lines = [] of Int32

      lines.each_with_index do |line, idx|
        if line.index(query)
          result.push({ "filename":  filename, "number": idx + 1, "line": line })
        end
      end
    end

    result
  end

  def getDataSetSize
    @files.size
  end
end