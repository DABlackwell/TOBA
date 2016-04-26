/**
 * @author Daniel Brooks 269416
 * 
 */

package TOBA.business;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Account implements Serializable { // JavaBean
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long accountNumber;

    private enum AccountType {CHECKING, SAVINGS};
    AccountType accountType;
    private double balance;
    
    @ManyToOne
    private User user;
    
    /** No-arg constructor */
    public Account() {
        user = new User();
        accountType = AccountType.SAVINGS;
        balance = 0;
    }
    
    public Account(User user, double balance) {
        this.user = user;
        accountType = AccountType.SAVINGS;
        this.balance = balance;
    }
    
    /** Getters & setters */
    public User getUser() {
        return user;
    }
    public void setUser(User user) {
        this.user = user;
    }
    
    public String getAccountType() {
        return accountType.toString();
    }
    public void setAccountType(String acctType) {
        if (acctType == "CHECKING")
            accountType = AccountType.CHECKING;
        else if (acctType == "SAVINGS")
           accountType = AccountType.SAVINGS;
        else acctType = "";
    }
    
    public double getBalance() {
        return balance;
    }
    public void setBalance(double balance) {
        this.balance = balance;
    }
    
    public double credit(double credit) {
        this.balance += credit;
        return balance;
    }
    
    public double debit(double debit) {
        this.balance += debit;
        return balance;
    }
}
