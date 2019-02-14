# Doing the Derek Banas tutorial.

# 0. Getting started:
# To start the REPL:
# Go to same directory as this file and type:
# iex
# To load this file in the REPL:
# c("elixirtut.ex")
# Then to run this function, type:
# M.hello

# I. MODULES
# The first thing to do in Elixir is create a module. A module holds all your
# functions.
# "M" is the module name.
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
    # Elixir Receives input from the user via IO.gets. Paranthesis are optional.
    # name = IO.gets()
    # |> String.trim trims off the newline character.
    # variable naming is camelCased. Starts with underscore.
    # Take input from the user, strip off the newline character, and store it
    # in the variable "name".
    # I tried all of these. They seem to be equivalent:
    # name = IO.gets("What is your name ") |> String.trim
    # name = IO.gets("What is your name " |> String.trim)
    name = IO.gets "What is your name " |> String.trim

    # outputting this to the screen
    # Parantheses is again optional.
    # The "#{}" is "string interpolation". It provides a way to take the
    # variable "name" and insert it into the string
    # IO.puts("Hello #{name}")
    IO.puts "Hello #{name}"

    # Another function named data_stuff which will be called down below.
    data_stuff()
  end
# End of the module M.
end
