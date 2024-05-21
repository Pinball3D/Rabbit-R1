package com.google.zxing.client.result;

import androidx.core.net.MailTo;

/* loaded from: classes3.dex */
public final class EmailAddressParsedResult extends ParsedResult {
    private final String[] bccs;
    private final String body;
    private final String[] ccs;
    private final String subject;
    private final String[] tos;

    public String[] getBCCs() {
        return this.bccs;
    }

    public String getBody() {
        return this.body;
    }

    public String[] getCCs() {
        return this.ccs;
    }

    @Deprecated
    public String getMailtoURI() {
        return MailTo.MAILTO_SCHEME;
    }

    public String getSubject() {
        return this.subject;
    }

    public String[] getTos() {
        return this.tos;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public EmailAddressParsedResult(String str) {
        this(new String[]{str}, null, null, null, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public EmailAddressParsedResult(String[] strArr, String[] strArr2, String[] strArr3, String str, String str2) {
        super(ParsedResultType.EMAIL_ADDRESS);
        this.tos = strArr;
        this.ccs = strArr2;
        this.bccs = strArr3;
        this.subject = str;
        this.body = str2;
    }

    @Deprecated
    public String getEmailAddress() {
        String[] strArr = this.tos;
        if (strArr == null || strArr.length == 0) {
            return null;
        }
        return strArr[0];
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        StringBuilder sb = new StringBuilder(30);
        maybeAppend(this.tos, sb);
        maybeAppend(this.ccs, sb);
        maybeAppend(this.bccs, sb);
        maybeAppend(this.subject, sb);
        maybeAppend(this.body, sb);
        return sb.toString();
    }
}
