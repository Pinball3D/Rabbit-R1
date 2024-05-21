package io.sentry.util;

import io.sentry.ISpan;
import io.sentry.SpanDataConvention;
import io.sentry.protocol.Request;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public final class UrlUtils {
    private static final Pattern AUTH_REGEX = Pattern.compile("(.+://)(.*@)(.*)");
    public static final String SENSITIVE_DATA_SUBSTITUTE = "[Filtered]";

    public static UrlDetails parseNullable(String str) {
        if (str == null) {
            return null;
        }
        return parse(str);
    }

    public static UrlDetails parse(String str) {
        if (isAbsoluteUrl(str)) {
            return splitAbsoluteUrl(str);
        }
        return splitRelativeUrl(str);
    }

    private static boolean isAbsoluteUrl(String str) {
        return str.contains("://");
    }

    private static UrlDetails splitRelativeUrl(String str) {
        int indexOf = str.indexOf("?");
        int indexOf2 = str.indexOf("#");
        return new UrlDetails(extractBaseUrl(str, indexOf, indexOf2), extractQuery(str, indexOf, indexOf2), extractFragment(str, indexOf2));
    }

    private static String extractBaseUrl(String str, int i, int i2) {
        if (i >= 0) {
            return str.substring(0, i).trim();
        }
        return i2 >= 0 ? str.substring(0, i2).trim() : str;
    }

    private static String extractQuery(String str, int i, int i2) {
        if (i <= 0) {
            return null;
        }
        if (i2 > 0 && i2 > i) {
            return str.substring(i + 1, i2).trim();
        }
        return str.substring(i + 1).trim();
    }

    private static String extractFragment(String str, int i) {
        if (i > 0) {
            return str.substring(i + 1).trim();
        }
        return null;
    }

    private static UrlDetails splitAbsoluteUrl(String str) {
        try {
            String urlWithAuthRemoved = urlWithAuthRemoved(str);
            URL url = new URL(str);
            String baseUrlOnly = baseUrlOnly(urlWithAuthRemoved);
            if (baseUrlOnly.contains("#")) {
                return new UrlDetails(null, null, null);
            }
            return new UrlDetails(baseUrlOnly, url.getQuery(), url.getRef());
        } catch (MalformedURLException unused) {
            return new UrlDetails(null, null, null);
        }
    }

    private static String urlWithAuthRemoved(String str) {
        Matcher matcher = AUTH_REGEX.matcher(str);
        if (matcher.matches() && matcher.groupCount() == 3) {
            return matcher.group(1) + (matcher.group(2).contains(":") ? "[Filtered]:[Filtered]@" : "[Filtered]@") + matcher.group(3);
        }
        return str;
    }

    private static String baseUrlOnly(String str) {
        int indexOf = str.indexOf("?");
        if (indexOf >= 0) {
            return str.substring(0, indexOf).trim();
        }
        int indexOf2 = str.indexOf("#");
        return indexOf2 >= 0 ? str.substring(0, indexOf2).trim() : str;
    }

    /* loaded from: classes3.dex */
    public static final class UrlDetails {
        private final String fragment;
        private final String query;
        private final String url;

        public String getFragment() {
            return this.fragment;
        }

        public String getQuery() {
            return this.query;
        }

        public String getUrl() {
            return this.url;
        }

        public String getUrlOrFallback() {
            String str = this.url;
            return str == null ? "unknown" : str;
        }

        public UrlDetails(String str, String str2, String str3) {
            this.url = str;
            this.query = str2;
            this.fragment = str3;
        }

        public void applyToRequest(Request request) {
            if (request == null) {
                return;
            }
            request.setUrl(this.url);
            request.setQueryString(this.query);
            request.setFragment(this.fragment);
        }

        public void applyToSpan(ISpan iSpan) {
            if (iSpan == null) {
                return;
            }
            String str = this.query;
            if (str != null) {
                iSpan.setData(SpanDataConvention.HTTP_QUERY_KEY, str);
            }
            String str2 = this.fragment;
            if (str2 != null) {
                iSpan.setData(SpanDataConvention.HTTP_FRAGMENT_KEY, str2);
            }
        }
    }
}
