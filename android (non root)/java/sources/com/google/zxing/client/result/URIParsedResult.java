package com.google.zxing.client.result;

/* loaded from: classes3.dex */
public final class URIParsedResult extends ParsedResult {
    private final String title;
    private final String uri;

    public String getTitle() {
        return this.title;
    }

    public String getURI() {
        return this.uri;
    }

    public URIParsedResult(String str, String str2) {
        super(ParsedResultType.URI);
        this.uri = massageURI(str);
        this.title = str2;
    }

    @Deprecated
    public boolean isPossiblyMaliciousURI() {
        return URIResultParser.isPossiblyMaliciousURI(this.uri);
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        StringBuilder sb = new StringBuilder(30);
        maybeAppend(this.title, sb);
        maybeAppend(this.uri, sb);
        return sb.toString();
    }

    private static String massageURI(String str) {
        String trim = str.trim();
        int indexOf = trim.indexOf(58);
        return (indexOf < 0 || isColonFollowedByPortNumber(trim, indexOf)) ? "http://".concat(String.valueOf(trim)) : trim;
    }

    private static boolean isColonFollowedByPortNumber(String str, int i) {
        int i2 = i + 1;
        int indexOf = str.indexOf(47, i2);
        if (indexOf < 0) {
            indexOf = str.length();
        }
        return ResultParser.isSubstringOfDigits(str, i2, indexOf - i2);
    }
}
