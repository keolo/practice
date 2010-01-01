#!/usr/bin/env ruby

class DirectoryManipulator
  def pwd
    Dir.pwd
  end

  def mkdir(directory_name)
    Dir.mkdir(directory_name)
  end

  def cd(directory)
    Dir.chdir(directory)
  end

  def rmdir(directory)
    Dir.rmdir(directory)
  end
end
