package com.google.zxing.client.result;

/* loaded from: classes3.dex */
public final class ExpandedProductResultParser extends ResultParser {
    /* JADX WARN: Code restructure failed: missing block: B:144:0x020e, code lost:
    
        if (r1.equals("10") == false) goto L13;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:13:0x022b. Please report as an issue. */
    @Override // com.google.zxing.client.result.ResultParser
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.zxing.client.result.ExpandedProductParsedResult parse(com.google.zxing.Result r23) {
        /*
            Method dump skipped, instructions count: 884
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.client.result.ExpandedProductResultParser.parse(com.google.zxing.Result):com.google.zxing.client.result.ExpandedProductParsedResult");
    }

    private static String findAIvalue(int i, String str) {
        if (str.charAt(i) != '(') {
            return null;
        }
        String substring = str.substring(i + 1);
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < substring.length(); i2++) {
            char charAt = substring.charAt(i2);
            if (charAt == ')') {
                return sb.toString();
            }
            if (charAt < '0' || charAt > '9') {
                return null;
            }
            sb.append(charAt);
        }
        return sb.toString();
    }

    private static String findValue(int i, String str) {
        StringBuilder sb = new StringBuilder();
        String substring = str.substring(i);
        for (int i2 = 0; i2 < substring.length(); i2++) {
            char charAt = substring.charAt(i2);
            if (charAt == '(') {
                if (findAIvalue(i2, substring) != null) {
                    break;
                }
                sb.append('(');
            } else {
                sb.append(charAt);
            }
        }
        return sb.toString();
    }
}
