```julia
function my_function(x)
  if x > 0
    return x^2
  else
    return 0  # This line causes the issue if x is -0.0
  end
 end

println(my_function(0.0))
println(my_function(-0.0))
```