require 'flexnum'

describe Flexnum do
  it "should let me inc" do
    three = Flexnum.new 3
    three.inspect.should eq "3"
    three.inc!
    three.inc!
    three.inspect.should eq "5"
  end
end
