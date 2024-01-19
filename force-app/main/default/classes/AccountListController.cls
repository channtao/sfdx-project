/**
 * コントローラクラス.
 */
public class AccountListController {

    /** 取引先リスト */
    public List<Account> accList{get; set;}
    
    /**
     * コンストラクタ.
     */
    public AccountListController() {
        this.accList = [SELECT Id ,Name ,Phone FROM Account];
    }
}