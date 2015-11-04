/**
 * Apexジョブリスト
 * © Force.com Developer
 * ----------------------------------------
 * @createdName      : Taiki,Yoshikawa
 * @lastModifiedName : Taiki,Yoshikawa
 * ----------------------------------------
 */
public with sharing class AsyncApexJobListDao {

    /**
     * コンストラクタ
     */
    public AsyncApexJobListDao() {
		
    }

    /**
     * Apexジョブ情報取得
     */
    public List<AsyncApexJob> getAsyncApexJobList() {
        return [
            SELECT
                 Id
                ,CreatedDate
                ,CreatedById
                ,JobType
                ,ApexClassId
                ,Status
                ,JobItemsprocessed
                ,TotalJobItems
                ,NumberOfErrors
                ,CompletedDate
                ,MethodName
                ,ExtendedStatus
                ,ParentJobId
                ,LastProcessed
                ,LastProcessedOffSet
            FROM
                AsyncApexJob
            ORDER BY CreatedDate DESC
            LIMIT 200
        ];
    }
}
