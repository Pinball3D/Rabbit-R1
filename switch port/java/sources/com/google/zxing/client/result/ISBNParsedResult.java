package com.google.zxing.client.result;

/* loaded from: classes3.dex */
public final class ISBNParsedResult extends ParsedResult {
    private final String isbn;

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        return this.isbn;
    }

    public String getISBN() {
        return this.isbn;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ISBNParsedResult(String str) {
        super(ParsedResultType.ISBN);
        this.isbn = str;
    }
}
