class payment_func {
  double addBalance(double old_bal, double amt) {
    double new_bal;
    new_bal = old_bal + amt;
    return new_bal;
  }

  double withBalance(double old_bal, double amt) {
    double new_bal;
    new_bal = old_bal - amt;
    return new_bal;
  }
}
