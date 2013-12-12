require 'sqlite3'
require 'awesome_print'

class String
  def underscore
    word = self.dup
    word.gsub!(/::/, '/')
    word.gsub!(/([A-Z]+)([A-Z][a-z])/,'\1_\2')
    word.gsub!(/([a-z\d])([A-Z])/,'\1_\2')
    word.tr!("-", "_")
    word.downcase!
    word
  end
end

db = SQLite3::Database.new('/Users/maxmouchet/max.lrcat')

tables = {}

db.execute("SELECT name FROM sqlite_master WHERE type='table'") do |table_name|
  table_columns = []
  db.execute("PRAGMA table_info(#{ table_name[0] })") do |column_info|
    table_columns << {
      name: column_info[1],
      type: column_info[2],
      null: column_info[3],
      default:      column_info[4],
      primary_key?: column_info[5]
    }
  end
  tables[table_name[0]] = table_columns
end


def gen_file(table_name, table_columns)
  output = ""

  puts "Table name: #{ table_name }"
  print "Class name: "
  class_name = gets.strip

  return 0 if (class_name.strip == "")

  filename = class_name.underscore + ".rb"
  puts "Filename will be: #{ filename }"

  primary_key = 'id_local'
  # table_columns.each do |table_column|
  #   if table_column[:primary_key?]
  #     primary_key = table_column[:name]
  #   end
  # end

  output += "module Lrcat\n"
  output += "  module Catalog\n\n"
  output += "    # #{ class_name } links to the #{ table_name } table.\n"
  output += "    #\n"
  output += "    # The following columns are available in Lightroom 5:\n"
  table_columns.each do |table_column|
    output += "    # - #{ table_column[:name] }\n"
  end
  output += "    class #{ class_name } < ActiveRecord::Base\n"
  output += "      self.table_name  = '#{ table_name }'\n"
  output += "      self.primary_key = '#{ primary_key }'\n"
  output += "    end\n\n"
  output += "  end\n"
  output += "end\n"

  File.open("tmp/#{ filename }", "w") { |file| file.puts(output)  }
end

tables.each do |k,v|
  gen_file(k, v)
end
