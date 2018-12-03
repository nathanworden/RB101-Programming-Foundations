# Differences Between Ruby Versions
# One of the things you will need to get used to during a career in web development is the ever changing nature of the tools that you work with. Ruby, like most programming languages, is constantly evolving. With each release new features are added, and sometimes old features are deprecated.

# One example of such a change is that prior to Ruby 1.9 there was a String#each method. If you look at the Ruby documentation for earlier versions of Ruby you can still see an explanation of this method. In Ruby 1.9.0 String#each was deprecated and so we can no longer use this method with later versions.

# A slightly more recent example is that in Ruby 2.1.0 an Array#to_h method was added. If you look at the Ruby 2.0.0 documentation for Array, you won't find #to_h in the list of methods, but in the Ruby 2.1.0 documentation it is listed.

# If we tried to use this method while running a version of Ruby prior to 2.1.0 we would get a NoMethodError.

# irb:001> RUBY_VERSION
# => "2.0.0"
# irb:002> [['a', 1], ['b', 2]].to_h
# NoMethodError: undefined method `to_h' for [["a", 1], ["b", 2]]:Array
# To give a slightly different example, in Ruby 2.4.0 some changes were made to certain Ruby classes. At various points in the course material you may see reference to certain Ruby objects being a Fixnum. Prior to Ruby 2.4.0 Fixnum and Bignum sub-classed from Integer. Don't worry too much about what sub-classing means at this stage, this is covered in detail in a later course, just think of Fixnum and Bignum as being sub-divisions of Integer within the Ruby language prior to Ruby 2.4.0.

# As of Ruby 2.4.0, Ruby has unified Fixnum and Bignum into Integer; Fixnum and Bignum are now deprecated. What this means is that in versions of Ruby prior to 2.4.0, an object might be defined as a Fixnum whereas in 2.4.0 and after that same object would be defined as an Integer.

# irb:001> RUBY_VERSION
# => "2.3.4"
# irb:002> 4.class
# => Fixnum
# irb:001> RUBY_VERSION
# => "2.4.0"
# irb:002> 4.class
# => Integer
# All of these slight differences between versions might seem a little bit confusing. For the purposes of learning the basics of the Ruby programming language these differences don't really matter that much, and you certainly don't need to know the differences between every version of Ruby. What you should have though, is an awareness that such differences exist.

# You may well come across a code example in the course material that doesn't work as expected when you run it. One thing to check here is whether the methods used in the code example are compatible with the version of Ruby that you are using. Most of them should work fine, but depending on your Ruby version you might occasionally find one that doesn't.

# Something you should also get into the habit of doing is reading the correct version of the Ruby Documentation for the version of Ruby that you are running. If you go to the homepage of ruby-doc.org, listed under the 'Core API' heading are links to documentation for versions of Ruby from the most recent all the way back to 1.8.6. You can click on the link for your Ruby version to access documentation for that version. Something to note here is that links to Ruby documentation in the course material generally link to the most recent version of the Ruby docs.

# One final thing to note is that in certain situations we may ask you to refer to specific things in line with a particular change to the Ruby API. For example in the Study Guide for the assessment we may say something like "for the purposes of the assessment we want you to refer to Integer when identifying a Ruby object that represents a whole number".

# Summary
# In this assignment we've shown you a few examples of some of the differences between various versions of Ruby. The point here isn't for you to go and learn all of these differences, but rather to be aware that such differences exist. A few things to remember:

# With new releases of Ruby, features are sometimes added and/or deprecated
# When using the Ruby Documentation you should refer to docs for the version of Ruby that you are running
# In some situations, such as an assessment, you may occasionally be required to refer to a particular thing in line with a specific change to the Ruby API