package com.google.zxing.client.result;

import androidx.core.net.MailTo;
import com.google.zxing.Result;
import java.util.Map;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public final class EmailAddressResultParser extends ResultParser {
    private static final Pattern COMMA = Pattern.compile(",");

    @Override // com.google.zxing.client.result.ResultParser
    public EmailAddressParsedResult parse(Result result) {
        String[] strArr;
        String[] strArr2;
        String[] strArr3;
        String str;
        String str2;
        String str3;
        String massagedText = getMassagedText(result);
        if (massagedText.startsWith(MailTo.MAILTO_SCHEME) || massagedText.startsWith("MAILTO:")) {
            String substring = massagedText.substring(7);
            int indexOf = substring.indexOf(63);
            if (indexOf >= 0) {
                substring = substring.substring(0, indexOf);
            }
            try {
                String urlDecode = urlDecode(substring);
                String[] split = !urlDecode.isEmpty() ? COMMA.split(urlDecode) : null;
                Map<String, String> parseNameValuePairs = parseNameValuePairs(massagedText);
                if (parseNameValuePairs != null) {
                    if (split == null && (str3 = parseNameValuePairs.get("to")) != null) {
                        split = COMMA.split(str3);
                    }
                    String str4 = parseNameValuePairs.get("cc");
                    String[] split2 = str4 != null ? COMMA.split(str4) : null;
                    String str5 = parseNameValuePairs.get("bcc");
                    String[] split3 = str5 != null ? COMMA.split(str5) : null;
                    String str6 = parseNameValuePairs.get("subject");
                    str2 = parseNameValuePairs.get("body");
                    strArr = split;
                    strArr3 = split3;
                    strArr2 = split2;
                    str = str6;
                } else {
                    strArr = split;
                    strArr2 = null;
                    strArr3 = null;
                    str = null;
                    str2 = null;
                }
                return new EmailAddressParsedResult(strArr, strArr2, strArr3, str, str2);
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }
        if (EmailDoCoMoResultParser.isBasicallyValidEmailAddress(massagedText)) {
            return new EmailAddressParsedResult(massagedText);
        }
        return null;
    }
}
