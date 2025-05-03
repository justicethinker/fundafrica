// Financial operations contract
type FinancialOperations {
  datum Account {
    owner: ByteArray,
    balance: Value,
    loans: List<Loan>,
    last_activity: Int
  }

  type Loan {
    amount: Value,
    interest_rate: Rational,
    term: Int,
    collateral: Value,
    status: LoanStatus
  }

  enum LoanStatus {
    Requested,
    Approved,
    Repaid,
    Defaulted
  }

  transition deposit(
    amount: Value
  ) {
    assert { amount > 0: "Deposit amount must be positive" }
    
    // Update account balance
    // ...
  }

  transition request_loan(
    amount: Value,
    collateral: Value,
    term: Int
  ) {
    assert { collateral >= amount * 1.5: "Insufficient collateral" }
    assert { term <= 12: "Maximum loan term is 12 months" }
    
    Loan {
      amount,
      interest_rate: calculate_interest(amount, term),
      term,
      collateral,
      status: Requested
    }
  }

  transition withdraw(
    amount: Value
  ) {
    assert { amount <= ctx.account.balance: "Insufficient balance" }
    assert { no_active_loans(ctx.account): "Cannot withdraw with active loans" }
    
    // Process withdrawal
    // ...
  }
}