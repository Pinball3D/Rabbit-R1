package androidx.core.net;

import android.net.Uri;
import androidx.core.util.Preconditions;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import kotlin.text.Typography;

/* loaded from: classes.dex */
public final class MailTo {
    private static final String BCC = "bcc";
    private static final String BODY = "body";
    private static final String CC = "cc";
    private static final String MAILTO = "mailto";
    public static final String MAILTO_SCHEME = "mailto:";
    private static final String SUBJECT = "subject";
    private static final String TO = "to";
    private HashMap<String, String> mHeaders = new HashMap<>();

    public Map<String, String> getHeaders() {
        return this.mHeaders;
    }

    private MailTo() {
    }

    public static boolean isMailTo(String str) {
        return str != null && str.startsWith(MAILTO_SCHEME);
    }

    public static boolean isMailTo(Uri uri) {
        return uri != null && MAILTO.equals(uri.getScheme());
    }

    public static MailTo parse(String str) throws ParseException {
        String decode;
        String substring;
        Preconditions.checkNotNull(str);
        if (!isMailTo(str)) {
            throw new ParseException("Not a mailto scheme");
        }
        int indexOf = str.indexOf(35);
        if (indexOf != -1) {
            str = str.substring(0, indexOf);
        }
        int indexOf2 = str.indexOf(63);
        if (indexOf2 == -1) {
            decode = Uri.decode(str.substring(7));
            substring = null;
        } else {
            decode = Uri.decode(str.substring(7, indexOf2));
            substring = str.substring(indexOf2 + 1);
        }
        MailTo mailTo = new MailTo();
        if (substring != null) {
            for (String str2 : substring.split("&")) {
                String[] split = str2.split("=", 2);
                if (split.length != 0) {
                    mailTo.mHeaders.put(Uri.decode(split[0]).toLowerCase(Locale.ROOT), split.length > 1 ? Uri.decode(split[1]) : null);
                }
            }
        }
        String to = mailTo.getTo();
        if (to != null) {
            decode = decode + ", " + to;
        }
        mailTo.mHeaders.put(TO, decode);
        return mailTo;
    }

    public static MailTo parse(Uri uri) throws ParseException {
        return parse(uri.toString());
    }

    public String getTo() {
        return this.mHeaders.get(TO);
    }

    public String getCc() {
        return this.mHeaders.get(CC);
    }

    public String getBcc() {
        return this.mHeaders.get(BCC);
    }

    public String getSubject() {
        return this.mHeaders.get(SUBJECT);
    }

    public String getBody() {
        return this.mHeaders.get("body");
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("mailto:?");
        for (Map.Entry<String, String> entry : this.mHeaders.entrySet()) {
            sb.append(Uri.encode(entry.getKey()));
            sb.append('=');
            sb.append(Uri.encode(entry.getValue()));
            sb.append(Typography.amp);
        }
        return sb.toString();
    }
}
