/**
 * Apexジョブリスト
 * © Force.com Developer
 * ----------------------------------------
 * @createdName      : Taiki,Yoshikawa
 * @lastModifiedName : Taiki,Yoshikawa
 * ----------------------------------------
 */
public with sharing class AsyncApexJobListController {

    private AsyncApexJobListDao dao = new AsyncApexJobListDao();
    public List<AsyncApexJob> asyncApexJobList {get; set;}

    /**
     * コンストラクタ
     */
    public AsyncApexJobListController() {
        try {
            // Apexジョブ情報取得
            this.asyncApexJobList = this.dao.getAsyncApexJobList();
        } catch(Exception e) {
            CommonUtil.msgException(e);
            return;
        }
    }
}
