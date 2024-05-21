package com.google.zxing.client.result;

/* loaded from: classes3.dex */
public final class TextParsedResult extends ParsedResult {
    private final String language;
    private final String text;

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        return this.text;
    }

    public String getLanguage() {
        return this.language;
    }

    public String getText() {
        return this.text;
    }

    public TextParsedResult(String str, String str2) {
        super(ParsedResultType.TEXT);
        this.text = str;
        this.language = str2;
    }
}
