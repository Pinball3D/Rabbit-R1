package okio;

import io.sentry.ProfilingTraceData;
import java.io.IOException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: JvmOkio.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0012\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0014J\b\u0010\b\u001a\u00020\tH\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lokio/SocketAsyncTimeout;", "Lokio/AsyncTimeout;", "socket", "Ljava/net/Socket;", "(Ljava/net/Socket;)V", "newTimeoutException", "Ljava/io/IOException;", "cause", "timedOut", "", "okio"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class SocketAsyncTimeout extends AsyncTimeout {
    private final Socket socket;

    public SocketAsyncTimeout(Socket socket) {
        Intrinsics.checkNotNullParameter(socket, "socket");
        this.socket = socket;
    }

    @Override // okio.AsyncTimeout
    protected IOException newTimeoutException(IOException cause) {
        SocketTimeoutException socketTimeoutException = new SocketTimeoutException(ProfilingTraceData.TRUNCATION_REASON_TIMEOUT);
        if (cause != null) {
            socketTimeoutException.initCause(cause);
        }
        return socketTimeoutException;
    }

    @Override // okio.AsyncTimeout
    protected void timedOut() {
        Logger logger;
        Logger logger2;
        try {
            this.socket.close();
        } catch (AssertionError e) {
            if (Okio.isAndroidGetsocknameError(e)) {
                logger2 = Okio__JvmOkioKt.logger;
                logger2.log(Level.WARNING, "Failed to close timed out socket " + this.socket, (Throwable) e);
                return;
            }
            throw e;
        } catch (Exception e2) {
            logger = Okio__JvmOkioKt.logger;
            logger.log(Level.WARNING, "Failed to close timed out socket " + this.socket, (Throwable) e2);
        }
    }
}
