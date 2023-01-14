class Folder
  attr_accessor :files, :folders
  def initialize(name)
    @path = name
    @files = []
    @folders = {}
  end

  def add_files(*files)
    files.each do |file|
      @files << {path: "#{@path}/#{file[0]}", contents: file[1]}
    end
  end

  def add_folder(name)
    # consider making splat argument and being able to add multiple folders
    @folders[name.to_s] = Folder.new("#{@path}/#{name}")
  end

  def create
    # create own directory
    Dir.mkdir(@path)

    # create all files within directory
    @files.each { |file| rw_file(file[:path], file[:contents]) } unless @files.empty?

    # for each folder in @folders, run create method
    @folders.values.each { |folder| folder.create } unless @folders.empty?
  end

  def to_s
    @path
  end

  private

  def rw_file(root, contents = "")
    File.open(root, "w+") do |f|
      f.write contents
    end
  end
end
