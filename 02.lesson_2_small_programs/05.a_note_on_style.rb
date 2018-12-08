
# A Note on Style
# In this first lesson, we're going to deviate from standard Ruby convention a little in order to focus on teaching concepts. We'll outline the deviations below.

# Parentheses

# In Ruby, when you invoke a method, the parentheses are optional. This often makes it difficult to differentiate between method invocations and local variables. For example, if you type puts -- is that a method invocation, or a local variable? If you know that there's a method called puts, then you know it's a method call. But if you didn't, then it's uncertain. To be more clear while you're still getting adjusted to reading Ruby, in this lesson we're going to always use parentheses when invoking a method. Example: we will use gets().chomp() instead of gets.chomp.
# puts and gets

# When you want to display something, you can use the puts method. When you want to ask the user for some input, you can use the gets method. In this lesson, we are going to call those methods with their module, like this: Kernel.puts() or Kernel.gets(). Doing this shows that these are module methods in the Kernel module. It's not critical that you remember this, but it's important to understand that all methods come from somewhere.
# These are the stylistic conventions we'll follow in the provided walk-through code in this lesson, and you do not have to follow with this convention in your own assignment. Professional Rubyists don't do this, so it's for instructional purposes only. We'll stop these conventions and follow more standard practices after the first lesson