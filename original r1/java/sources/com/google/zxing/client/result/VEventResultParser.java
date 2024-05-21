package com.google.zxing.client.result;

import androidx.core.net.MailTo;
import com.google.zxing.Result;
import java.util.List;

/* loaded from: classes3.dex */
public final class VEventResultParser extends ResultParser {
    @Override // com.google.zxing.client.result.ResultParser
    public CalendarParsedResult parse(Result result) {
        double parseDouble;
        double parseDouble2;
        String massagedText = getMassagedText(result);
        if (massagedText.indexOf("BEGIN:VEVENT") < 0) {
            return null;
        }
        String matchSingleVCardPrefixedField = matchSingleVCardPrefixedField("SUMMARY", massagedText);
        String matchSingleVCardPrefixedField2 = matchSingleVCardPrefixedField("DTSTART", massagedText);
        if (matchSingleVCardPrefixedField2 == null) {
            return null;
        }
        String matchSingleVCardPrefixedField3 = matchSingleVCardPrefixedField("DTEND", massagedText);
        String matchSingleVCardPrefixedField4 = matchSingleVCardPrefixedField("DURATION", massagedText);
        String matchSingleVCardPrefixedField5 = matchSingleVCardPrefixedField("LOCATION", massagedText);
        String stripMailto = stripMailto(matchSingleVCardPrefixedField("ORGANIZER", massagedText));
        String[] matchVCardPrefixedField = matchVCardPrefixedField("ATTENDEE", massagedText);
        if (matchVCardPrefixedField != null) {
            for (int i = 0; i < matchVCardPrefixedField.length; i++) {
                matchVCardPrefixedField[i] = stripMailto(matchVCardPrefixedField[i]);
            }
        }
        String matchSingleVCardPrefixedField6 = matchSingleVCardPrefixedField("DESCRIPTION", massagedText);
        String matchSingleVCardPrefixedField7 = matchSingleVCardPrefixedField("GEO", massagedText);
        if (matchSingleVCardPrefixedField7 == null) {
            parseDouble = Double.NaN;
            parseDouble2 = Double.NaN;
        } else {
            int indexOf = matchSingleVCardPrefixedField7.indexOf(59);
            if (indexOf < 0) {
                return null;
            }
            try {
                parseDouble = Double.parseDouble(matchSingleVCardPrefixedField7.substring(0, indexOf));
                parseDouble2 = Double.parseDouble(matchSingleVCardPrefixedField7.substring(indexOf + 1));
            } catch (NumberFormatException | IllegalArgumentException unused) {
                return null;
            }
        }
        return new CalendarParsedResult(matchSingleVCardPrefixedField, matchSingleVCardPrefixedField2, matchSingleVCardPrefixedField3, matchSingleVCardPrefixedField4, matchSingleVCardPrefixedField5, stripMailto, matchVCardPrefixedField, matchSingleVCardPrefixedField6, parseDouble, parseDouble2);
    }

    private static String matchSingleVCardPrefixedField(CharSequence charSequence, String str) {
        List<String> matchSingleVCardPrefixedField = VCardResultParser.matchSingleVCardPrefixedField(charSequence, str, true, false);
        if (matchSingleVCardPrefixedField == null || matchSingleVCardPrefixedField.isEmpty()) {
            return null;
        }
        return matchSingleVCardPrefixedField.get(0);
    }

    private static String[] matchVCardPrefixedField(CharSequence charSequence, String str) {
        List<List<String>> matchVCardPrefixedField = VCardResultParser.matchVCardPrefixedField(charSequence, str, true, false);
        if (matchVCardPrefixedField == null || matchVCardPrefixedField.isEmpty()) {
            return null;
        }
        int size = matchVCardPrefixedField.size();
        String[] strArr = new String[size];
        for (int i = 0; i < size; i++) {
            strArr[i] = matchVCardPrefixedField.get(i).get(0);
        }
        return strArr;
    }

    private static String stripMailto(String str) {
        return str != null ? (str.startsWith(MailTo.MAILTO_SCHEME) || str.startsWith("MAILTO:")) ? str.substring(7) : str : str;
    }
}
