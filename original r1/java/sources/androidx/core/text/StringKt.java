package androidx.core.text;

import android.text.TextUtils;
import kotlin.Metadata;

/* compiled from: String.kt */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0001H\u0086\b¨\u0006\u0002"}, d2 = {"htmlEncode", "", "core-ktx_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class StringKt {
    public static final String htmlEncode(String str) {
        return TextUtils.htmlEncode(str);
    }
}
