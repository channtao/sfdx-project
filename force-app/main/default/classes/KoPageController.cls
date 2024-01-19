/**
 * 小画面コントローラ.
 */
public class KoPageController {
    
    /** 親画面より受け取ったパラメータ */
    public String param1{get; private set;}
    public String param2{get; private set;}

    /**
     * コンストラクタ.
     */
    public KoPageController() {
        // URLパラメータ取得
        Map<String, String> paramMap = apexPages.currentPage().getParameters();
        this.param1 = paramMap.get('param1');
        this.param2 = paramMap.get('param2');
    }
}