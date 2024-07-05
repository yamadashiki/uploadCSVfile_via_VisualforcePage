global with sharing class CSVIterator implements Iterator<String>, Iterable<String> {
    
    Private String csvData;
    private String rowDelimiter;
    
    public CSVIterator(String dataStr, String rowDelimiter) {
        this.rowDelimiter = rowDelimiter;
        this.csvData= dataStr;
    }
    
    global Boolean hasNext() {
        return csvData.length() > 1 ? true : false;
    }
    
    global String next() {
        String row = this.csvData.subString(0, this.csvData.indexOf(this.rowDelimiter));
        this.csvData = this.csvData.subString(
            this.csvData.indexOf(this.rowDelimiter) + this.rowDelimiter.length(),
            this.csvData.length()
        );
        return row;
    }
    
    public Iterator<String> Iterator() {
        return this;
    }
}