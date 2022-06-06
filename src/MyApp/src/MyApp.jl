module MyApp

greet() = print("Hello World!")

function julia_main()::Cint
  greet()
  return 0
end

end # module
