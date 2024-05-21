package okhttp3.internal.http;

import io.sentry.protocol.TransactionInfo;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.MediaType;
import okhttp3.ResponseBody;
import okio.BufferedSource;

/* compiled from: RealResponseBody.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\b\u0010\u0004\u001a\u00020\u0005H\u0016J\n\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\b\u0010\u0006\u001a\u00020\u0007H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lokhttp3/internal/http/RealResponseBody;", "Lokhttp3/ResponseBody;", "contentTypeString", "", "contentLength", "", TransactionInfo.JsonKeys.SOURCE, "Lokio/BufferedSource;", "(Ljava/lang/String;JLokio/BufferedSource;)V", "contentType", "Lokhttp3/MediaType;", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class RealResponseBody extends ResponseBody {
    private final long contentLength;
    private final String contentTypeString;
    private final BufferedSource source;

    @Override // okhttp3.ResponseBody
    /* renamed from: contentLength, reason: from getter */
    public long getContentLength() {
        return this.contentLength;
    }

    @Override // okhttp3.ResponseBody
    /* renamed from: source, reason: from getter */
    public BufferedSource getSource() {
        return this.source;
    }

    public RealResponseBody(String str, long j, BufferedSource source) {
        Intrinsics.checkNotNullParameter(source, "source");
        this.contentTypeString = str;
        this.contentLength = j;
        this.source = source;
    }

    @Override // okhttp3.ResponseBody
    /* renamed from: contentType */
    public MediaType get$contentType() {
        String str = this.contentTypeString;
        if (str != null) {
            return MediaType.INSTANCE.parse(str);
        }
        return null;
    }
}
