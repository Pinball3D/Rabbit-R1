package com.google.zxing.client.result;

import kotlin.text.Typography;

/* loaded from: classes3.dex */
public final class SMSParsedResult extends ParsedResult {
    private final String body;
    private final String[] numbers;
    private final String subject;
    private final String[] vias;

    public String getBody() {
        return this.body;
    }

    public String[] getNumbers() {
        return this.numbers;
    }

    public String getSubject() {
        return this.subject;
    }

    public String[] getVias() {
        return this.vias;
    }

    public SMSParsedResult(String str, String str2, String str3, String str4) {
        super(ParsedResultType.SMS);
        this.numbers = new String[]{str};
        this.vias = new String[]{str2};
        this.subject = str3;
        this.body = str4;
    }

    public SMSParsedResult(String[] strArr, String[] strArr2, String str, String str2) {
        super(ParsedResultType.SMS);
        this.numbers = strArr;
        this.vias = strArr2;
        this.subject = str;
        this.body = str2;
    }

    public String getSMSURI() {
        StringBuilder sb = new StringBuilder("sms:");
        boolean z = true;
        for (int i = 0; i < this.numbers.length; i++) {
            if (z) {
                z = false;
            } else {
                sb.append(',');
            }
            sb.append(this.numbers[i]);
            String[] strArr = this.vias;
            if (strArr != null && strArr[i] != null) {
                sb.append(";via=");
                sb.append(this.vias[i]);
            }
        }
        boolean z2 = this.body != null;
        boolean z3 = this.subject != null;
        if (z2 || z3) {
            sb.append('?');
            if (z2) {
                sb.append("body=");
                sb.append(this.body);
            }
            if (z3) {
                if (z2) {
                    sb.append(Typography.amp);
                }
                sb.append("subject=");
                sb.append(this.subject);
            }
        }
        return sb.toString();
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        StringBuilder sb = new StringBuilder(100);
        maybeAppend(this.numbers, sb);
        maybeAppend(this.subject, sb);
        maybeAppend(this.body, sb);
        return sb.toString();
    }
}
