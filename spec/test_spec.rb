RSpec.describe 'Simple calculator' do
    before do
        @x = 7
        @y = 4
    end
    it "Should add two numbers" do
        expect(@x+@y).to eq(11)
    end

    it "should subtract 2 numbers" do
        expect(@x-@y).to eq(3)
    end
end