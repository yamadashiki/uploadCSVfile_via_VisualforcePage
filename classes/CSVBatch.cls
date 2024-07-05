global with sharing class CSVBatch implements Database.Batchable<String>, Database.Stateful{
    private String csvFile;
    private static final String CRLF = '\n';

     public CSVBatch (String dataStr) {
        this.csvFile = dataStr;
     }
    
    global Iterable<String> start(Database.batchableContext context) { 
        return new CSVIterator(csvFile, CRLF);
    }

    global void execute(Database.BatchableContext batchableContext, List<String> scope){
        // execでバッチで行いたい処理を実行
    }

    global void finish(Database.BatchableContext BC){
        // finishで行いたい処理を実行
    }
}