package tech.rabbit.common.utils;

import android.os.DeadObjectException;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.exifinterface.media.ExifInterface;
import androidx.work.Data;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import defpackage.DeviceControl$Companion$$ExternalSyntheticLambda4;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.zip.Deflater;
import java.util.zip.Inflater;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;

/* compiled from: KotlinUtil.kt */
@Metadata(d1 = {"\u0000¸\u0001\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0010%\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a.\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u00152\u0018\u0010\u0017\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u0016\u0018\u00010\u0018\u001a'\u0010\u0019\u001a\u0004\u0018\u0001H\u001a\"\u0004\b\u0000\u0010\u001a2\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u0002H\u001a0\u001cH\u0086\bø\u0001\u0000¢\u0006\u0002\u0010\u001d\u001a1\u0010\u001e\u001a\u0004\u0018\u0001H\u001a\"\u0004\b\u0000\u0010\u001a2\b\b\u0002\u0010\u001f\u001a\u00020 2\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u0002H\u001a0\u001cH\u0086\bø\u0001\u0000¢\u0006\u0002\u0010!\u001a\u0011\u0010\"\u001a\n #*\u0004\u0018\u00010\t0\tH\u0086\b\u001a\u000e\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020%\u001a\u000e\u0010'\u001a\u00020\t2\u0006\u0010(\u001a\u00020%\u001a¯\u0001\u0010)\u001a\"\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u0002H\u001a\u0018\u00010*j\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u0002H\u001a\u0018\u0001`+\"\u0004\b\u0000\u0010\u001a2\u0014\u0010,\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u00182k\b\u0002\u0010-\u001ae\u0012\u0013\u0012\u00110\t¢\u0006\f\b/\u0012\b\b0\u0012\u0004\b\b(1\u0012\u0013\u0012\u0011H\u001a¢\u0006\f\b/\u0012\b\b0\u0012\u0004\b\b(2\u0012/\u0012-\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u0002H\u001a0*j\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u0002H\u001a`+¢\u0006\f\b/\u0012\b\b0\u0012\u0004\b\b(3\u0012\u0004\u0012\u000204\u0018\u00010.\u001a:\u00105\u001a\u0010\u0012\u0004\u0012\u0002H6\u0012\u0004\u0012\u0002H7\u0018\u00010\u0015\"\u0004\b\u0000\u00106\"\u0004\b\u0001\u001072\u0018\u0010\u0017\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u0016\u0018\u00010\u0018\u001a-\u00108\u001a\u0004\u0018\u00010 2\u0010\b\u0004\u0010\u001b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u001c2\u0006\u00109\u001a\u00020%H\u0086\bø\u0001\u0000¢\u0006\u0002\u0010:\u001a\u001e\u0010;\u001a\u0002042\u0006\u00109\u001a\u00020%2\u000e\u0010\u001b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u001c\u001a\u0016\u0010<\u001a\u0002042\u000e\u0010\u001b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u001c\u001a\u0016\u0010=\u001a\u0002042\u000e\u0010\u001b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u001c\u001a\u0010\u0010>\u001a\u0004\u0018\u00010\t2\u0006\u0010?\u001a\u00020\t\u001a\u0012\u0010@\u001a\u00020\n*\u00020\n2\u0006\u0010A\u001a\u00020\t\u001a\n\u0010B\u001a\u000204*\u00020\n\u001aC\u0010C\u001a\u00020%*\u00020D2\u0006\u0010E\u001a\u00020F2\b\b\u0002\u0010G\u001a\u00020\u00012%\b\u0002\u0010H\u001a\u001f\u0012\u0013\u0012\u00110%¢\u0006\f\b/\u0012\b\b0\u0012\u0004\b\b(J\u0012\u0004\u0012\u000204\u0018\u00010I\u001a\n\u0010K\u001a\u000204*\u00020\n\u001a1\u0010L\u001a\u0004\u0018\u00010 \"\u0004\b\u0000\u00106\"\u0004\b\u0001\u00107*\u000e\u0012\u0004\u0012\u0002H6\u0012\u0004\u0012\u0002H70\u00182\u0006\u0010M\u001a\u0002H6¢\u0006\u0002\u0010N\u001a1\u0010O\u001a\u0004\u0018\u00010\u0001\"\u0004\b\u0000\u00106\"\u0004\b\u0001\u00107*\u000e\u0012\u0004\u0012\u0002H6\u0012\u0004\u0012\u0002H70\u00182\u0006\u0010M\u001a\u0002H6¢\u0006\u0002\u0010P\u001a1\u0010Q\u001a\u0004\u0018\u00010%\"\u0004\b\u0000\u00106\"\u0004\b\u0001\u00107*\u000e\u0012\u0004\u0012\u0002H6\u0012\u0004\u0012\u0002H70\u00182\u0006\u0010M\u001a\u0002H6¢\u0006\u0002\u0010R\u001a1\u0010S\u001a\u0004\u0018\u00010\t\"\u0004\b\u0000\u00106\"\u0004\b\u0001\u00107*\u000e\u0012\u0004\u0012\u0002H6\u0012\u0004\u0012\u0002H70\u00182\u0006\u0010M\u001a\u0002H6¢\u0006\u0002\u0010T\u001a\u0018\u0010U\u001a\u00020 *\u00020\t2\f\u0010V\u001a\b\u0012\u0004\u0012\u0002040\u001c\u001a\n\u0010W\u001a\u00020\t*\u00020\n\u001a\n\u0010W\u001a\u00020\t*\u00020\t\u001a\n\u0010X\u001a\u00020Y*\u00020\n\u001a\n\u0010Z\u001a\u00020[*\u00020\n\u001a\n\u0010\\\u001a\u000204*\u00020]\u001a\f\u0010^\u001a\u0004\u0018\u00010\t*\u00020\n\u001a\u0012\u0010_\u001a\u000204*\u00020\t2\u0006\u0010`\u001a\u00020\t\u001a\u0012\u0010a\u001a\u000204*\u00020b2\u0006\u0010c\u001a\u00020\u0001\u001a\u0014\u0010d\u001a\u00020\t*\u00020e2\u0006\u0010f\u001a\u00020\tH\u0007\u001a\n\u0010g\u001a\u00020\t*\u00020b\u001a.\u0010h\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u0002H70\u0018\"\u0004\b\u0000\u00106\"\u0004\b\u0001\u00107*\u000e\u0012\u0004\u0012\u0002H6\u0012\u0004\u0012\u0002H70\u0018\u001a\u0012\u0010i\u001a\u000204*\u00020j2\u0006\u0010k\u001a\u00020\n\u001a\u0014\u0010l\u001a\u0004\u0018\u00010\t*\u00020b2\u0006\u0010m\u001a\u00020n\u001aC\u0010o\u001a\u000204*\u00020\n2\u0006\u0010p\u001a\u00020D2\b\b\u0002\u0010G\u001a\u00020\u00012%\b\u0002\u0010H\u001a\u001f\u0012\u0013\u0012\u00110%¢\u0006\f\b/\u0012\b\b0\u0012\u0004\b\b(J\u0012\u0004\u0012\u000204\u0018\u00010I\u001a\u0012\u0010q\u001a\u000204*\u00020b2\u0006\u0010r\u001a\u00020F\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u001b\u0010\u0002\u001a\u00020\u00038FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\u0004\u0010\u0005\"\u0015\u0010\b\u001a\u00020\t*\u00020\n8F¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f\"\u001d\u0010\r\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u000e*\u00020\t8F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010\"\u0015\u0010\u0011\u001a\u00020\t*\u00020\t8F¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006s"}, d2 = {"BUFFER_SIZE", "", "mainHandler", "Landroid/os/Handler;", "getMainHandler", "()Landroid/os/Handler;", "mainHandler$delegate", "Lkotlin/Lazy;", "extension", "", "Ljava/io/File;", "getExtension", "(Ljava/io/File;)Ljava/lang/String;", "pathComponents", "", "getPathComponents", "(Ljava/lang/String;)Ljava/util/List;", "pathExtension", "getPathExtension", "(Ljava/lang/String;)Ljava/lang/String;", "anyAnyMapToStringAnyMap", "", "", "map", "", "catchDeadObject", ExifInterface.GPS_DIRECTION_TRUE, "block", "Lkotlin/Function0;", "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "catchException", "printErrorStack", "", "(ZLkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "currentThreadName", "kotlin.jvm.PlatformType", "elapsedRealtimeFromTimeMillis", "", "mills", "formatMillis", "millis", "map2map", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "m", "transform", "Lkotlin/Function3;", "Lkotlin/ParameterName;", "name", "oldKey", "oldValue", "newMap", "", "mapTransToMap", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "postDelayOnCurrentLoop", "delayMillis", "(Lkotlin/jvm/functions/Function0;J)Ljava/lang/Boolean;", "postDelayOnMainThread", "postOnMainThread", "runOnMainThread", "syncHttpRequest", "urlStr", "child", "subPath", "clear", "copyTo", "Ljava/io/InputStream;", "out", "Ljava/io/OutputStream;", "bufferSize", "writeCallback", "Lkotlin/Function1;", "hasWrite", "deleteIfExists", "getBoolean", "key", "(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Boolean;", "getInt", "(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Integer;", "getLong", "(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Long;", "getString", "(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/String;", "isNotBlank", "ifIsBlank", "md5", "readJsonArray", "Lcom/alibaba/fastjson/JSONArray;", "readJsonObject", "Lcom/alibaba/fastjson/JSONObject;", "removeFromParent", "Landroid/view/View;", "safeReadText", "saveToExternalStorage", "path", "times", "", "v", "toFormat", "Ljava/util/Date;", "format", "toHex", "toStringKeyMap", "unpackFilesTo", "Ljava/util/zip/ZipInputStream;", "folder", "unzipToString", "charset", "Ljava/nio/charset/Charset;", "writeWithStream", "inputStream", "zipStream", "into", "common_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class KotlinUtilKt {
    public static final int BUFFER_SIZE = 102400;
    private static final Lazy mainHandler$delegate = LazyKt.lazy(new Function0<Handler>() { // from class: tech.rabbit.common.utils.KotlinUtilKt$mainHandler$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Handler invoke() {
            return new Handler(Looper.getMainLooper());
        }
    });

    public static final <T> T catchDeadObject(Function0<? extends T> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        try {
            return block.invoke();
        } catch (DeadObjectException e) {
            Log.e("KotUtil", "catched DeadObjectException : " + e.getMessage());
            return null;
        }
    }

    public static /* synthetic */ Object catchException$default(boolean z, Function0 block, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        Intrinsics.checkNotNullParameter(block, "block");
        try {
            return block.invoke();
        } catch (Throwable th) {
            if (z) {
                th.printStackTrace();
            } else {
                Log.e("KotUtil", "catched Exception : " + th.getMessage());
            }
            return null;
        }
    }

    public static final <T> T catchException(boolean z, Function0<? extends T> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        try {
            return block.invoke();
        } catch (Throwable th) {
            if (z) {
                th.printStackTrace();
            } else {
                Log.e("KotUtil", "catched Exception : " + th.getMessage());
            }
            return null;
        }
    }

    public static final void removeFromParent(View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        ViewParent parent = view.getParent();
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup != null) {
            viewGroup.removeView(view);
        }
    }

    public static final void zipStream(byte[] bArr, OutputStream into) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        Intrinsics.checkNotNullParameter(into, "into");
        Deflater deflater = new Deflater();
        deflater.setInput(bArr);
        deflater.finish();
        while (!deflater.finished()) {
            byte[] bArr2 = new byte[BUFFER_SIZE];
            into.write(bArr2, 0, deflater.deflate(bArr2));
        }
        deflater.end();
        into.close();
    }

    public static final String unzipToString(byte[] bArr, Charset charset) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        Intrinsics.checkNotNullParameter(charset, "charset");
        Inflater inflater = new Inflater();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            inflater.setInput(bArr);
            byte[] bArr2 = new byte[BUFFER_SIZE];
            while (!inflater.finished()) {
                byteArrayOutputStream.write(bArr2, 0, inflater.inflate(bArr2));
            }
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            Intrinsics.checkNotNullExpressionValue(byteArray, "toByteArray(...)");
            return new String(byteArray, charset);
        } finally {
            inflater.end();
            byteArrayOutputStream.close();
        }
    }

    public static final String toHex(byte[] bArr) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        return ArraysKt.joinToString$default(bArr, (CharSequence) "", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) new Function1<Byte, CharSequence>() { // from class: tech.rabbit.common.utils.KotlinUtilKt$toHex$1
            public final CharSequence invoke(byte b) {
                String format = String.format("%02x", Arrays.copyOf(new Object[]{Byte.valueOf(b)}, 1));
                Intrinsics.checkNotNullExpressionValue(format, "format(...)");
                return format;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ CharSequence invoke(Byte b) {
                return invoke(b.byteValue());
            }
        }, 30, (Object) null);
    }

    public static final String md5(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        MessageDigest messageDigest = MessageDigest.getInstance("MD5");
        Charset UTF_8 = StandardCharsets.UTF_8;
        Intrinsics.checkNotNullExpressionValue(UTF_8, "UTF_8");
        byte[] bytes = str.getBytes(UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
        byte[] digest = messageDigest.digest(bytes);
        Intrinsics.checkNotNullExpressionValue(digest, "digest(...)");
        return toHex(digest);
    }

    public static final boolean isNotBlank(String str, Function0<Unit> ifIsBlank) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(ifIsBlank, "ifIsBlank");
        boolean z = !StringsKt.isBlank(str);
        if (!z) {
            try {
                ifIsBlank.invoke();
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                Log.e("KotUtil", "catched Exception : " + th.getMessage());
            }
        }
        return z;
    }

    public static final void saveToExternalStorage(String str, String path) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(path, "path");
        try {
            FilesKt.writeText$default(new File(Environment.getExternalStorageDirectory(), path), str, null, 2, null);
            Unit unit = Unit.INSTANCE;
        } catch (Throwable th) {
            Log.e("KotUtil", "catched Exception : " + th.getMessage());
        }
    }

    public static final String getPathExtension(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return StringsKt.substringAfterLast(str, '.', "");
    }

    public static final List<String> getPathComponents(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        List split$default = StringsKt.split$default((CharSequence) str, new char[]{'/'}, false, 0, 6, (Object) null);
        ArrayList arrayList = new ArrayList();
        for (Object obj : split$default) {
            if (((String) obj).length() > 0) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = arrayList;
        if (true ^ arrayList2.isEmpty()) {
            return arrayList2;
        }
        return null;
    }

    public static final void unpackFilesTo(ZipInputStream zipInputStream, File folder) {
        Intrinsics.checkNotNullParameter(zipInputStream, "<this>");
        Intrinsics.checkNotNullParameter(folder, "folder");
        FileOutputStream fileOutputStream = zipInputStream;
        try {
            ZipInputStream zipInputStream2 = fileOutputStream;
            FilesKt.deleteRecursively(folder);
            File parentFile = folder.getParentFile();
            Intrinsics.checkNotNullExpressionValue(parentFile, "getParentFile(...)");
            File child = child(parentFile, "__download");
            FilesKt.deleteRecursively(child);
            child.mkdirs();
            for (ZipEntry nextEntry = zipInputStream2.getNextEntry(); nextEntry != null; nextEntry = zipInputStream2.getNextEntry()) {
                File file = new File(child, nextEntry.getName());
                if (nextEntry.isDirectory()) {
                    file.mkdirs();
                } else {
                    String name = nextEntry.getName();
                    Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                    if (StringsKt.startsWith$default(name, "__MACOSX", false, 2, (Object) null)) {
                        continue;
                    } else {
                        fileOutputStream = new FileOutputStream(file);
                        try {
                            FileOutputStream fileOutputStream2 = fileOutputStream;
                            copyTo$default(zipInputStream2, fileOutputStream2, BUFFER_SIZE, null, 4, null);
                            fileOutputStream2.flush();
                            Unit unit = Unit.INSTANCE;
                            CloseableKt.closeFinally(fileOutputStream, null);
                        } finally {
                        }
                    }
                }
                zipInputStream2.closeEntry();
            }
            child.renameTo(folder);
            CloseableKt.closeFinally(fileOutputStream, null);
        } finally {
        }
    }

    public static final void clear(File file) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        if (file.exists() && file.isDirectory()) {
            File[] listFiles = file.listFiles();
            Intrinsics.checkNotNullExpressionValue(listFiles, "listFiles(...)");
            for (File file2 : listFiles) {
                Intrinsics.checkNotNull(file2);
                FilesKt.deleteRecursively(file2);
            }
        }
    }

    public static final String safeReadText(File file) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        if (file.exists()) {
            return FilesKt.readText$default(file, null, 1, null);
        }
        return null;
    }

    public static final void deleteIfExists(File file) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        if (file.exists()) {
            file.delete();
        }
    }

    public static final JSONObject readJsonObject(File file) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        JSONObject parseObject = JSON.parseObject(FilesKt.readText$default(file, null, 1, null));
        Intrinsics.checkNotNullExpressionValue(parseObject, "parseObject(...)");
        return parseObject;
    }

    public static final JSONArray readJsonArray(File file) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        JSONArray parseArray = JSON.parseArray(FilesKt.readText$default(file, null, 1, null));
        Intrinsics.checkNotNullExpressionValue(parseArray, "parseArray(...)");
        return parseArray;
    }

    public static /* synthetic */ void writeWithStream$default(File file, InputStream inputStream, int i, Function1 function1, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 8192;
        }
        if ((i2 & 4) != 0) {
            function1 = null;
        }
        writeWithStream(file, inputStream, i, function1);
    }

    public static final void writeWithStream(File file, InputStream inputStream, int i, Function1<? super Long, Unit> function1) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        Intrinsics.checkNotNullParameter(inputStream, "inputStream");
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            FileOutputStream fileOutputStream2 = fileOutputStream;
            copyTo(inputStream, fileOutputStream2, i, function1);
            fileOutputStream2.flush();
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(fileOutputStream, null);
        } finally {
        }
    }

    public static final String md5(File file) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        MessageDigest messageDigest = MessageDigest.getInstance("MD5");
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            FileInputStream fileInputStream2 = fileInputStream;
            byte[] bArr = new byte[Data.MAX_DATA_BYTES];
            while (true) {
                int read = fileInputStream2.read(bArr);
                if (read != -1) {
                    messageDigest.update(bArr, 0, read);
                } else {
                    Unit unit = Unit.INSTANCE;
                    CloseableKt.closeFinally(fileInputStream, null);
                    byte[] digest = messageDigest.digest();
                    Intrinsics.checkNotNullExpressionValue(digest, "digest(...)");
                    return toHex(digest);
                }
            }
        } finally {
        }
    }

    public static /* synthetic */ long copyTo$default(InputStream inputStream, OutputStream outputStream, int i, Function1 function1, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 8192;
        }
        if ((i2 & 4) != 0) {
            function1 = null;
        }
        return copyTo(inputStream, outputStream, i, function1);
    }

    public static final long copyTo(InputStream inputStream, OutputStream out, int i, Function1<? super Long, Unit> function1) {
        Intrinsics.checkNotNullParameter(inputStream, "<this>");
        Intrinsics.checkNotNullParameter(out, "out");
        byte[] bArr = new byte[i];
        int read = inputStream.read(bArr);
        long j = 0;
        while (read >= 0) {
            out.write(bArr, 0, read);
            j += read;
            if (function1 != null) {
                function1.invoke(Long.valueOf(j));
            }
            read = inputStream.read(bArr);
        }
        return j;
    }

    public static final String getExtension(File file) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        String name = file.getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        return getPathExtension(name);
    }

    public static final File child(File file, String subPath) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        Intrinsics.checkNotNullParameter(subPath, "subPath");
        return new File(file, subPath);
    }

    public static final String toFormat(Date date, String format) {
        Intrinsics.checkNotNullParameter(date, "<this>");
        Intrinsics.checkNotNullParameter(format, "format");
        String format2 = new SimpleDateFormat(format).format(date);
        Intrinsics.checkNotNullExpressionValue(format2, "format(...)");
        return format2;
    }

    public static final Handler getMainHandler() {
        return (Handler) mainHandler$delegate.getValue();
    }

    public static final void runOnMainThread(Function0<? extends Object> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        if (Intrinsics.areEqual(Looper.myLooper(), Looper.getMainLooper())) {
            try {
                block.invoke();
                return;
            } catch (Throwable th) {
                Log.e("KotUtil", "catched Exception : " + th.getMessage());
                return;
            }
        }
        postOnMainThread(block);
    }

    public static final void postOnMainThread(final Function0<? extends Object> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        getMainHandler().post(new Runnable() { // from class: tech.rabbit.common.utils.KotlinUtilKt$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                KotlinUtilKt.postOnMainThread$lambda$13(Function0.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void postOnMainThread$lambda$13(Function0 block) {
        Intrinsics.checkNotNullParameter(block, "$block");
        try {
            block.invoke();
        } catch (Throwable th) {
            Log.e("KotUtil", "catched Exception : " + th.getMessage());
        }
    }

    public static final void postDelayOnMainThread(long j, final Function0<? extends Object> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        getMainHandler().postDelayed(new Runnable() { // from class: tech.rabbit.common.utils.KotlinUtilKt$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                KotlinUtilKt.postDelayOnMainThread$lambda$15(Function0.this);
            }
        }, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void postDelayOnMainThread$lambda$15(Function0 block) {
        Intrinsics.checkNotNullParameter(block, "$block");
        try {
            block.invoke();
        } catch (Throwable th) {
            Log.e("KotUtil", "catched Exception : " + th.getMessage());
        }
    }

    public static final long elapsedRealtimeFromTimeMillis(long j) {
        return (j - System.currentTimeMillis()) + SystemClock.elapsedRealtime();
    }

    public static final Boolean postDelayOnCurrentLoop(final Function0<? extends Object> block, long j) {
        Intrinsics.checkNotNullParameter(block, "block");
        Looper myLooper = Looper.myLooper();
        if (myLooper != null) {
            return Boolean.valueOf(new Handler(myLooper).postDelayed(new Runnable() { // from class: tech.rabbit.common.utils.KotlinUtilKt$postDelayOnCurrentLoop$1$1
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        block.invoke();
                    } catch (Throwable th) {
                        Log.e("KotUtil", "catched Exception : " + th.getMessage());
                    }
                }
            }, j));
        }
        return null;
    }

    public static final String currentThreadName() {
        return Thread.currentThread().getName();
    }

    public static /* synthetic */ HashMap map2map$default(Map map, Function3 function3, int i, Object obj) {
        if ((i & 2) != 0) {
            function3 = null;
        }
        return map2map(map, function3);
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [T, java.util.HashMap, java.lang.Object] */
    public static final <T> HashMap<String, T> map2map(Map<String, ? extends Object> map, Function3<? super String, ? super T, ? super HashMap<String, T>, Unit> function3) {
        int size;
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        if (map != null && (size = map.size()) > 0) {
            ?? r2 = (T) new HashMap(size);
            for (Map.Entry<String, ? extends Object> entry : map.entrySet()) {
                DeviceControl$Companion$$ExternalSyntheticLambda4 deviceControl$Companion$$ExternalSyntheticLambda4 = (Object) entry.getValue();
                Unit unit = null;
                if (deviceControl$Companion$$ExternalSyntheticLambda4 == null) {
                    deviceControl$Companion$$ExternalSyntheticLambda4 = null;
                }
                if (deviceControl$Companion$$ExternalSyntheticLambda4 != null) {
                    if (function3 != null) {
                        function3.invoke(entry.getKey(), deviceControl$Companion$$ExternalSyntheticLambda4, r2);
                        unit = Unit.INSTANCE;
                    }
                    if (unit == null) {
                        ((Map) r2).put(entry.getKey(), deviceControl$Companion$$ExternalSyntheticLambda4);
                    }
                }
            }
            objectRef.element = r2;
        }
        return (HashMap) objectRef.element;
    }

    public static final Map<String, Object> anyAnyMapToStringAnyMap(Map<Object, ? extends Object> map) {
        if (map == null) {
            return null;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<Object, ? extends Object> entry : map.entrySet()) {
            Object key = entry.getKey();
            String str = key instanceof String ? (String) key : null;
            Object value = entry.getValue();
            if (str != null && value != null) {
                linkedHashMap.put(str, value);
            }
        }
        return linkedHashMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <K, V> Map<K, V> mapTransToMap(Map<Object, ? extends Object> map) {
        if (map == null) {
            return null;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<Object, ? extends Object> entry : map.entrySet()) {
            Object key = entry.getKey();
            if (key == null) {
                key = null;
            }
            Object value = entry.getValue();
            if (value == null) {
                value = null;
            }
            if (key != null && value != null) {
                linkedHashMap.put(key, value);
            }
        }
        return linkedHashMap;
    }

    public static final <K, V> Long getLong(Map<K, ? extends V> map, K k) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        V v = map.get(k);
        Number number = v instanceof Number ? (Number) v : null;
        if (number != null) {
            return Long.valueOf(number.longValue());
        }
        return null;
    }

    public static final <K, V> Integer getInt(Map<K, ? extends V> map, K k) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        V v = map.get(k);
        Number number = v instanceof Number ? (Number) v : null;
        if (number != null) {
            return Integer.valueOf(number.intValue());
        }
        return null;
    }

    public static final <K, V> String getString(Map<K, ? extends V> map, K k) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        V v = map.get(k);
        if (v instanceof String) {
            return (String) v;
        }
        return null;
    }

    public static final <K, V> Boolean getBoolean(Map<K, ? extends V> map, K k) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        V v = map.get(k);
        if (v instanceof Boolean) {
            return (Boolean) v;
        }
        return null;
    }

    public static final <K, V> Map<String, V> toStringKeyMap(Map<K, ? extends V> map) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<K, ? extends V> entry : map.entrySet()) {
            K key = entry.getKey();
            String str = key instanceof String ? (String) key : null;
            if (str != null) {
                linkedHashMap.put(str, entry.getValue());
            }
        }
        return linkedHashMap;
    }

    public static final String formatMillis(long j) {
        long minutes = TimeUnit.MILLISECONDS.toMinutes(j);
        long seconds = TimeUnit.MILLISECONDS.toSeconds(j) - TimeUnit.MINUTES.toSeconds(minutes);
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format("%d:%02d", Arrays.copyOf(new Object[]{Long.valueOf(minutes), Long.valueOf(seconds)}, 2));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        return format;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x007f, code lost:
    
        if (r5 == 0) goto L36;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.lang.Object, java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r5v8, types: [java.net.HttpURLConnection] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.String syncHttpRequest(java.lang.String r5) {
        /*
            java.lang.String r0 = "urlStr"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            r0 = 0
            java.net.URL r1 = new java.net.URL     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L6f
            r1.<init>(r5)     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L6f
            java.net.URLConnection r5 = r1.openConnection()     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L6f
            java.lang.String r1 = "null cannot be cast to non-null type java.net.HttpURLConnection"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r5, r1)     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L6f
            java.net.HttpURLConnection r5 = (java.net.HttpURLConnection) r5     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L6f
            java.lang.String r1 = "GET"
            r5.setRequestMethod(r1)     // Catch: java.lang.Throwable -> L63 java.lang.Exception -> L67
            r1 = 8000(0x1f40, float:1.121E-41)
            r5.setConnectTimeout(r1)     // Catch: java.lang.Throwable -> L63 java.lang.Exception -> L67
            r5.setReadTimeout(r1)     // Catch: java.lang.Throwable -> L63 java.lang.Exception -> L67
            java.io.InputStream r1 = r5.getInputStream()     // Catch: java.lang.Throwable -> L63 java.lang.Exception -> L67
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L63 java.lang.Exception -> L67
            java.io.InputStreamReader r3 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L63 java.lang.Exception -> L67
            r3.<init>(r1)     // Catch: java.lang.Throwable -> L63 java.lang.Exception -> L67
            java.io.Reader r3 = (java.io.Reader) r3     // Catch: java.lang.Throwable -> L63 java.lang.Exception -> L67
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L63 java.lang.Exception -> L67
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L61 java.lang.Throwable -> L83
            r1.<init>()     // Catch: java.lang.Exception -> L61 java.lang.Throwable -> L83
            r3 = r2
            java.io.Closeable r3 = (java.io.Closeable) r3     // Catch: java.lang.Exception -> L61 java.lang.Throwable -> L83
            r4 = r3
            java.io.BufferedReader r4 = (java.io.BufferedReader) r4     // Catch: java.lang.Throwable -> L5a
            java.io.Reader r4 = (java.io.Reader) r4     // Catch: java.lang.Throwable -> L5a
            java.lang.String r4 = kotlin.io.TextStreamsKt.readText(r4)     // Catch: java.lang.Throwable -> L5a
            kotlin.io.CloseableKt.closeFinally(r3, r0)     // Catch: java.lang.Exception -> L61 java.lang.Throwable -> L83
            r1.append(r4)     // Catch: java.lang.Exception -> L61 java.lang.Throwable -> L83
            java.lang.String r0 = r1.toString()     // Catch: java.lang.Exception -> L61 java.lang.Throwable -> L83
            r2.close()     // Catch: java.lang.Exception -> L52
            goto L56
        L52:
            r1 = move-exception
            r1.printStackTrace()
        L56:
            r5.disconnect()
            goto L82
        L5a:
            r1 = move-exception
            throw r1     // Catch: java.lang.Throwable -> L5c
        L5c:
            r4 = move-exception
            kotlin.io.CloseableKt.closeFinally(r3, r1)     // Catch: java.lang.Exception -> L61 java.lang.Throwable -> L83
            throw r4     // Catch: java.lang.Exception -> L61 java.lang.Throwable -> L83
        L61:
            r1 = move-exception
            goto L72
        L63:
            r1 = move-exception
            r2 = r0
            r0 = r1
            goto L84
        L67:
            r1 = move-exception
            r2 = r0
            goto L72
        L6a:
            r5 = move-exception
            r2 = r0
            r0 = r5
            r5 = r2
            goto L84
        L6f:
            r1 = move-exception
            r5 = r0
            r2 = r5
        L72:
            r1.printStackTrace()     // Catch: java.lang.Throwable -> L83
            if (r2 == 0) goto L7f
            r2.close()     // Catch: java.lang.Exception -> L7b
            goto L7f
        L7b:
            r1 = move-exception
            r1.printStackTrace()
        L7f:
            if (r5 == 0) goto L82
            goto L56
        L82:
            return r0
        L83:
            r0 = move-exception
        L84:
            if (r2 == 0) goto L8e
            r2.close()     // Catch: java.lang.Exception -> L8a
            goto L8e
        L8a:
            r1 = move-exception
            r1.printStackTrace()
        L8e:
            if (r5 == 0) goto L93
            r5.disconnect()
        L93:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: tech.rabbit.common.utils.KotlinUtilKt.syncHttpRequest(java.lang.String):java.lang.String");
    }

    public static final void times(byte[] bArr, int i) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        int length = bArr.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            bArr[i3] = (byte) (bArr[i2] * i);
            i2++;
            i3++;
        }
    }
}
