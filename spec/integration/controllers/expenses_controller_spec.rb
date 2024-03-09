require 'rails_helper'

RSpec.describe ExpensesController, type: :request do
    describe "POST /expenses" do
        before do
            expenses_params = {
                expense: {
                    amount: 100.25
                }     
            }

            post '/expenses', params: expenses_params
        end

        it "creates a new expense" do
            expect(response.code).to eq '201'
        end

        it "saves expense in the database" do 
            expense_id = JSON.parse(response.body)["id"].to_i
            expense = Expense.find(expense_id)
            expect(expense.amount).to eq 100.25
        end
    end
end