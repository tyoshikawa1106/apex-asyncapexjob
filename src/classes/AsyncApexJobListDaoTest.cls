/**
 * Apexジョブリスト
 * © Force.com Developer
 * ----------------------------------------
 * @createdName      : Taiki,Yoshikawa
 * @lastModifiedName : Taiki,Yoshikawa
 * ----------------------------------------
 */
@isTest
private class AsyncApexJobListDaoTest {

    private static AsyncApexJobListDao dao = new AsyncApexJobListDao();
    private static User testAdminUser = CommonTester.getLoginUser();

    /**
     * Apexジョブ情報取得
     */
    static testMethod void getAsyncApexJobListTest() {
    
        System.runAs(testAdminUser) {

            Test.startTest();

            List<AsyncApexJob> results = dao.getAsyncApexJobList();

            Test.stopTest();

            System.assertEquals(results.isEmpty(), true);
        }
    }
}
