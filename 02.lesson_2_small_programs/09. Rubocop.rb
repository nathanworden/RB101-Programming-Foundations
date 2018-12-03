# Rubocop
# Rubocop is a static code analyzer. This means that it analyzes your code and offers advice about its style format as well as possible logical errors. Rubocop itself is a modular framework using a pluggable architecture to insert enforcement rules. In Rubocop parlance, these rules are called cops. Cops are further grouped into departments.

# Style Format
# The first department we care about centers around enforcing good coding style. Coding style is a matter of opinion, but, in general, Rubyists have settled on a set of conventions. A document called the Ruby Style Guide captures these conventions. Many of Rubocop's style cops enforce the styles in that guide.

# For example, if your code isn't indented with 2 spaces, the IndentationWidth cop will complain.

# Code Linting
# The other department we're interested in is around code linting. A code linter is a program that inspects your code for possible logical errors or code smells. This isn't foolproof, but can serve as a first level of defense against obvious problems. Rubocop has some basic code linting functionality built-in.

# For example, if your code instantiates an unused local variable, the UselessAssignment cop will complain.

# Installation and Usage
# Rubocop is a gem, so you install it like any other gem. You should be aware, though, that Rubocop is updated often, and many updates cause behavioral changes that can confuse new students. To avoid problems introduced by updates, we recommend that you install and use a specific version of Rubocop: version 0.46.0:

# $ gem install rubocop --version 0.46.0
# Once you've installed Rubocop, you'll have a rubocop command available from the command line. Check that your system finds the correct version:

# $ rubocop -v
# 0.46.0
# If any other version appears, we recommend uninstalling it if you can. For example, to uninstall version 0.53.2, run:

# $ gem uninstall rubocop --version 0.53.2
# Repeat this process until version 0.46.0 is the current version.

# If you cannot remove newer versions of rubocop, you can use a newer version. However, you will probably see many warnings that most students do not.

# The rubocop command takes a Ruby file as an argument. For example, if you have a Ruby file called test.rb, you can run Rubocop on this file by:

# $ rubocop test.rb
# Quick Tutorial
# Let's see Rubocop in action. Create a file, name it hello.rb and the contents of this file should just contain one simple line:

# Kernel.puts("hello world")
# Note, we're being explicit in this lesson by calling Kernel.puts instead of just puts. We're also including the optional parentheses for clarity. The above code is identical to puts "hello world".

# Now let's run Rubocop on this file.

# $ rubocop hello.rb
# Inspecting 1 file
# C

# Offenses:

# hello.rb:1:13: C: Prefer single-quoted strings when you don't need string interpolation or special symbols.
# Kernel.puts("hello world")
#             ^^^^^^^^^^^^^

# 1 file inspected, 1 offense detected
# Let's break down the output a bit:

# the first line tells you how many files were inspected. In this case, there's just 1 file. This should tell you that Rubocop is pretty powerful, and can inspect multiple files at once. In fact, you could use it to inspect your entire project. We'll stick to working with 1 file at a time for now.
# the C stands for Convention, which means a convention was broken. Other possible offenses are W (warning), E (error), and F (fatal error).
# the list of offenses appears next; we only have one here, but if there was more than one they would appear sequentially in the order in which the offending code occurs in the inspected file. The first part of the offense tells you where the offense occurred: the file name, the line number, and the column number. Then C again for convention, then the offense message. After that, it even shows you the actual piece of code where the offense occurred. Very nice!
# You can see in this case, rubocop is complaining about our use of double quotes. To find out which cop complained, we can do this.

# $ rubocop hello.rb --format offenses

# 1  Style/StringLiterals
# --
# 1  Total
# This output shows us total offenses per cop, and the total offenses in our code. It also shows us that the StringLiterals cop in the Style department was the cop that complained about our hello.rb.

# Configuring Rubocop
# The previous offense seems overly strict for our project. We want to not enforce that particular rule -- how do we tell Rubocop to ignore the Style/StringLiterals cop? The answer is through a configuration file.

# Rubocop will look for a .rubocop.yml file in the directory it's executed in and apply the configuration settings. Notice that it's a hidden file, so it must start with a .. If it doesn't find a .rubocop.yml file in the current directory, it will recursively look in each parent of the current directory until either one is found or it runs out of parent directories to search. If none is found, no additional configuration settings will be applied and it will use its default rules.

# In practice, nested .rubocop.yml files are confusing, so best to just use one in your project's root directory. In our case, we'll just create one in the same directory as our hello.rb file.

# # .rubocop.yml for RB101 Lessons 2-5 (26 Nov 2018)

# AllCops:
#   # Display cop names
#   DisplayCopNames: true
#   # Display Extra details
#   ExtraDetails: true
#   # Style guide URLs are not displayed in offense messages by default. Change
#   # behavior by overriding DisplayStyleGuide, or by giving the
#   # -S/--display-style-guide option.
#   DisplayStyleGuide: true
#   # When specifying style guide URLs, any paths and/or fragments will be
#   # evaluated relative to the base URL.
#   StyleGuideBaseURL: https://github.com/bbatsov/ruby-style-guide
#   # What version of the Ruby interpreter is the inspected code intended to
#   # run on? (If there is more than one, set this to the lowest version.)
#   TargetRubyVersion: 2.3

# Style/BlockComments:
#   Description: 'Do not use block comments.'
#   Enabled: false

# Style/BracesAroundHashParameters:
#   Description: Forces certain brace styles when the last argument is a hash.
#   Enabled: false

# Style/CommandLiteral:
#   Description: 'Use `` or %x around command literals.'
#   Enabled: true
#   # backticks: Always use backticks.
#   # percent_x: Always use %x.
#   # mixed: Use backticks on single-line commands, and %x on multi-line commands.
#   EnforcedStyle: mixed
#   SupportedStyles:
#     - backticks
#     - percent_x
#     - mixed
#   # If false, the cop will always recommend using %x if one or more backticks
#   # are found in the command string.
#   AllowInnerBackticks: false

# Style/CommentAnnotation:
#   Description: >-
#     Checks formatting of special comments (TODO, FIXME, OPTIMIZE, HACK, REVIEW).
#   Enabled: false

# Style/Documentation:
#   Description: 'Document classes and non-namespace modules.'
#   Enabled: false

# Style/DoubleNegation:
#   Description: 'Checks for uses of double negation (!!).'
#   Enabled: false

# Style/EmptyLineBetweenDefs:
#   Enabled: true
#   AllowAdjacentOneLineDefs: true

# Style/EmptyLiteral:
#   Description: Prefer literals to Array.new/Hash.new/String.new.
#   Enabled: false

# Style/FrozenStringLiteralComment:
#   Enabled: false
#   Description: Require the addition of the frozen string literal comment.

# Style/GuardClause:
#   Description: Check for conditionals that can be replaced with guard clauses.
#   Enabled: false

# Style/HashSyntax:
#   Description: >-
#                  Prefer Ruby 1.9 hash syntax { a: 1, b: 2 } over 1.8 syntax
#                  { :a => 1, :b => 2 }.
#   Enabled: true
#   EnforcedStyle: ruby19_no_mixed_keys
#   UseHashRocketsWithSymbolValues: false
#   PreferHashRocketsForNonAlnumEndingSymbols: false

# Style/IfUnlessModifier:
#   Description: >-
#                  Favor modifier if/unless usage when you have a
#                  single-line body.
#   Enabled: false

# Style/InlineComment:
#   Description: Avoid inline comments.
#   Enabled: false

# Style/MethodCallParentheses:
#   Description: Do not use parentheses for method calls with no arguments.
#   Enabled: false

# Style/ModuleFunction:
#   Description: Checks for usage of `extend self` in modules.
#   Enabled: false

# Style/MutableConstant:
#   Description: Freeze mutable constants.
#   Enabled: false

# Style/NegatedIf:
#   Description: >-
#                  Favor unless over if for negative conditions
#                  (or control flow or).
#   Enabled: false

# Style/NegatedWhile:
#   Description: 'Favor until over while for negative conditions.'
#   Enabled: false

# Style/Next:
#   Description: 'Use `next` to skip iteration instead of a condition at the end.'
#   Enabled: false

# Style/NumericLiterals:
#   Description: Add underscores to large numeric literals to improve their readability.
#   Enabled: false

# Style/NumericPredicate:
#   Description: >-
#                  Checks for the use of predicate- or comparison methods for
#                  numeric comparisons.
#   Enabled: false

# Style/OneLineConditional:
#   Description: Favor the ternary operator(?:) over if/then/else/end constructs.
#   Enabled: false

# Style/OpMethod:
#   Description: When defining binary operators, name the argument other.
#   Enabled: false

# Style/ParenthesesAroundCondition:
#   Description: >-
#                  Don't use parentheses around the condition of an
#                  if/unless/while.
#   Enabled: true
#   AllowSafeAssignment: false

# Style/PercentLiteralDelimiters:
#   Description: 'Use `%`-literal delimiters consistently'
#   Enabled: false

# Style/PerlBackrefs:
#   Description: Avoid Perl-style regex back references.
#   Enabled: false

# Style/Proc:
#   Description: Use proc instead of Proc.new.
#   Enabled: false

# Style/RedundantReturn:
#   Description: "Don't use return where it's not required."
#   Enabled: true
#   # When true allows code like `return x, y`.
#   AllowMultipleReturnValues: true

# Style/RegexpLiteral:
#   Description: 'Use / or %r around regular expressions.'
#   Enabled: true
#   EnforcedStyle: mixed
#   AllowInnerSlashes: false

# Style/SafeNavigation:
#   Description: >-
#                   This cop transforms usages of a method call safeguarded by
#                   a check for the existance of the object to
#                   safe navigation (`&.`).
#   Enabled: false

# Style/SingleLineBlockParams:
#   Description: Enforces the names of some block params.
#   Enabled: false

# Style/SingleLineMethods:
#   Description: Avoid single-line methods.
#   Enabled: false

# Style/SpaceAroundEqualsInParameterDefault:
#   Enabled: false

# Style/StringLiterals:
#   Description: Force use of single or double quotes when no interpolation
#   Enabled: false

# Style/SymbolArray:
#   Description: 'Use %i or %I for arrays of symbols.'
#   StyleGuide: '#percent-i'
#   Enabled: false

# Style/WhileUntilModifier:
#   Description: Favor modifier while/until usage when you have a single-line body.
#   Enabled: false

# Style/WordArray:
#   Description: 'Use %w or %W for arrays of words.'
#   Enabled: false

# Metrics/AbcSize:
#   Description: >-
#                  A calculated magnitude based on number of assignments,
#                  branches, and conditions.
#   Enabled: true
#   Max: 18

# Metrics/BlockLength:
#   Description: Limit size of blocks.
#   Enabled: false

# Metrics/ClassLength:
#   Description: 'Avoid classes longer than 100 lines of code.'
#   Enabled: false

# Metrics/LineLength:
#   Description: Limit lines to 80 characters.
#   Enabled: true
#   Max: 80
#   StyleGuide: https://github.com/bbatsov/ruby-style-guide#80-character-limits
#   AllowURI: true
#   URISchemes:
#   - http
#   - https

# Metrics/MethodLength:
#   Description: 'Avoid methods longer than 15 lines of code.'
#   Enabled: true
#   CountComments: false  # count full line comments?
#   Max: 15

# Lint/LiteralInInterpolation:
#   Description: 'Avoid interpolating literals in strings'
#   AutoCorrect: false
#   Enabled: true

# ##################### Performance ##################################

# Performance/Casecmp:
#   Description: 'Use `casecmp` rather than `downcase ==`.'
#   Reference: 'https://github.com/JuanitoFatas/fast-ruby#stringcasecmp-vs-stringdowncase---code'
#   Enabled: false

# Performance/RedundantMatch:
#   Description: >-
#                   Use `=~` instead of `String#match` or `Regexp#match` in a context where the
#                   returned `MatchData` is not needed.
#   Enabled: false
# Note that line 17 reads TargetRubyVersion: 2.3. This line controls how rubocop reacts when faced with changes to Ruby. If you use a version of Ruby prior to version 2.3.0, you should comment out this line. Otherwise, you should set the version to the major version of Ruby you are using for this course. For example, if you are using Ruby 2.3.3, set the TargetRubyVersion to 2.3; if you are using Ruby 2.4.2, set the TargetRubyVersion to 2.4.

# REMINDER Use version 0.46.0 of rubocop if you can.