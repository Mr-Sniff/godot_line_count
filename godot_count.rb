def count(dir, file_endings)
  lines = 0
  Dir.chdir(dir) do
    files = Dir.glob('*')
    i = 0
    while i < files.length
      if File.directory?(files[i])
        if files[i] != "addons"
          p ("entering folder: " + files[i])
          lines += count(files[i], file_endings)
        end
      elsif File.file?(files[i])
        lines += count_lines(files[i], file_endings)
      end
      i += 1
    end
  end
  return lines
end

def count_lines(dir, file_endings)
  lines = 0
  i = 0
  while i < file_endings.length
    if File.extname(dir) == file_endings[i]
      lines = File.readlines(dir).length
      p ("lines from: " + dir + "    " + lines.to_s())
    end
    i += 1
  end
  return lines
end

p count("C:/Users/teodor.boestad/Documents/GitHub/shuttered_past", [".gdscript", ".gdshader", ".gd"])
