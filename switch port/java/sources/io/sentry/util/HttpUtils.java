package io.sentry.util;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* loaded from: classes3.dex */
public final class HttpUtils {
    public static final String COOKIE_HEADER_NAME = "Cookie";
    private static final List<String> SENSITIVE_HEADERS = Arrays.asList("X-FORWARDED-FOR", "AUTHORIZATION", "COOKIE", "SET-COOKIE", "X-API-KEY", "X-REAL-IP", "REMOTE-ADDR", "FORWARDED", "PROXY-AUTHORIZATION", "X-CSRF-TOKEN", "X-CSRFTOKEN", "X-XSRF-TOKEN");
    private static final List<String> SECURITY_COOKIES = Arrays.asList("JSESSIONID", "JSESSIONIDSSO", "JSSOSESSIONID", "SESSIONID", "SID", "CSRFTOKEN", "XSRF-TOKEN");

    public static boolean containsSensitiveHeader(String str) {
        return SENSITIVE_HEADERS.contains(str.toUpperCase(Locale.ROOT));
    }

    public static List<String> filterOutSecurityCookiesFromHeader(Enumeration<String> enumeration, String str, List<String> list) {
        if (enumeration == null) {
            return null;
        }
        return filterOutSecurityCookiesFromHeader(Collections.list(enumeration), str, list);
    }

    public static List<String> filterOutSecurityCookiesFromHeader(List<String> list, String str, List<String> list2) {
        if (list == null) {
            return null;
        }
        if (str != null && !"Cookie".equalsIgnoreCase(str)) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(filterOutSecurityCookies(it.next(), list2));
        }
        return arrayList;
    }

    public static String filterOutSecurityCookies(String str, List<String> list) {
        if (str == null) {
            return null;
        }
        try {
            String[] split = str.split(";", -1);
            StringBuilder sb = new StringBuilder();
            int length = split.length;
            boolean z = true;
            int i = 0;
            while (i < length) {
                String str2 = split[i];
                if (!z) {
                    sb.append(";");
                }
                String str3 = str2.split("=", -1)[0];
                if (isSecurityCookie(str3.trim(), list)) {
                    sb.append(str3 + "=" + UrlUtils.SENSITIVE_DATA_SUBSTITUTE);
                } else {
                    sb.append(str2);
                }
                i++;
                z = false;
            }
            return sb.toString();
        } catch (Throwable unused) {
            return null;
        }
    }

    public static boolean isSecurityCookie(String str, List<String> list) {
        String upperCase = str.toUpperCase(Locale.ROOT);
        if (SECURITY_COOKIES.contains(upperCase)) {
            return true;
        }
        if (list == null) {
            return false;
        }
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            if (it.next().toUpperCase(Locale.ROOT).equals(upperCase)) {
                return true;
            }
        }
        return false;
    }
}
