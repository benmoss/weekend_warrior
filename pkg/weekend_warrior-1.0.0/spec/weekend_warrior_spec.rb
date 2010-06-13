require 'spec_helper'

describe Date do
  
  before(:all) do
    @sat = Date.parse('05/22/2010')
    @sun = Date.parse('05/23/2010')
    @mon = Date.parse('05/24/2010')
    @fri = Date.parse('05/28/2010')
    #
    @tue      = Date.parse('05/25/2010')
    @next_mon = Date.parse('05/31/2010')
    @last_fri = Date.parse('05/21/2010')
    @last_thu = Date.parse('05/27/2010')
  end
  
  it "should know if a date is a weekend" do
    @sat.should be_weekend
    @sun.should be_weekend
    @mon.should_not be_weekend
    @fri.should_not be_weekend
  end
  
  it "should find the next weekday" do
    Date.next_weekday(@sat).should == @mon
    Date.next_weekday(@sun).should == @mon
    
    Date.next_weekday(@mon).should == @tue
    Date.next_weekday(@fri).should == @next_mon
  end
  
  it "should find the previous weekday" do
    Date.previous_weekday(@sat).should == @last_fri
    Date.previous_weekday(@sun).should == @last_fri
    
    Date.previous_weekday(@mon).should == @last_fri
    Date.previous_weekday(@fri).should == @last_thu
  end
  
  it "should return today if it's a weekday, otherwise the next weekday" do
    Date.weekday(@sat).should == @mon
    Date.weekday(@sun).should == @mon
    Date.weekday(@mon).should == @mon
    Date.weekday(@fri).should == @fri
  end
  
  it "should go forward by X weekdays" do
    Date.weekday.go_forward_by_weekdays(10).should == 2.weeks.since(Date.weekday)
  end
  
  it "should go back by X weekdays" do
    # unless you #to_i, test fails because times are a few milliseconds apart
    Date.weekday.go_back_by_weekdays(10).should == 2.weeks.ago(Date.weekday)
  end  
end

describe Time do

  before(:all) do
    @sat = Time.parse('05/22/2010')
    @sun = Time.parse('05/23/2010')
    @mon = Time.parse('05/24/2010')
    @fri = Time.parse('05/28/2010')
    #
    @tue      = Time.parse('05/25/2010')
    @next_mon = Time.parse('05/31/2010')
    @last_fri = Time.parse('05/21/2010')
    @last_thu = Time.parse('05/27/2010')
  end
  
  it "should know if a date is a weekend" do
    @sat.should be_weekend
    @sun.should be_weekend
    @mon.should_not be_weekend
    @fri.should_not be_weekend
  end
  
  it "should find the next weekday" do
    Time.next_weekday(@sat).should == @mon
    Time.next_weekday(@sun).should == @mon
    
    Time.next_weekday(@mon).should == @tue
    Time.next_weekday(@fri).should == @next_mon
  end
  
  it "should find the previous weekday" do
    Time.previous_weekday(@sat).should == @last_fri
    Time.previous_weekday(@sun).should == @last_fri
    
    Time.previous_weekday(@mon).should == @last_fri
    Time.previous_weekday(@fri).should == @last_thu
  end
  
  it "should return today if it's a weekday, otherwise the next weekday" do
    Time.weekday(@sat).should == @mon
    Time.weekday(@sun).should == @mon
    Time.weekday(@mon).should == @mon
    Time.weekday(@fri).should == @fri
  end
  
  it "should go forward by X weekdays" do
    # unless you #to_i, test fails because times are a few milliseconds apart
    Time.weekday.go_forward_by_weekdays(10).to_i.should == 2.weeks.since(Time.weekday).to_i
  end
  
  it "should go back by X weekdays" do
    # unless you #to_i, test fails because times are a few milliseconds apart
    Time.weekday.go_back_by_weekdays(10).to_i.should == 2.weeks.ago(Time.weekday).to_i
  end
end

