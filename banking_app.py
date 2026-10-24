def main():
    balance = 10000.0  # Fixed opening balance

    print("Welcome to Kiran Bank")
    print(f"Opening Balance: {balance:.2f}\n")

    while True:
        print("--- Menu ---")
        print("1. Check Balance")
        print("2. Deposit Money")
        print("3. Withdraw Money")
        print("4. Exit")

        choice = input("Enter choice: ").strip()

        if choice == "1":
            print(f"Current Balance: {balance:.2f}\n")

        elif choice == "2":
            try:
                amount = float(input("Enter deposit amount: "))
                if amount > 0:
                    balance += amount
                    print("Deposit successful.")
                    print(f"Updated Balance: {balance:.2f}\n")
                else:
                    print("Error: Deposit amount must be greater than 0.\n")
            except ValueError:
                print("Error: Invalid input. Please enter a valid numerical amount.\n")

        elif choice == "3":
            try:
                amount = float(input("Enter withdrawal amount: "))
                if amount <= 0:
                    print("Error: Withdrawal amount must be greater than 0.\n")
                elif amount > balance:
                    print("Transaction failed: Insufficient balance.")
                    print(f"Current Balance: {balance:.2f}\n")
                else:
                    balance -= amount
                    print("Withdrawal successful.")
                    print(f"Updated Balance: {balance:.2f}\n")
            except ValueError:
                print("Error: Invalid input. Please enter a valid numerical amount.\n")

        elif choice == "4":
            print("Thank you for banking with us. Goodbye!")
            break

        else:
            print("Error: Invalid choice. Please select an option between 1 and 4.\n")

if __name__ == "__main__":
    main()
