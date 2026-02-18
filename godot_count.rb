def count(dir)
  files = dir.glob('*')
  i = 0
  while i < files.length

  end
end

def count_lines(dir)
  lines = 0
  if File.file?(dir)
    lines = dir.read_lines(dir)
  end
  return lines
end

p count_files("C:/Users/teodor.boestad/Documents/GitHub/shuttered_past")
