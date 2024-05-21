package kotlinx.coroutines.internal;

import _COROUTINE.ArtificialStackFrames;
import _COROUTINE.CoroutineDebuggingKt;
import androidx.exifinterface.media.ExifInterface;
import io.sentry.SentryEvent;
import java.util.ArrayDeque;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.DebugKt;

/* compiled from: StackTraceRecovery.kt */
@Metadata(d1 = {"\u0000d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\u0001\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\u001a9\u0010\b\u001a\u0002H\t\"\b\b\u0000\u0010\t*\u00020\n2\u0006\u0010\u000b\u001a\u0002H\t2\u0006\u0010\f\u001a\u0002H\t2\u0010\u0010\r\u001a\f\u0012\b\u0012\u00060\u0001j\u0002`\u000f0\u000eH\u0002¢\u0006\u0002\u0010\u0010\u001a\u001e\u0010\u0011\u001a\f\u0012\b\u0012\u00060\u0001j\u0002`\u000f0\u000e2\n\u0010\u0012\u001a\u00060\u0013j\u0002`\u0014H\u0002\u001a1\u0010\u0015\u001a\u00020\u00162\u0010\u0010\u0017\u001a\f\u0012\b\u0012\u00060\u0001j\u0002`\u000f0\u00182\u0010\u0010\f\u001a\f\u0012\b\u0012\u00060\u0001j\u0002`\u000f0\u000eH\u0002¢\u0006\u0002\u0010\u0019\u001a\u0019\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\nH\u0080Hø\u0001\u0000¢\u0006\u0002\u0010\u001d\u001a+\u0010\u001e\u001a\u0002H\t\"\b\b\u0000\u0010\t*\u00020\n2\u0006\u0010\u001c\u001a\u0002H\t2\n\u0010\u0012\u001a\u00060\u0013j\u0002`\u0014H\u0002¢\u0006\u0002\u0010\u001f\u001a\u001f\u0010 \u001a\u0002H\t\"\b\b\u0000\u0010\t*\u00020\n2\u0006\u0010\u001c\u001a\u0002H\tH\u0000¢\u0006\u0002\u0010!\u001a,\u0010 \u001a\u0002H\t\"\b\b\u0000\u0010\t*\u00020\n2\u0006\u0010\u001c\u001a\u0002H\t2\n\u0010\u0012\u001a\u0006\u0012\u0002\b\u00030\"H\u0080\b¢\u0006\u0002\u0010#\u001a \u0010$\u001a\u0002H\t\"\b\b\u0000\u0010\t*\u00020\n2\u0006\u0010\u001c\u001a\u0002H\tH\u0080\b¢\u0006\u0002\u0010!\u001a\u001f\u0010%\u001a\u0002H\t\"\b\b\u0000\u0010\t*\u00020\n2\u0006\u0010\u001c\u001a\u0002H\tH\u0000¢\u0006\u0002\u0010!\u001a1\u0010&\u001a\u0018\u0012\u0004\u0012\u0002H\t\u0012\u000e\u0012\f\u0012\b\u0012\u00060\u0001j\u0002`\u000f0\u00180'\"\b\b\u0000\u0010\t*\u00020\n*\u0002H\tH\u0002¢\u0006\u0002\u0010(\u001a\u001c\u0010)\u001a\u00020**\u00060\u0001j\u0002`\u000f2\n\u0010+\u001a\u00060\u0001j\u0002`\u000fH\u0002\u001a#\u0010,\u001a\u00020-*\f\u0012\b\u0012\u00060\u0001j\u0002`\u000f0\u00182\u0006\u0010.\u001a\u00020\u0003H\u0002¢\u0006\u0002\u0010/\u001a\u0014\u00100\u001a\u00020\u0016*\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0000\u001a\u0010\u00101\u001a\u00020**\u00060\u0001j\u0002`\u000fH\u0000\u001a\u001b\u00102\u001a\u0002H\t\"\b\b\u0000\u0010\t*\u00020\n*\u0002H\tH\u0002¢\u0006\u0002\u0010!\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0082T¢\u0006\u0002\n\u0000\"\u0016\u0010\u0004\u001a\n \u0005*\u0004\u0018\u00010\u00030\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0003X\u0082T¢\u0006\u0002\n\u0000\"\u0016\u0010\u0007\u001a\n \u0005*\u0004\u0018\u00010\u00030\u0003X\u0082\u0004¢\u0006\u0002\n\u0000*\f\b\u0000\u00103\"\u00020\u00132\u00020\u0013*\f\b\u0000\u00104\"\u00020\u00012\u00020\u0001\u0082\u0002\u0004\n\u0002\b\u0019¨\u00065"}, d2 = {"ARTIFICIAL_FRAME", "Ljava/lang/StackTraceElement;", "baseContinuationImplClass", "", "baseContinuationImplClassName", "kotlin.jvm.PlatformType", "stackTraceRecoveryClass", "stackTraceRecoveryClassName", "createFinalException", ExifInterface.LONGITUDE_EAST, "", "cause", "result", "resultStackTrace", "Ljava/util/ArrayDeque;", "Lkotlinx/coroutines/internal/StackTraceElement;", "(Ljava/lang/Throwable;Ljava/lang/Throwable;Ljava/util/ArrayDeque;)Ljava/lang/Throwable;", "createStackTrace", "continuation", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Lkotlinx/coroutines/internal/CoroutineStackFrame;", "mergeRecoveredTraces", "", "recoveredStacktrace", "", "([Ljava/lang/StackTraceElement;Ljava/util/ArrayDeque;)V", "recoverAndThrow", "", SentryEvent.JsonKeys.EXCEPTION, "(Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "recoverFromStackFrame", "(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;", "recoverStackTrace", "(Ljava/lang/Throwable;)Ljava/lang/Throwable;", "Lkotlin/coroutines/Continuation;", "(Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Throwable;", "unwrap", "unwrapImpl", "causeAndStacktrace", "Lkotlin/Pair;", "(Ljava/lang/Throwable;)Lkotlin/Pair;", "elementWiseEquals", "", "e", "firstFrameIndex", "", "methodName", "([Ljava/lang/StackTraceElement;Ljava/lang/String;)I", "initCause", "isArtificial", "sanitizeStackTrace", "CoroutineStackFrame", "StackTraceElement", "kotlinx-coroutines-core"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class StackTraceRecoveryKt {
    private static final StackTraceElement ARTIFICIAL_FRAME;
    private static final String baseContinuationImplClass = "kotlin.coroutines.jvm.internal.BaseContinuationImpl";
    private static final String baseContinuationImplClassName;
    private static final String stackTraceRecoveryClass = "kotlinx.coroutines.internal.StackTraceRecoveryKt";
    private static final String stackTraceRecoveryClassName;

    public static /* synthetic */ void CoroutineStackFrame$annotations() {
    }

    public static /* synthetic */ void StackTraceElement$annotations() {
    }

    static {
        Object obj;
        Object obj2;
        Object obj3 = stackTraceRecoveryClass;
        Object obj4 = baseContinuationImplClass;
        ARTIFICIAL_FRAME = new ArtificialStackFrames().coroutineBoundary();
        try {
            Result.Companion companion = Result.INSTANCE;
            obj = Result.m5698constructorimpl(Class.forName(baseContinuationImplClass).getCanonicalName());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            obj = Result.m5698constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m5701exceptionOrNullimpl(obj) == null) {
            obj4 = obj;
        }
        baseContinuationImplClassName = (String) obj4;
        try {
            Result.Companion companion3 = Result.INSTANCE;
            obj2 = Result.m5698constructorimpl(Class.forName(stackTraceRecoveryClass).getCanonicalName());
        } catch (Throwable th2) {
            Result.Companion companion4 = Result.INSTANCE;
            obj2 = Result.m5698constructorimpl(ResultKt.createFailure(th2));
        }
        if (Result.m5701exceptionOrNullimpl(obj2) == null) {
            obj3 = obj2;
        }
        stackTraceRecoveryClassName = (String) obj3;
    }

    public static final <E extends Throwable> E recoverStackTrace(E e) {
        Throwable tryCopyException;
        return (DebugKt.getRECOVER_STACK_TRACES() && (tryCopyException = ExceptionsConstructorKt.tryCopyException(e)) != null) ? (E) sanitizeStackTrace(tryCopyException) : e;
    }

    private static final <E extends Throwable> E sanitizeStackTrace(E e) {
        StackTraceElement[] stackTrace = e.getStackTrace();
        int length = stackTrace.length;
        int length2 = stackTrace.length - 1;
        if (length2 >= 0) {
            while (true) {
                int i = length2 - 1;
                if (Intrinsics.areEqual(stackTraceRecoveryClassName, stackTrace[length2].getClassName())) {
                    break;
                }
                if (i < 0) {
                    break;
                }
                length2 = i;
            }
        }
        length2 = -1;
        int i2 = length2 + 1;
        int firstFrameIndex = firstFrameIndex(stackTrace, baseContinuationImplClassName);
        int i3 = 0;
        int i4 = (length - length2) - (firstFrameIndex == -1 ? 0 : length - firstFrameIndex);
        StackTraceElement[] stackTraceElementArr = new StackTraceElement[i4];
        while (i3 < i4) {
            stackTraceElementArr[i3] = i3 == 0 ? ARTIFICIAL_FRAME : stackTrace[(i2 + i3) - 1];
            i3++;
        }
        e.setStackTrace(stackTraceElementArr);
        return e;
    }

    public static final <E extends Throwable> E recoverStackTrace(E e, Continuation<?> continuation) {
        return (DebugKt.getRECOVER_STACK_TRACES() && (continuation instanceof CoroutineStackFrame)) ? (E) recoverFromStackFrame(e, (CoroutineStackFrame) continuation) : e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <E extends Throwable> E recoverFromStackFrame(E e, CoroutineStackFrame coroutineStackFrame) {
        Pair causeAndStacktrace = causeAndStacktrace(e);
        Throwable th = (Throwable) causeAndStacktrace.component1();
        StackTraceElement[] stackTraceElementArr = (StackTraceElement[]) causeAndStacktrace.component2();
        Throwable tryCopyException = ExceptionsConstructorKt.tryCopyException(th);
        if (tryCopyException == null) {
            return e;
        }
        ArrayDeque<StackTraceElement> createStackTrace = createStackTrace(coroutineStackFrame);
        if (createStackTrace.isEmpty()) {
            return e;
        }
        if (th != e) {
            mergeRecoveredTraces(stackTraceElementArr, createStackTrace);
        }
        return (E) createFinalException(th, tryCopyException, createStackTrace);
    }

    private static final <E extends Throwable> E createFinalException(E e, E e2, ArrayDeque<StackTraceElement> arrayDeque) {
        arrayDeque.addFirst(ARTIFICIAL_FRAME);
        StackTraceElement[] stackTrace = e.getStackTrace();
        int firstFrameIndex = firstFrameIndex(stackTrace, baseContinuationImplClassName);
        int i = 0;
        if (firstFrameIndex == -1) {
            e2.setStackTrace((StackTraceElement[]) arrayDeque.toArray(new StackTraceElement[0]));
            return e2;
        }
        StackTraceElement[] stackTraceElementArr = new StackTraceElement[arrayDeque.size() + firstFrameIndex];
        for (int i2 = 0; i2 < firstFrameIndex; i2++) {
            stackTraceElementArr[i2] = stackTrace[i2];
        }
        Iterator<StackTraceElement> it = arrayDeque.iterator();
        while (it.hasNext()) {
            stackTraceElementArr[i + firstFrameIndex] = it.next();
            i++;
        }
        e2.setStackTrace(stackTraceElementArr);
        return e2;
    }

    private static final <E extends Throwable> Pair<E, StackTraceElement[]> causeAndStacktrace(E e) {
        Throwable cause = e.getCause();
        if (cause != null && Intrinsics.areEqual(cause.getClass(), e.getClass())) {
            StackTraceElement[] stackTrace = e.getStackTrace();
            for (StackTraceElement stackTraceElement : stackTrace) {
                if (isArtificial(stackTraceElement)) {
                    return TuplesKt.to(cause, stackTrace);
                }
            }
            return TuplesKt.to(e, new StackTraceElement[0]);
        }
        return TuplesKt.to(e, new StackTraceElement[0]);
    }

    public static final Object recoverAndThrow(Throwable th, Continuation<?> continuation) {
        if (!DebugKt.getRECOVER_STACK_TRACES()) {
            throw th;
        }
        if (continuation instanceof CoroutineStackFrame) {
            throw recoverFromStackFrame(th, (CoroutineStackFrame) continuation);
        }
        throw th;
    }

    private static final Object recoverAndThrow$$forInline(Throwable th, Continuation<?> continuation) {
        if (!DebugKt.getRECOVER_STACK_TRACES()) {
            throw th;
        }
        InlineMarker.mark(0);
        if (continuation instanceof CoroutineStackFrame) {
            throw recoverFromStackFrame(th, (CoroutineStackFrame) continuation);
        }
        throw th;
    }

    public static final <E extends Throwable> E unwrap(E e) {
        return !DebugKt.getRECOVER_STACK_TRACES() ? e : (E) unwrapImpl(e);
    }

    public static final <E extends Throwable> E unwrapImpl(E e) {
        E e2 = (E) e.getCause();
        if (e2 != null && Intrinsics.areEqual(e2.getClass(), e.getClass())) {
            for (StackTraceElement stackTraceElement : e.getStackTrace()) {
                if (isArtificial(stackTraceElement)) {
                    return e2;
                }
            }
        }
        return e;
    }

    private static final ArrayDeque<StackTraceElement> createStackTrace(CoroutineStackFrame coroutineStackFrame) {
        ArrayDeque<StackTraceElement> arrayDeque = new ArrayDeque<>();
        StackTraceElement stackTraceElement = coroutineStackFrame.getStackTraceElement();
        if (stackTraceElement != null) {
            arrayDeque.add(stackTraceElement);
        }
        while (true) {
            if (!(coroutineStackFrame instanceof CoroutineStackFrame)) {
                coroutineStackFrame = null;
            }
            if (coroutineStackFrame == null || (coroutineStackFrame = coroutineStackFrame.getCallerFrame()) == null) {
                break;
            }
            StackTraceElement stackTraceElement2 = coroutineStackFrame.getStackTraceElement();
            if (stackTraceElement2 != null) {
                arrayDeque.add(stackTraceElement2);
            }
        }
        return arrayDeque;
    }

    public static final boolean isArtificial(StackTraceElement stackTraceElement) {
        return StringsKt.startsWith$default(stackTraceElement.getClassName(), CoroutineDebuggingKt.getARTIFICIAL_FRAME_PACKAGE_NAME(), false, 2, (Object) null);
    }

    private static final boolean elementWiseEquals(StackTraceElement stackTraceElement, StackTraceElement stackTraceElement2) {
        return stackTraceElement.getLineNumber() == stackTraceElement2.getLineNumber() && Intrinsics.areEqual(stackTraceElement.getMethodName(), stackTraceElement2.getMethodName()) && Intrinsics.areEqual(stackTraceElement.getFileName(), stackTraceElement2.getFileName()) && Intrinsics.areEqual(stackTraceElement.getClassName(), stackTraceElement2.getClassName());
    }

    public static final void initCause(Throwable th, Throwable th2) {
        th.initCause(th2);
    }

    private static final void mergeRecoveredTraces(StackTraceElement[] stackTraceElementArr, ArrayDeque<StackTraceElement> arrayDeque) {
        int length = stackTraceElementArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                i = -1;
                break;
            } else if (isArtificial(stackTraceElementArr[i])) {
                break;
            } else {
                i++;
            }
        }
        int i2 = i + 1;
        int length2 = stackTraceElementArr.length - 1;
        if (i2 > length2) {
            return;
        }
        while (true) {
            if (elementWiseEquals(stackTraceElementArr[length2], arrayDeque.getLast())) {
                arrayDeque.removeLast();
            }
            arrayDeque.addFirst(stackTraceElementArr[length2]);
            if (length2 == i2) {
                return;
            } else {
                length2--;
            }
        }
    }

    private static final int firstFrameIndex(StackTraceElement[] stackTraceElementArr, String str) {
        int length = stackTraceElementArr.length;
        for (int i = 0; i < length; i++) {
            if (Intrinsics.areEqual(str, stackTraceElementArr[i].getClassName())) {
                return i;
            }
        }
        return -1;
    }
}
