package tech.rabbit.common.utils;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import io.sentry.protocol.ViewHierarchyNode;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import kotlin.ExceptionsKt;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import tech.rabbit.common.utils.RLog;

/* compiled from: RLog.kt */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001(B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0004H\u0007J\u0018\u0010\u001e\u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u0004H\u0007J\u0010\u0010\"\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0004H\u0007J\u0018\u0010\"\u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u0004H\u0007J$\u0010\"\u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u00042\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010#H\u0007J\u0010\u0010$\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0004H\u0007J\u0018\u0010$\u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u0004H\u0007J\u0010\u0010%\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0004H\u0007J\u0018\u0010%\u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u0004H\u0007J,\u0010&\u001a\u00020\u001f2\u0006\u0010'\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u00042\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010#H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00078\u0002X\u0083\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\b\u001a\u00020\t8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u000e\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0011\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0010R\u0011\u0010\u0013\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0010R\u0011\u0010\u0015\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0010R\u0011\u0010\u0017\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0010R\u001b\u0010\u0019\u001a\u00020\u001a8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\r\u001a\u0004\b\u001b\u0010\u001c¨\u0006)"}, d2 = {"Ltech/rabbit/common/utils/RLog;", "", "()V", "crashMsgTag", "", "dLogTag", "dateFormat", "Ljava/text/SimpleDateFormat;", "pid", "", "getPid", "()I", "pid$delegate", "Lkotlin/Lazy;", "splitD", "getSplitD", "()Ljava/lang/String;", "splitE", "getSplitE", "splitI", "getSplitI", "splitSpace", "getSplitSpace", "splitW", "getSplitW", "writeLog2File", "Ltech/rabbit/common/utils/RLog$WriteLog2FileThread;", "getWriteLog2File", "()Ltech/rabbit/common/utils/RLog$WriteLog2FileThread;", "writeLog2File$delegate", "d", "", NotificationCompat.CATEGORY_MESSAGE, ViewHierarchyNode.JsonKeys.TAG, "e", "", CmcdHeadersFactory.OBJECT_TYPE_INIT_SEGMENT, "w", "writeLog", "levelSplit", "WriteLog2FileThread", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class RLog {
    public static final RLog INSTANCE = new RLog();
    public static final String crashMsgTag = "Rabbit Crash Exception";
    private static final String dLogTag = "Rabbit";
    private static final SimpleDateFormat dateFormat;

    /* renamed from: pid$delegate, reason: from kotlin metadata */
    private static final Lazy pid;
    private static final String splitD;
    private static final String splitE;
    private static final String splitI;
    private static final String splitSpace;
    private static final String splitW;

    /* renamed from: writeLog2File$delegate, reason: from kotlin metadata */
    private static final Lazy writeLog2File;

    public final String getSplitD() {
        return splitD;
    }

    public final String getSplitE() {
        return splitE;
    }

    public final String getSplitI() {
        return splitI;
    }

    public final String getSplitSpace() {
        return splitSpace;
    }

    public final String getSplitW() {
        return splitW;
    }

    private RLog() {
    }

    static {
        String str = new String(new char[]{1});
        splitSpace = str;
        splitI = " " + str + "I ";
        splitD = str + "D ";
        splitW = str + 'W';
        splitE = str + "E ";
        dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.getDefault());
        writeLog2File = LazyKt.lazy(new Function0<WriteLog2FileThread>() { // from class: tech.rabbit.common.utils.RLog$writeLog2File$2
            @Override // kotlin.jvm.functions.Function0
            public final RLog.WriteLog2FileThread invoke() {
                HandlerThread handlerThread = new HandlerThread("LogThread");
                handlerThread.start();
                Looper looper = handlerThread.getLooper();
                Intrinsics.checkNotNullExpressionValue(looper, "getLooper(...)");
                return new RLog.WriteLog2FileThread(looper);
            }
        });
        pid = LazyKt.lazy(new Function0<Integer>() { // from class: tech.rabbit.common.utils.RLog$pid$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Integer invoke() {
                return Integer.valueOf(Process.myPid());
            }
        });
    }

    private final WriteLog2FileThread getWriteLog2File() {
        return (WriteLog2FileThread) writeLog2File.getValue();
    }

    public final int getPid() {
        return ((Number) pid.getValue()).intValue();
    }

    @JvmStatic
    public static final void i(String msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        Log.i(dLogTag, msg);
        writeLog$default(INSTANCE, splitI, "", msg, null, 8, null);
    }

    @JvmStatic
    public static final void i(String tag, String msg) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(msg, "msg");
        Log.i(dLogTag, tag + " , " + msg);
        writeLog$default(INSTANCE, splitI, tag, msg, null, 8, null);
    }

    @JvmStatic
    public static final void d(String msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        Log.d(dLogTag, msg);
        writeLog$default(INSTANCE, splitD, "", msg, null, 8, null);
    }

    @JvmStatic
    public static final void d(String tag, String msg) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(msg, "msg");
        Log.i(dLogTag, tag + " , " + msg);
        writeLog$default(INSTANCE, splitD, tag, msg, null, 8, null);
    }

    @JvmStatic
    public static final void w(String msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        w(dLogTag, msg);
    }

    @JvmStatic
    public static final void w(String tag, String msg) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(msg, "msg");
        Log.w(dLogTag, tag + " , " + msg);
        writeLog$default(INSTANCE, splitW, tag, msg, null, 8, null);
    }

    @JvmStatic
    public static final void e(String msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        e(dLogTag, msg);
    }

    @JvmStatic
    public static final void e(String tag, String msg) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(msg, "msg");
        Log.e(dLogTag, tag + " , " + msg);
        writeLog$default(INSTANCE, splitE, tag, msg, null, 8, null);
    }

    public static /* synthetic */ void e$default(String str, String str2, Throwable th, int i, Object obj) {
        if ((i & 4) != 0) {
            th = null;
        }
        e(str, str2, th);
    }

    @JvmStatic
    public static final void e(String tag, String msg, Throwable e) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(msg, "msg");
        Log.e(dLogTag, tag + " , " + msg, e);
        INSTANCE.writeLog(splitE, tag, msg, e);
    }

    static /* synthetic */ void writeLog$default(RLog rLog, String str, String str2, String str3, Throwable th, int i, Object obj) {
        if ((i & 8) != 0) {
            th = null;
        }
        rLog.writeLog(str, str2, str3, th);
    }

    private final void writeLog(String levelSplit, String tag, String msg, Throwable e) {
        String str = dateFormat.format(new Date()) + splitSpace + getPid() + '-' + Process.myTid() + ' ' + levelSplit + ": ";
        if (tag.length() > 0) {
            str = str + tag + " , ";
        }
        if (msg.length() > 0) {
            str = str + msg;
        }
        if (e != null) {
            str = str + "\n " + StringsKt.replace$default(ExceptionsKt.stackTraceToString(e), "E:", splitE, false, 4, (Object) null);
        }
        getWriteLog2File().write(str + '\n');
    }

    /* compiled from: RLog.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u000e\u0010\u000f\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0010R\u001d\u0010\u0005\u001a\u0004\u0018\u00010\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\b¨\u0006\u0011"}, d2 = {"Ltech/rabbit/common/utils/RLog$WriteLog2FileThread;", "Landroid/os/Handler;", "looper", "Landroid/os/Looper;", "(Landroid/os/Looper;)V", "logFile", "Ljava/io/BufferedWriter;", "getLogFile", "()Ljava/io/BufferedWriter;", "logFile$delegate", "Lkotlin/Lazy;", "handleMessage", "", NotificationCompat.CATEGORY_MESSAGE, "Landroid/os/Message;", "write", "", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class WriteLog2FileThread extends Handler {

        /* renamed from: logFile$delegate, reason: from kotlin metadata */
        private final Lazy logFile;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public WriteLog2FileThread(Looper looper) {
            super(looper);
            Intrinsics.checkNotNullParameter(looper, "looper");
            this.logFile = LazyKt.lazy(new Function0<BufferedWriter>() { // from class: tech.rabbit.common.utils.RLog$WriteLog2FileThread$logFile$2
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final BufferedWriter invoke() {
                    BufferedWriter bufferedWriter = null;
                    try {
                        StringBuilder sb = new StringBuilder();
                        File externalFilesDir = RabbitCommon.INSTANCE.getSContext().getExternalFilesDir(null);
                        File file = new File(sb.append(externalFilesDir != null ? externalFilesDir.getAbsolutePath() : null).append("/logs/").toString());
                        if (!file.exists()) {
                            file.mkdirs();
                        }
                        File file2 = new File(file, new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault()).format(new Date()) + ".log");
                        if (!file2.exists()) {
                            file2.createNewFile();
                        }
                        bufferedWriter = new BufferedWriter(new FileWriter(file2, true));
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    if (bufferedWriter == null) {
                        RLog.e("log file create fail");
                    }
                    return bufferedWriter;
                }
            });
        }

        private final BufferedWriter getLogFile() {
            return (BufferedWriter) this.logFile.getValue();
        }

        public final void write(String msg) {
            Intrinsics.checkNotNullParameter(msg, "msg");
            Message obtain = Message.obtain();
            obtain.obj = msg;
            sendMessage(obtain);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            Intrinsics.checkNotNullParameter(msg, "msg");
            try {
                BufferedWriter logFile = getLogFile();
                if (logFile != null) {
                    logFile.write(msg.obj.toString());
                }
                BufferedWriter logFile2 = getLogFile();
                if (logFile2 != null) {
                    logFile2.flush();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
