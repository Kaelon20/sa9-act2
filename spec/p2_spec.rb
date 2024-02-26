require 'p2'


RSpec.describe TodoList do
    let(:list) {TodoList.new}

    describe "#add" do
      it "adds a todo to the list" do
        list.add("Do Homework")
        expect(list.todos[0]).to eq("Do Homework")
      end
    end
  
    describe "#remove" do
      it "removes a todo from the list" do
        list.add("Do Homework")
        list.remove("Do Homework")
        expect(list.todos[0]).not_to eq("Do Homework") 
      end
    end

    describe "#todos" do
      it "returns all todos" do
        list.add("Wash Car")
        list.add("Take Nap")
        expect(list.todos).to eq(["Wash Car", "Take Nap"])
      end
    end
end
  