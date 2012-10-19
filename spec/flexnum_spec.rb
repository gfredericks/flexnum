require 'flexnum'

describe Flexnum do
  it "should let me inc" do
    three = Flexnum.new 3
    three.inspect.should eq "3"
    three.inc!
    three.inc!
    three.inspect.should eq "5"
  end

  it "should eq things right" do
    three = Flexnum.new 3

    ten = Flexnum.new 10

    three.should_not == ten
    ten.should_not == three

    7.times { three.inc! }

    three.should == ten
    ten.should == three
  end
end
