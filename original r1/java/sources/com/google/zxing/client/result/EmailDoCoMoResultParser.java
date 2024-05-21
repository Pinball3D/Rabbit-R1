package com.google.zxing.client.result;

import com.google.zxing.Result;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public final class EmailDoCoMoResultParser extends AbstractDoCoMoResultParser {
    private static final Pattern ATEXT_ALPHANUMERIC = Pattern.compile("[a-zA-Z0-9@.!#$%&'*+\\-/=?^_`{|}~]+");

    @Override // com.google.zxing.client.result.ResultParser
    public EmailAddressParsedResult parse(Result result) {
        String[] matchDoCoMoPrefixedField;
        String massagedText = getMassagedText(result);
        if (!massagedText.startsWith("MATMSG:") || (matchDoCoMoPrefixedField = matchDoCoMoPrefixedField("TO:", massagedText)) == null) {
            return null;
        }
        for (String str : matchDoCoMoPrefixedField) {
            if (!isBasicallyValidEmailAddress(str)) {
                return null;
            }
        }
        return new EmailAddressParsedResult(matchDoCoMoPrefixedField, null, null, matchSingleDoCoMoPrefixedField("SUB:", massagedText, false), matchSingleDoCoMoPrefixedField("BODY:", massagedText, false));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isBasicallyValidEmailAddress(String str) {
        return str != null && ATEXT_ALPHANUMERIC.matcher(str).matches() && str.indexOf(64) >= 0;
    }
}
