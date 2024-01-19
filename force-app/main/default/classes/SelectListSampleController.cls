/** Apex */
public class SelectListSampleController {
    
    // ラーメン
    public String ramen{get; set;}
    
    // ラーメンリスト
    public List<SelectOption> getRamenList() {
        List<SelectOption> l = new List<SelectOption>();
        l.add(new SelectOption('1', '醤油'));
        l.add(new SelectOption('2', '塩'));
        l.add(new SelectOption('3', '味噌'));
        return l;
    }

    // コンストラクタ
    public SelectListSampleController() {
        ramen = '2';
    }
    
    // 決定ボタン押下時処理
    public void kettei() {
        String msg = 'あなたが選んだラーメンは"' + ramen + '"です';
        ApexPages.addMessage(new ApexPages.message(ApexPages.Severity.INFO, msg));
    }
}