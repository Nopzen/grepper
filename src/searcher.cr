class Searcher
  def initialize (files : Array(String))
    @files = files
  end

  def getResult (query : String)
    result = [] of NamedTuple(filename: String, number: Int32, line: String)

    @files.each do |file|
      lines = File.read_lines(file)

      lines.each_with_index do |line, idx|
        if line.index(query)
          result.push({ "filename":  File.basename(file), "number": idx + 1, "line": line })
        end
      end
    end

    result
  end
  
  def getDataSetSize
    @files.size
  end
end