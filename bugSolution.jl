```julia
function my_function_fixed(x)
  if isequal(x, 0.0) || isequal(x, -0.0)
    return 0
  elseif x > 0
    return x^2
  else
    return 0
  end
end

println(my_function_fixed(0.0))
println(my_function_fixed(-0.0))
```