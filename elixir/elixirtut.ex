# Doing the Derek Banas tutorial.

# 0. Getting started:
# To start the REPL:
# In terminal/commandline/console, go to same directory as this file and type:
# iex
# To load this file in the REPL:
# c("elixirtut.ex")
# Then to run this function, type:
# modulename.functionname
# For example:
# M.hello
# or
# M.main

# I. MODULES
# The first thing to do in Elixir is create a module. A module holds all your
# functions.
# In this case, "M" is the module name.
# It's not mentioned, but I guess module declarations end with "do".

# A. Create the module M:
defmodule M do
  # B. Functions that you are going to define start off with "def".
  # create a function named "hello"
  def hello do
    # When hello is called, it prints/outputs "Hello World" to the screen.
    IO.puts "Hello World"

  # end of the function hello
  end


  # B. Create a function named "main". Again ends with "do".
  # Normally, Elixir programs do not have a "main" function. He's just doing it
  # to make the tutorial easier. Doesn't elaborate.
  def main do
    # Going to ask the user to enter a name, and then going to output it.
    # Elixir Receives input from the user via IO.gets. Parenthesis are optional.
    # name = IO.gets()
    # |> String.trim trims off the newline character.
    # variable naming is camelCased. Starts with underscore.
    # Take input from the user, strip off the newline character, and store it
    # in the variable "name".
    # I tried all of these. They seem to be equivalent:
    #name = IO.gets("What is your name ") |> String.trim
    #name = IO.gets("What is your name " |> String.trim)
    #name = IO.gets "What is your name " |> String.trim

    # outputting this to the screen
    # Parantheses is again optional.
    # The "#{}" is "string interpolation". It provides a way to take the
    # variable "name" and insert it into the string
    #IO.puts("Hello #{name}")
    #IO.puts "Hello #{name}"

    # A call to another function named data_stuff which is down below.
    data_stuff()
  end

  # II. Data Types in Elixir
  def data_stuff do
    # A. Integers. These are immutable. Once created the value cannot be changed.
    # Elixir Integers have no maximum size.
    my_int = 123
    # Determining the data type of my_int
    IO.puts "Is the data type of my_int an integer? #{is_integer(my_int)}"

    # B. Floats. Elixir floats have precision to 16 digits.
    my_float = 3.14159
    IO.puts "Is the data type of my_float a float? #{is_float(my_float)}"

    # C. Atoms. An elixir atom has the same name as its value.
    my_atom = :Pittsburgh
    IO.puts "Is the data type of the atom :Pittsburgh atom? #{is_atom(my_atom)}"

    # Atoms with spaces in their name must be enclosed in quotes
    my_atom2 = :"New York"
    IO.puts "Is the data type of the atom :\"New York\" atom? #{is_atom(my_atom2)}"

    # D. Ranges.
    one_to_10 = 1..10
    # However, trying to do the following will generate an error:
    #IO.puts "The range from one to ten is #{one_to_10}"
    # Error:
    #** (Protocol.UndefinedError) protocol String.Chars not implemented for 1..10
    # More on that later.

    # E. Strings. They use double quotes.
    my_str = "A test string"
    IO.puts "#{my_str}"
    # Getting the length (i.e. the number of characters) of a String.
    IO.puts "The length of my_str is: #{String.length(my_str)}"

    # string concatenation
    longer_str = my_str <> " " <> "is now longer"
    IO.puts "#{longer_str}"

    # Comparing two strings. === checks if both the value AND the data type match.
    IO.puts "Equal : #{"Egg" === "egg"}"
    IO.puts "Equal : #{my_str === longer_str}"
  # end of the function data_stuff
  end


# end of the module M
end
