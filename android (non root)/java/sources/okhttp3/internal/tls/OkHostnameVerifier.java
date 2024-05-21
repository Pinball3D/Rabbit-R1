package okhttp3.internal.tls;

import io.sentry.cache.EnvelopeCache;
import java.security.cert.Certificate;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.internal.HostnamesKt;
import okhttp3.internal.Util;

/* compiled from: OkHostnameVerifier.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\t\u001a\u00020\nJ\u001e\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\u0004H\u0002J\u0016\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nJ\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0018\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0002J\u001c\u0010\u0012\u001a\u00020\u000e2\b\u0010\u0013\u001a\u0004\u0018\u00010\b2\b\u0010\u0014\u001a\u0004\u0018\u00010\bH\u0002J\u0018\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lokhttp3/internal/tls/OkHostnameVerifier;", "Ljavax/net/ssl/HostnameVerifier;", "()V", "ALT_DNS_NAME", "", "ALT_IPA_NAME", "allSubjectAltNames", "", "", "certificate", "Ljava/security/cert/X509Certificate;", "getSubjectAltNames", "type", "verify", "", "host", EnvelopeCache.PREFIX_CURRENT_SESSION_FILE, "Ljavax/net/ssl/SSLSession;", "verifyHostname", "hostname", "pattern", "verifyIpAddress", "ipAddress", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class OkHostnameVerifier implements HostnameVerifier {
    private static final int ALT_DNS_NAME = 2;
    private static final int ALT_IPA_NAME = 7;
    public static final OkHostnameVerifier INSTANCE = new OkHostnameVerifier();

    private OkHostnameVerifier() {
    }

    @Override // javax.net.ssl.HostnameVerifier
    public boolean verify(String host, SSLSession session) {
        Intrinsics.checkNotNullParameter(host, "host");
        Intrinsics.checkNotNullParameter(session, "session");
        try {
            Certificate certificate = session.getPeerCertificates()[0];
            if (certificate != null) {
                return verify(host, (X509Certificate) certificate);
            }
            throw new NullPointerException("null cannot be cast to non-null type java.security.cert.X509Certificate");
        } catch (SSLException unused) {
            return false;
        }
    }

    public final boolean verify(String host, X509Certificate certificate) {
        Intrinsics.checkNotNullParameter(host, "host");
        Intrinsics.checkNotNullParameter(certificate, "certificate");
        return Util.canParseAsIpAddress(host) ? verifyIpAddress(host, certificate) : verifyHostname(host, certificate);
    }

    private final boolean verifyIpAddress(String ipAddress, X509Certificate certificate) {
        String canonicalHost = HostnamesKt.toCanonicalHost(ipAddress);
        List<String> subjectAltNames = getSubjectAltNames(certificate, 7);
        if ((subjectAltNames instanceof Collection) && subjectAltNames.isEmpty()) {
            return false;
        }
        Iterator<T> it = subjectAltNames.iterator();
        while (it.hasNext()) {
            if (Intrinsics.areEqual(canonicalHost, HostnamesKt.toCanonicalHost((String) it.next()))) {
                return true;
            }
        }
        return false;
    }

    private final boolean verifyHostname(String hostname, X509Certificate certificate) {
        Locale locale = Locale.US;
        Intrinsics.checkNotNullExpressionValue(locale, "Locale.US");
        if (hostname == null) {
            throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
        }
        String lowerCase = hostname.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
        List<String> subjectAltNames = getSubjectAltNames(certificate, 2);
        if ((subjectAltNames instanceof Collection) && subjectAltNames.isEmpty()) {
            return false;
        }
        Iterator<T> it = subjectAltNames.iterator();
        while (it.hasNext()) {
            if (INSTANCE.verifyHostname(lowerCase, (String) it.next())) {
                return true;
            }
        }
        return false;
    }

    private final boolean verifyHostname(String hostname, String pattern) {
        String str;
        String str2 = hostname;
        if (str2 == null || str2.length() == 0 || StringsKt.startsWith$default(hostname, ".", false, 2, (Object) null) || StringsKt.endsWith$default(hostname, "..", false, 2, (Object) null) || (str = pattern) == null || str.length() == 0 || StringsKt.startsWith$default(pattern, ".", false, 2, (Object) null) || StringsKt.endsWith$default(pattern, "..", false, 2, (Object) null)) {
            return false;
        }
        if (!StringsKt.endsWith$default(hostname, ".", false, 2, (Object) null)) {
            hostname = hostname + ".";
        }
        if (!StringsKt.endsWith$default(pattern, ".", false, 2, (Object) null)) {
            pattern = pattern + ".";
        }
        Locale locale = Locale.US;
        Intrinsics.checkNotNullExpressionValue(locale, "Locale.US");
        if (pattern == null) {
            throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
        }
        String lowerCase = pattern.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
        String str3 = lowerCase;
        if (!StringsKt.contains$default((CharSequence) str3, (CharSequence) "*", false, 2, (Object) null)) {
            return Intrinsics.areEqual(hostname, lowerCase);
        }
        if (!StringsKt.startsWith$default(lowerCase, "*.", false, 2, (Object) null) || StringsKt.indexOf$default((CharSequence) str3, '*', 1, false, 4, (Object) null) != -1 || hostname.length() < lowerCase.length() || Intrinsics.areEqual("*.", lowerCase)) {
            return false;
        }
        if (lowerCase != null) {
            String substring = lowerCase.substring(1);
            Intrinsics.checkNotNullExpressionValue(substring, "(this as java.lang.String).substring(startIndex)");
            if (!StringsKt.endsWith$default(hostname, substring, false, 2, (Object) null)) {
                return false;
            }
            int length = hostname.length() - substring.length();
            return length <= 0 || StringsKt.lastIndexOf$default((CharSequence) hostname, '.', length + (-1), false, 4, (Object) null) == -1;
        }
        throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
    }

    public final List<String> allSubjectAltNames(X509Certificate certificate) {
        Intrinsics.checkNotNullParameter(certificate, "certificate");
        return CollectionsKt.plus((Collection) getSubjectAltNames(certificate, 7), (Iterable) getSubjectAltNames(certificate, 2));
    }

    private final List<String> getSubjectAltNames(X509Certificate certificate, int type) {
        Object obj;
        try {
            Collection<List<?>> subjectAlternativeNames = certificate.getSubjectAlternativeNames();
            if (subjectAlternativeNames == null) {
                return CollectionsKt.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            for (List<?> list : subjectAlternativeNames) {
                if (list != null && list.size() >= 2 && !(!Intrinsics.areEqual(list.get(0), Integer.valueOf(type))) && (obj = list.get(1)) != null) {
                    if (obj == null) {
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
                    }
                    arrayList.add((String) obj);
                }
            }
            return arrayList;
        } catch (CertificateParsingException unused) {
            return CollectionsKt.emptyList();
        }
    }
}
