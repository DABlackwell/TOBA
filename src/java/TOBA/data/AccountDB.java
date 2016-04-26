/**
 * @author Daniel Brooks 269416
 * 
 */

package TOBA.data;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import TOBA.business.Account;

public class AccountDB {
    
    public static void insert(Account account) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        trans.begin();
        try {
            em.persist(account);
            trans.commit();
        } catch (Exception e) {
            System.out.println(e);
            trans.rollback();
        } finally {
            em.close();
        }
    }
}
