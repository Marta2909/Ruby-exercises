#an ATM transaction
#Transation is realised when the bank account balance is multiple of 5 and there is enough money (transation costs 0.5)
#input:
# money_to_withdraw initial_bank_account_balance
money_to_withdraw, initial_bank_account_balance = gets.chomp.split(" ")
money_to_withdraw  = money_to_withdraw.to_i
initial_bank_account_balance = initial_bank_account_balance.to_f

if money_to_withdraw%5 == 0 && money_to_withdraw + 0.5 <= initial_bank_account_balance
  puts format("%.2f", initial_bank_account_balance - money_to_withdraw - 0.5)
else
  puts format("%.2f", initial_bank_account_balance)
end
