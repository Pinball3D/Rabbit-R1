package tech.rabbit.r1launcher.components.wifiutils.utils;

import android.text.TextUtils;

/* loaded from: classes3.dex */
public class SSIDUtils {
    public static String convertToQuotedString(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        int length = str.length() - 1;
        return length >= 0 ? (str.charAt(0) == '\"' && str.charAt(length) == '\"') ? str : "\"" + str + "\"" : str;
    }
}
