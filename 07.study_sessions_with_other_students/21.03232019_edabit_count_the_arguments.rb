


def numArgs(*arr, **hsh)
  num_args = 0
  if block_given?
    num_args += 1
  end
  arr.count + hsh.keys.count + num_args
end



p numArgs() == 0
p numArgs('foo') == 1
p numArgs('foo', 'bar') == 2
p numArgs(foo: '', bar: '') == 2
p numArgs('foo', 'bar', foo: '', bar: '') == 4
p numArgs() {} #== 1
p numArgs('foo') {} #== 2
p numArgs('foo', 'bar') {} #== 3
p numArgs(foo: '', bar: '') {} #== 3
p numArgs('foo', 'bar', foo: '', bar: '') {} #== 5