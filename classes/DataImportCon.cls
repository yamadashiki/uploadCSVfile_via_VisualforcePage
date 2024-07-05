public  with sharing class DataImportCon {
    
    public DataImportCon(){
    }
    
    // CSV読み込み
    @RemoteAction
    public static void readCsvFile(String dataStr){
        CSVBatch batch = new CSVBatch(dataStr);
        Database.executeBatch(batch, 100);
    }
}