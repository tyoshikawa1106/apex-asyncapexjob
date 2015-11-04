/**
 * Apexジョブリスト
 * © Force.com Developer
 * ----------------------------------------
 * @createdName      : Taiki,Yoshikawa
 * @lastModifiedName : Taiki,Yoshikawa
 * ----------------------------------------
 */
@isTest
private class AsyncApexJobListControllerTest {

    private static User testAdminUser = CommonTester.getLoginUser();
    
    /**
     * コンストラクタ
     */
    static testMethod void AsyncApexJobListControllerTest() {
    
        System.runAs(testAdminUser) {

            Test.startTest();

            AsyncApexJobListController cls = new AsyncApexJobListController();

            Test.stopTest();

            System.assertEquals(cls.asyncApexJobList.isEmpty(), true);
        }
    }
}
