package kotlin.text;

import androidx.constraintlayout.widget.ConstraintLayout;
import io.flutter.plugin.editing.SpellCheckPlugin;
import io.sentry.SentryEnvelopeItemHeader;
import io.sentry.protocol.Device;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CodingErrorAction;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import kotlin.Deprecated;
import kotlin.DeprecatedSinceKotlin;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.collections.AbstractList;
import kotlin.collections.ArraysKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;

/* compiled from: StringsJVM.kt */
@Metadata(d1 = {"\u0000~\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0019\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\r\n\u0002\b\n\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\t\n\u0002\u0010\f\n\u0002\b\u0011\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\u001a\u0011\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\tH\u0087\b\u001a\u0011\u0010\u0007\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000bH\u0087\b\u001a\u0011\u0010\u0007\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\rH\u0087\b\u001a\u0019\u0010\u0007\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0087\b\u001a!\u0010\u0007\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0087\b\u001a)\u0010\u0007\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\u000fH\u0087\b\u001a\u0011\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0014H\u0087\b\u001a!\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0087\b\u001a!\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0087\b\u001a\f\u0010\u0017\u001a\u00020\u0002*\u00020\u0002H\u0007\u001a\u0014\u0010\u0017\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0019H\u0007\u001a\u0015\u0010\u001a\u001a\u00020\u0011*\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u0011H\u0087\b\u001a\u0015\u0010\u001c\u001a\u00020\u0011*\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u0011H\u0087\b\u001a\u001d\u0010\u001d\u001a\u00020\u0011*\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u00112\u0006\u0010\u001f\u001a\u00020\u0011H\u0087\b\u001a\u001c\u0010 \u001a\u00020\u0011*\u00020\u00022\u0006\u0010!\u001a\u00020\u00022\b\b\u0002\u0010\"\u001a\u00020#\u001a\f\u0010$\u001a\u00020\u0002*\u00020\u0014H\u0007\u001a \u0010$\u001a\u00020\u0002*\u00020\u00142\b\b\u0002\u0010%\u001a\u00020\u00112\b\b\u0002\u0010\u001f\u001a\u00020\u0011H\u0007\u001a\u0019\u0010&\u001a\u00020#*\u0004\u0018\u00010'2\b\u0010!\u001a\u0004\u0018\u00010'H\u0087\u0004\u001a \u0010&\u001a\u00020#*\u0004\u0018\u00010'2\b\u0010!\u001a\u0004\u0018\u00010'2\u0006\u0010\"\u001a\u00020#H\u0007\u001a\u0015\u0010&\u001a\u00020#*\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0087\b\u001a\u0015\u0010&\u001a\u00020#*\u00020\u00022\u0006\u0010(\u001a\u00020'H\u0087\b\u001a\f\u0010)\u001a\u00020\u0002*\u00020\u0002H\u0007\u001a\u0014\u0010)\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0019H\u0007\u001a\f\u0010*\u001a\u00020\u0002*\u00020\rH\u0007\u001a*\u0010*\u001a\u00020\u0002*\u00020\r2\b\b\u0002\u0010%\u001a\u00020\u00112\b\b\u0002\u0010\u001f\u001a\u00020\u00112\b\b\u0002\u0010+\u001a\u00020#H\u0007\u001a\f\u0010,\u001a\u00020\r*\u00020\u0002H\u0007\u001a*\u0010,\u001a\u00020\r*\u00020\u00022\b\b\u0002\u0010%\u001a\u00020\u00112\b\b\u0002\u0010\u001f\u001a\u00020\u00112\b\b\u0002\u0010+\u001a\u00020#H\u0007\u001a\u001c\u0010-\u001a\u00020#*\u00020\u00022\u0006\u0010.\u001a\u00020\u00022\b\b\u0002\u0010\"\u001a\u00020#\u001a \u0010/\u001a\u00020#*\u0004\u0018\u00010\u00022\b\u0010!\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\"\u001a\u00020#\u001a4\u00100\u001a\u00020\u0002*\u00020\u00022\b\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0016\u00101\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010302\"\u0004\u0018\u000103H\u0087\b¢\u0006\u0002\u00104\u001a*\u00100\u001a\u00020\u0002*\u00020\u00022\u0016\u00101\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010302\"\u0004\u0018\u000103H\u0087\b¢\u0006\u0002\u00105\u001a<\u00100\u001a\u00020\u0002*\u00020\u00042\b\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u00100\u001a\u00020\u00022\u0016\u00101\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010302\"\u0004\u0018\u000103H\u0087\b¢\u0006\u0002\u00106\u001a2\u00100\u001a\u00020\u0002*\u00020\u00042\u0006\u00100\u001a\u00020\u00022\u0016\u00101\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010302\"\u0004\u0018\u000103H\u0087\b¢\u0006\u0002\u00107\u001a\r\u00108\u001a\u00020\u0002*\u00020\u0002H\u0087\b\u001a\n\u00109\u001a\u00020#*\u00020'\u001a\r\u0010:\u001a\u00020\u0002*\u00020\u0002H\u0087\b\u001a\u0015\u0010:\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0019H\u0087\b\u001a\u001d\u0010;\u001a\u00020\u0011*\u00020\u00022\u0006\u0010<\u001a\u00020=2\u0006\u0010>\u001a\u00020\u0011H\u0081\b\u001a\u001d\u0010;\u001a\u00020\u0011*\u00020\u00022\u0006\u0010?\u001a\u00020\u00022\u0006\u0010>\u001a\u00020\u0011H\u0081\b\u001a\u001d\u0010@\u001a\u00020\u0011*\u00020\u00022\u0006\u0010<\u001a\u00020=2\u0006\u0010>\u001a\u00020\u0011H\u0081\b\u001a\u001d\u0010@\u001a\u00020\u0011*\u00020\u00022\u0006\u0010?\u001a\u00020\u00022\u0006\u0010>\u001a\u00020\u0011H\u0081\b\u001a\u001d\u0010A\u001a\u00020\u0011*\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u00112\u0006\u0010B\u001a\u00020\u0011H\u0087\b\u001a4\u0010C\u001a\u00020#*\u00020'2\u0006\u0010D\u001a\u00020\u00112\u0006\u0010!\u001a\u00020'2\u0006\u0010E\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\b\b\u0002\u0010\"\u001a\u00020#\u001a4\u0010C\u001a\u00020#*\u00020\u00022\u0006\u0010D\u001a\u00020\u00112\u0006\u0010!\u001a\u00020\u00022\u0006\u0010E\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\b\b\u0002\u0010\"\u001a\u00020#\u001a\u0012\u0010F\u001a\u00020\u0002*\u00020'2\u0006\u0010G\u001a\u00020\u0011\u001a$\u0010H\u001a\u00020\u0002*\u00020\u00022\u0006\u0010I\u001a\u00020=2\u0006\u0010J\u001a\u00020=2\b\b\u0002\u0010\"\u001a\u00020#\u001a$\u0010H\u001a\u00020\u0002*\u00020\u00022\u0006\u0010K\u001a\u00020\u00022\u0006\u0010L\u001a\u00020\u00022\b\b\u0002\u0010\"\u001a\u00020#\u001a$\u0010M\u001a\u00020\u0002*\u00020\u00022\u0006\u0010I\u001a\u00020=2\u0006\u0010J\u001a\u00020=2\b\b\u0002\u0010\"\u001a\u00020#\u001a$\u0010M\u001a\u00020\u0002*\u00020\u00022\u0006\u0010K\u001a\u00020\u00022\u0006\u0010L\u001a\u00020\u00022\b\b\u0002\u0010\"\u001a\u00020#\u001a\"\u0010N\u001a\b\u0012\u0004\u0012\u00020\u00020O*\u00020'2\u0006\u0010P\u001a\u00020Q2\b\b\u0002\u0010R\u001a\u00020\u0011\u001a\u001c\u0010S\u001a\u00020#*\u00020\u00022\u0006\u0010T\u001a\u00020\u00022\b\b\u0002\u0010\"\u001a\u00020#\u001a$\u0010S\u001a\u00020#*\u00020\u00022\u0006\u0010T\u001a\u00020\u00022\u0006\u0010%\u001a\u00020\u00112\b\b\u0002\u0010\"\u001a\u00020#\u001a\u0015\u0010U\u001a\u00020\u0002*\u00020\u00022\u0006\u0010%\u001a\u00020\u0011H\u0087\b\u001a\u001d\u0010U\u001a\u00020\u0002*\u00020\u00022\u0006\u0010%\u001a\u00020\u00112\u0006\u0010\u001f\u001a\u00020\u0011H\u0087\b\u001a\u0017\u0010V\u001a\u00020\r*\u00020\u00022\b\b\u0002\u0010\u000e\u001a\u00020\u000fH\u0087\b\u001a\r\u0010W\u001a\u00020\u0014*\u00020\u0002H\u0087\b\u001a3\u0010W\u001a\u00020\u0014*\u00020\u00022\u0006\u0010X\u001a\u00020\u00142\b\b\u0002\u0010Y\u001a\u00020\u00112\b\b\u0002\u0010%\u001a\u00020\u00112\b\b\u0002\u0010\u001f\u001a\u00020\u0011H\u0087\b\u001a \u0010W\u001a\u00020\u0014*\u00020\u00022\b\b\u0002\u0010%\u001a\u00020\u00112\b\b\u0002\u0010\u001f\u001a\u00020\u0011H\u0007\u001a\r\u0010Z\u001a\u00020\u0002*\u00020\u0002H\u0087\b\u001a\u0015\u0010Z\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0019H\u0087\b\u001a\u0017\u0010[\u001a\u00020Q*\u00020\u00022\b\b\u0002\u0010\\\u001a\u00020\u0011H\u0087\b\u001a\r\u0010]\u001a\u00020\u0002*\u00020\u0002H\u0087\b\u001a\u0015\u0010]\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0019H\u0087\b\u001a\r\u0010^\u001a\u00020\u0002*\u00020\u0002H\u0087\b\u001a\u0015\u0010^\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0019H\u0087\b\"%\u0010\u0000\u001a\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\b\u0012\u0004\u0012\u00020\u0002`\u0003*\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006¨\u0006_"}, d2 = {"CASE_INSENSITIVE_ORDER", "Ljava/util/Comparator;", "", "Lkotlin/Comparator;", "Lkotlin/String$Companion;", "getCASE_INSENSITIVE_ORDER", "(Lkotlin/jvm/internal/StringCompanionObject;)Ljava/util/Comparator;", "String", "stringBuffer", "Ljava/lang/StringBuffer;", "stringBuilder", "Ljava/lang/StringBuilder;", "bytes", "", "charset", "Ljava/nio/charset/Charset;", "offset", "", SentryEnvelopeItemHeader.JsonKeys.LENGTH, "chars", "", "codePoints", "", "capitalize", Device.JsonKeys.LOCALE, "Ljava/util/Locale;", "codePointAt", "index", "codePointBefore", "codePointCount", "beginIndex", SpellCheckPlugin.END_INDEX_KEY, "compareTo", "other", "ignoreCase", "", "concatToString", SpellCheckPlugin.START_INDEX_KEY, "contentEquals", "", "charSequence", "decapitalize", "decodeToString", "throwOnInvalidSequence", "encodeToByteArray", "endsWith", "suffix", "equals", "format", "args", "", "", "(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/Object;)Ljava/lang/String;", "(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;", "(Lkotlin/jvm/internal/StringCompanionObject;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;", "(Lkotlin/jvm/internal/StringCompanionObject;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;", "intern", "isBlank", "lowercase", "nativeIndexOf", "ch", "", "fromIndex", "str", "nativeLastIndexOf", "offsetByCodePoints", "codePointOffset", "regionMatches", "thisOffset", "otherOffset", "repeat", "n", "replace", "oldChar", "newChar", "oldValue", "newValue", "replaceFirst", "split", "", "regex", "Ljava/util/regex/Pattern;", "limit", "startsWith", "prefix", "substring", "toByteArray", "toCharArray", "destination", "destinationOffset", "toLowerCase", "toPattern", "flags", "toUpperCase", "uppercase", "kotlin-stdlib"}, k = 5, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_EDITOR_ABSOLUTEX, xs = "kotlin/text/StringsKt")
/* loaded from: classes3.dex */
public class StringsKt__StringsJVMKt extends StringsKt__StringNumberConversionsKt {
    private static final int nativeIndexOf(String str, char c, int i) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return str.indexOf(c, i);
    }

    private static final int nativeIndexOf(String str, String str2, int i) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(str2, "str");
        return str.indexOf(str2, i);
    }

    private static final int nativeLastIndexOf(String str, char c, int i) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return str.lastIndexOf(c, i);
    }

    private static final int nativeLastIndexOf(String str, String str2, int i) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(str2, "str");
        return str.lastIndexOf(str2, i);
    }

    public static /* synthetic */ boolean equals$default(String str, String str2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return StringsKt.equals(str, str2, z);
    }

    public static final boolean equals(String str, String str2, boolean z) {
        if (str == null) {
            return str2 == null;
        }
        if (!z) {
            return str.equals(str2);
        }
        return str.equalsIgnoreCase(str2);
    }

    public static /* synthetic */ String replace$default(String str, char c, char c2, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        return StringsKt.replace(str, c, c2, z);
    }

    public static final String replace(String str, char c, char c2, boolean z) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (!z) {
            String replace = str.replace(c, c2);
            Intrinsics.checkNotNullExpressionValue(replace, "replace(...)");
            return replace;
        }
        StringBuilder sb = new StringBuilder(str.length());
        String str2 = str;
        for (int i = 0; i < str2.length(); i++) {
            char charAt = str2.charAt(i);
            if (CharsKt.equals(charAt, c, z)) {
                charAt = c2;
            }
            sb.append(charAt);
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        return sb2;
    }

    public static /* synthetic */ String replace$default(String str, String str2, String str3, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        return StringsKt.replace(str, str2, str3, z);
    }

    public static final String replace(String str, String oldValue, String newValue, boolean z) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(oldValue, "oldValue");
        Intrinsics.checkNotNullParameter(newValue, "newValue");
        String str2 = str;
        int i = 0;
        int indexOf = StringsKt.indexOf(str2, oldValue, 0, z);
        if (indexOf < 0) {
            return str;
        }
        int length = oldValue.length();
        int coerceAtLeast = RangesKt.coerceAtLeast(length, 1);
        int length2 = (str.length() - length) + newValue.length();
        if (length2 < 0) {
            throw new OutOfMemoryError();
        }
        StringBuilder sb = new StringBuilder(length2);
        do {
            sb.append((CharSequence) str2, i, indexOf).append(newValue);
            i = indexOf + length;
            if (indexOf >= str.length()) {
                break;
            }
            indexOf = StringsKt.indexOf(str2, oldValue, indexOf + coerceAtLeast, z);
        } while (indexOf > 0);
        String sb2 = sb.append((CharSequence) str2, i, str.length()).toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        return sb2;
    }

    public static /* synthetic */ String replaceFirst$default(String str, char c, char c2, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        return StringsKt.replaceFirst(str, c, c2, z);
    }

    public static final String replaceFirst(String str, char c, char c2, boolean z) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        String str2 = str;
        int indexOf$default = StringsKt.indexOf$default(str2, c, 0, z, 2, (Object) null);
        return indexOf$default < 0 ? str : StringsKt.replaceRange((CharSequence) str2, indexOf$default, indexOf$default + 1, (CharSequence) String.valueOf(c2)).toString();
    }

    public static /* synthetic */ String replaceFirst$default(String str, String str2, String str3, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        return StringsKt.replaceFirst(str, str2, str3, z);
    }

    public static final String replaceFirst(String str, String oldValue, String newValue, boolean z) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(oldValue, "oldValue");
        Intrinsics.checkNotNullParameter(newValue, "newValue");
        String str2 = str;
        int indexOf$default = StringsKt.indexOf$default(str2, oldValue, 0, z, 2, (Object) null);
        return indexOf$default < 0 ? str : StringsKt.replaceRange((CharSequence) str2, indexOf$default, oldValue.length() + indexOf$default, (CharSequence) newValue).toString();
    }

    @Deprecated(message = "Use uppercase() instead.", replaceWith = @ReplaceWith(expression = "uppercase(Locale.getDefault())", imports = {"java.util.Locale"}))
    @DeprecatedSinceKotlin(warningSince = "1.5")
    private static final String toUpperCase(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        String upperCase = str.toUpperCase();
        Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
        return upperCase;
    }

    private static final String uppercase(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        String upperCase = str.toUpperCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
        return upperCase;
    }

    @Deprecated(message = "Use lowercase() instead.", replaceWith = @ReplaceWith(expression = "lowercase(Locale.getDefault())", imports = {"java.util.Locale"}))
    @DeprecatedSinceKotlin(warningSince = "1.5")
    private static final String toLowerCase(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        String lowerCase = str.toLowerCase();
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        return lowerCase;
    }

    private static final String lowercase(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        String lowerCase = str.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        return lowerCase;
    }

    public static final String concatToString(char[] cArr) {
        Intrinsics.checkNotNullParameter(cArr, "<this>");
        return new String(cArr);
    }

    public static /* synthetic */ String concatToString$default(char[] cArr, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = cArr.length;
        }
        return StringsKt.concatToString(cArr, i, i2);
    }

    public static final String concatToString(char[] cArr, int i, int i2) {
        Intrinsics.checkNotNullParameter(cArr, "<this>");
        AbstractList.INSTANCE.checkBoundsIndexes$kotlin_stdlib(i, i2, cArr.length);
        return new String(cArr, i, i2 - i);
    }

    public static /* synthetic */ char[] toCharArray$default(String str, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = str.length();
        }
        return StringsKt.toCharArray(str, i, i2);
    }

    public static final char[] toCharArray(String str, int i, int i2) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        AbstractList.INSTANCE.checkBoundsIndexes$kotlin_stdlib(i, i2, str.length());
        char[] cArr = new char[i2 - i];
        str.getChars(i, i2, cArr, 0);
        return cArr;
    }

    public static final String decodeToString(byte[] bArr) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        return new String(bArr, Charsets.UTF_8);
    }

    public static /* synthetic */ String decodeToString$default(byte[] bArr, int i, int i2, boolean z, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = bArr.length;
        }
        if ((i3 & 4) != 0) {
            z = false;
        }
        return StringsKt.decodeToString(bArr, i, i2, z);
    }

    public static final String decodeToString(byte[] bArr, int i, int i2, boolean z) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        AbstractList.INSTANCE.checkBoundsIndexes$kotlin_stdlib(i, i2, bArr.length);
        if (!z) {
            return new String(bArr, i, i2 - i, Charsets.UTF_8);
        }
        String charBuffer = Charsets.UTF_8.newDecoder().onMalformedInput(CodingErrorAction.REPORT).onUnmappableCharacter(CodingErrorAction.REPORT).decode(ByteBuffer.wrap(bArr, i, i2 - i)).toString();
        Intrinsics.checkNotNullExpressionValue(charBuffer, "toString(...)");
        return charBuffer;
    }

    public static final byte[] encodeToByteArray(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        byte[] bytes = str.getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
        return bytes;
    }

    public static /* synthetic */ byte[] encodeToByteArray$default(String str, int i, int i2, boolean z, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = str.length();
        }
        if ((i3 & 4) != 0) {
            z = false;
        }
        return StringsKt.encodeToByteArray(str, i, i2, z);
    }

    public static final byte[] encodeToByteArray(String str, int i, int i2, boolean z) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        AbstractList.INSTANCE.checkBoundsIndexes$kotlin_stdlib(i, i2, str.length());
        if (!z) {
            String substring = str.substring(i, i2);
            Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
            Charset charset = Charsets.UTF_8;
            Intrinsics.checkNotNull(substring, "null cannot be cast to non-null type java.lang.String");
            byte[] bytes = substring.getBytes(charset);
            Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
            return bytes;
        }
        ByteBuffer encode = Charsets.UTF_8.newEncoder().onMalformedInput(CodingErrorAction.REPORT).onUnmappableCharacter(CodingErrorAction.REPORT).encode(CharBuffer.wrap(str, i, i2));
        if (encode.hasArray() && encode.arrayOffset() == 0) {
            int remaining = encode.remaining();
            byte[] array = encode.array();
            Intrinsics.checkNotNull(array);
            if (remaining == array.length) {
                byte[] array2 = encode.array();
                Intrinsics.checkNotNull(array2);
                return array2;
            }
        }
        byte[] bArr = new byte[encode.remaining()];
        encode.get(bArr);
        return bArr;
    }

    private static final char[] toCharArray(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        char[] charArray = str.toCharArray();
        Intrinsics.checkNotNullExpressionValue(charArray, "toCharArray(...)");
        return charArray;
    }

    static /* synthetic */ char[] toCharArray$default(String str, char[] destination, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i = 0;
        }
        if ((i4 & 4) != 0) {
            i2 = 0;
        }
        if ((i4 & 8) != 0) {
            i3 = str.length();
        }
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(destination, "destination");
        str.getChars(i2, i3, destination, i);
        return destination;
    }

    private static final char[] toCharArray(String str, char[] destination, int i, int i2, int i3) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(destination, "destination");
        str.getChars(i2, i3, destination, i);
        return destination;
    }

    private static final String format(String str, Object... args) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(args, "args");
        String format = String.format(str, Arrays.copyOf(args, args.length));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        return format;
    }

    private static final String format(StringCompanionObject stringCompanionObject, String format, Object... args) {
        Intrinsics.checkNotNullParameter(stringCompanionObject, "<this>");
        Intrinsics.checkNotNullParameter(format, "format");
        Intrinsics.checkNotNullParameter(args, "args");
        String format2 = String.format(format, Arrays.copyOf(args, args.length));
        Intrinsics.checkNotNullExpressionValue(format2, "format(...)");
        return format2;
    }

    private static final String format(String str, Locale locale, Object... args) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(args, "args");
        String format = String.format(locale, str, Arrays.copyOf(args, args.length));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        return format;
    }

    private static final String format(StringCompanionObject stringCompanionObject, Locale locale, String format, Object... args) {
        Intrinsics.checkNotNullParameter(stringCompanionObject, "<this>");
        Intrinsics.checkNotNullParameter(format, "format");
        Intrinsics.checkNotNullParameter(args, "args");
        String format2 = String.format(locale, format, Arrays.copyOf(args, args.length));
        Intrinsics.checkNotNullExpressionValue(format2, "format(...)");
        return format2;
    }

    public static /* synthetic */ List split$default(CharSequence charSequence, Pattern pattern, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return StringsKt.split(charSequence, pattern, i);
    }

    public static final List<String> split(CharSequence charSequence, Pattern regex, int i) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(regex, "regex");
        StringsKt.requireNonNegativeLimit(i);
        if (i == 0) {
            i = -1;
        }
        String[] split = regex.split(charSequence, i);
        Intrinsics.checkNotNullExpressionValue(split, "split(...)");
        return ArraysKt.asList(split);
    }

    private static final String substring(String str, int i) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        String substring = str.substring(i);
        Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
        return substring;
    }

    private static final String substring(String str, int i, int i2) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        String substring = str.substring(i, i2);
        Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
        return substring;
    }

    public static /* synthetic */ boolean startsWith$default(String str, String str2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return StringsKt.startsWith(str, str2, z);
    }

    public static final boolean startsWith(String str, String prefix, boolean z) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        if (!z) {
            return str.startsWith(prefix);
        }
        return StringsKt.regionMatches(str, 0, prefix, 0, prefix.length(), z);
    }

    public static /* synthetic */ boolean startsWith$default(String str, String str2, int i, boolean z, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            z = false;
        }
        return StringsKt.startsWith(str, str2, i, z);
    }

    public static final boolean startsWith(String str, String prefix, int i, boolean z) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        if (!z) {
            return str.startsWith(prefix, i);
        }
        return StringsKt.regionMatches(str, i, prefix, 0, prefix.length(), z);
    }

    public static /* synthetic */ boolean endsWith$default(String str, String str2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return StringsKt.endsWith(str, str2, z);
    }

    public static final boolean endsWith(String str, String suffix, boolean z) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(suffix, "suffix");
        if (!z) {
            return str.endsWith(suffix);
        }
        return StringsKt.regionMatches(str, str.length() - suffix.length(), suffix, 0, suffix.length(), true);
    }

    private static final String String(byte[] bytes, int i, int i2, Charset charset) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        Intrinsics.checkNotNullParameter(charset, "charset");
        return new String(bytes, i, i2, charset);
    }

    private static final String String(byte[] bytes, Charset charset) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        Intrinsics.checkNotNullParameter(charset, "charset");
        return new String(bytes, charset);
    }

    private static final String String(byte[] bytes, int i, int i2) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        return new String(bytes, i, i2, Charsets.UTF_8);
    }

    private static final String String(byte[] bytes) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        return new String(bytes, Charsets.UTF_8);
    }

    private static final String String(char[] chars) {
        Intrinsics.checkNotNullParameter(chars, "chars");
        return new String(chars);
    }

    private static final String String(char[] chars, int i, int i2) {
        Intrinsics.checkNotNullParameter(chars, "chars");
        return new String(chars, i, i2);
    }

    private static final String String(int[] codePoints, int i, int i2) {
        Intrinsics.checkNotNullParameter(codePoints, "codePoints");
        return new String(codePoints, i, i2);
    }

    private static final String String(StringBuffer stringBuffer) {
        Intrinsics.checkNotNullParameter(stringBuffer, "stringBuffer");
        return new String(stringBuffer);
    }

    private static final String String(StringBuilder stringBuilder) {
        Intrinsics.checkNotNullParameter(stringBuilder, "stringBuilder");
        return new String(stringBuilder);
    }

    private static final int codePointAt(String str, int i) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return str.codePointAt(i);
    }

    private static final int codePointBefore(String str, int i) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return str.codePointBefore(i);
    }

    private static final int codePointCount(String str, int i, int i2) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return str.codePointCount(i, i2);
    }

    public static /* synthetic */ int compareTo$default(String str, String str2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return StringsKt.compareTo(str, str2, z);
    }

    public static final int compareTo(String str, String other, boolean z) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        if (z) {
            return str.compareToIgnoreCase(other);
        }
        return str.compareTo(other);
    }

    private static final boolean contentEquals(String str, CharSequence charSequence) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(charSequence, "charSequence");
        return str.contentEquals(charSequence);
    }

    private static final boolean contentEquals(String str, StringBuffer stringBuilder) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(stringBuilder, "stringBuilder");
        return str.contentEquals(stringBuilder);
    }

    public static final boolean contentEquals(CharSequence charSequence, CharSequence charSequence2) {
        if ((charSequence instanceof String) && charSequence2 != null) {
            return ((String) charSequence).contentEquals(charSequence2);
        }
        return StringsKt.contentEqualsImpl(charSequence, charSequence2);
    }

    public static final boolean contentEquals(CharSequence charSequence, CharSequence charSequence2, boolean z) {
        if (z) {
            return StringsKt.contentEqualsIgnoreCaseImpl(charSequence, charSequence2);
        }
        return StringsKt.contentEquals(charSequence, charSequence2);
    }

    private static final String intern(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        String intern = str.intern();
        Intrinsics.checkNotNullExpressionValue(intern, "intern(...)");
        return intern;
    }

    public static final boolean isBlank(CharSequence charSequence) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        if (charSequence.length() != 0) {
            Iterable indices = StringsKt.getIndices(charSequence);
            if (!(indices instanceof Collection) || !((Collection) indices).isEmpty()) {
                Iterator it = indices.iterator();
                while (it.hasNext()) {
                    if (!CharsKt.isWhitespace(charSequence.charAt(((IntIterator) it).nextInt()))) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    private static final int offsetByCodePoints(String str, int i, int i2) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return str.offsetByCodePoints(i, i2);
    }

    public static /* synthetic */ boolean regionMatches$default(CharSequence charSequence, int i, CharSequence charSequence2, int i2, int i3, boolean z, int i4, Object obj) {
        if ((i4 & 16) != 0) {
            z = false;
        }
        return StringsKt.regionMatches(charSequence, i, charSequence2, i2, i3, z);
    }

    public static final boolean regionMatches(CharSequence charSequence, int i, CharSequence other, int i2, int i3, boolean z) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        if ((charSequence instanceof String) && (other instanceof String)) {
            return StringsKt.regionMatches((String) charSequence, i, (String) other, i2, i3, z);
        }
        return StringsKt.regionMatchesImpl(charSequence, i, other, i2, i3, z);
    }

    public static /* synthetic */ boolean regionMatches$default(String str, int i, String str2, int i2, int i3, boolean z, int i4, Object obj) {
        if ((i4 & 16) != 0) {
            z = false;
        }
        return StringsKt.regionMatches(str, i, str2, i2, i3, z);
    }

    public static final boolean regionMatches(String str, int i, String other, int i2, int i3, boolean z) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        if (!z) {
            return str.regionMatches(i, other, i2, i3);
        }
        return str.regionMatches(z, i, other, i2, i3);
    }

    @Deprecated(message = "Use lowercase() instead.", replaceWith = @ReplaceWith(expression = "lowercase(locale)", imports = {}))
    @DeprecatedSinceKotlin(warningSince = "1.5")
    private static final String toLowerCase(String str, Locale locale) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(locale, "locale");
        String lowerCase = str.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        return lowerCase;
    }

    private static final String lowercase(String str, Locale locale) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(locale, "locale");
        String lowerCase = str.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        return lowerCase;
    }

    @Deprecated(message = "Use uppercase() instead.", replaceWith = @ReplaceWith(expression = "uppercase(locale)", imports = {}))
    @DeprecatedSinceKotlin(warningSince = "1.5")
    private static final String toUpperCase(String str, Locale locale) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(locale, "locale");
        String upperCase = str.toUpperCase(locale);
        Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
        return upperCase;
    }

    private static final String uppercase(String str, Locale locale) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(locale, "locale");
        String upperCase = str.toUpperCase(locale);
        Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
        return upperCase;
    }

    private static final byte[] toByteArray(String str, Charset charset) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(charset, "charset");
        byte[] bytes = str.getBytes(charset);
        Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
        return bytes;
    }

    static /* synthetic */ byte[] toByteArray$default(String str, Charset charset, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(charset, "charset");
        byte[] bytes = str.getBytes(charset);
        Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
        return bytes;
    }

    static /* synthetic */ Pattern toPattern$default(String str, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        Intrinsics.checkNotNullParameter(str, "<this>");
        Pattern compile = Pattern.compile(str, i);
        Intrinsics.checkNotNullExpressionValue(compile, "compile(...)");
        return compile;
    }

    private static final Pattern toPattern(String str, int i) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Pattern compile = Pattern.compile(str, i);
        Intrinsics.checkNotNullExpressionValue(compile, "compile(...)");
        return compile;
    }

    @Deprecated(message = "Use replaceFirstChar instead.", replaceWith = @ReplaceWith(expression = "replaceFirstChar { if (it.isLowerCase()) it.titlecase(Locale.getDefault()) else it.toString() }", imports = {"java.util.Locale"}))
    @DeprecatedSinceKotlin(warningSince = "1.5")
    public static final String capitalize(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Locale locale = Locale.getDefault();
        Intrinsics.checkNotNullExpressionValue(locale, "getDefault(...)");
        return StringsKt.capitalize(str, locale);
    }

    @Deprecated(message = "Use replaceFirstChar instead.", replaceWith = @ReplaceWith(expression = "replaceFirstChar { if (it.isLowerCase()) it.titlecase(locale) else it.toString() }", imports = {}))
    @DeprecatedSinceKotlin(warningSince = "1.5")
    public static final String capitalize(String str, Locale locale) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(locale, "locale");
        if (str.length() <= 0) {
            return str;
        }
        char charAt = str.charAt(0);
        if (!Character.isLowerCase(charAt)) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        char titleCase = Character.toTitleCase(charAt);
        if (titleCase != Character.toUpperCase(charAt)) {
            sb.append(titleCase);
        } else {
            String substring = str.substring(0, 1);
            Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
            Intrinsics.checkNotNull(substring, "null cannot be cast to non-null type java.lang.String");
            String upperCase = substring.toUpperCase(locale);
            Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
            sb.append(upperCase);
        }
        String substring2 = str.substring(1);
        Intrinsics.checkNotNullExpressionValue(substring2, "substring(...)");
        sb.append(substring2);
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        return sb2;
    }

    @Deprecated(message = "Use replaceFirstChar instead.", replaceWith = @ReplaceWith(expression = "replaceFirstChar { it.lowercase(Locale.getDefault()) }", imports = {"java.util.Locale"}))
    @DeprecatedSinceKotlin(warningSince = "1.5")
    public static final String decapitalize(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (str.length() <= 0 || Character.isLowerCase(str.charAt(0))) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        String substring = str.substring(0, 1);
        Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
        Intrinsics.checkNotNull(substring, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = substring.toLowerCase();
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        StringBuilder append = sb.append(lowerCase);
        String substring2 = str.substring(1);
        Intrinsics.checkNotNullExpressionValue(substring2, "substring(...)");
        return append.append(substring2).toString();
    }

    @Deprecated(message = "Use replaceFirstChar instead.", replaceWith = @ReplaceWith(expression = "replaceFirstChar { it.lowercase(locale) }", imports = {}))
    @DeprecatedSinceKotlin(warningSince = "1.5")
    public static final String decapitalize(String str, Locale locale) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(locale, "locale");
        if (str.length() <= 0 || Character.isLowerCase(str.charAt(0))) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        String substring = str.substring(0, 1);
        Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
        Intrinsics.checkNotNull(substring, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = substring.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        StringBuilder append = sb.append(lowerCase);
        String substring2 = str.substring(1);
        Intrinsics.checkNotNullExpressionValue(substring2, "substring(...)");
        return append.append(substring2).toString();
    }

    /* JADX WARN: Type inference failed for: r4v3, types: [kotlin.collections.IntIterator] */
    public static final String repeat(CharSequence charSequence, int i) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        if (i < 0) {
            throw new IllegalArgumentException(("Count 'n' must be non-negative, but was " + i + '.').toString());
        }
        if (i == 0) {
            return "";
        }
        if (i == 1) {
            return charSequence.toString();
        }
        int length = charSequence.length();
        if (length == 0) {
            return "";
        }
        if (length == 1) {
            char charAt = charSequence.charAt(0);
            char[] cArr = new char[i];
            for (int i2 = 0; i2 < i; i2++) {
                cArr[i2] = charAt;
            }
            return new String(cArr);
        }
        StringBuilder sb = new StringBuilder(charSequence.length() * i);
        ?? it = new IntRange(1, i).iterator();
        while (it.hasNext()) {
            it.nextInt();
            sb.append(charSequence);
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNull(sb2);
        return sb2;
    }

    public static final Comparator<String> getCASE_INSENSITIVE_ORDER(StringCompanionObject stringCompanionObject) {
        Intrinsics.checkNotNullParameter(stringCompanionObject, "<this>");
        Comparator<String> CASE_INSENSITIVE_ORDER = String.CASE_INSENSITIVE_ORDER;
        Intrinsics.checkNotNullExpressionValue(CASE_INSENSITIVE_ORDER, "CASE_INSENSITIVE_ORDER");
        return CASE_INSENSITIVE_ORDER;
    }
}
