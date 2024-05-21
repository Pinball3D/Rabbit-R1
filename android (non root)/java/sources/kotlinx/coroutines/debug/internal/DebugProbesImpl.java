package kotlinx.coroutines.debug.internal;

import _COROUTINE.ArtificialStackFrames;
import androidx.exifinterface.media.ExifInterface;
import io.sentry.protocol.OperatingSystem;
import io.sentry.protocol.SentryStackTrace;
import io.sentry.protocol.SentryThread;
import java.io.PrintStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import kotlin.KotlinVersion;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.concurrent.ThreadsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.ranges.RangesKt;
import kotlin.sequences.SequencesKt;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineId;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.JobSupport;
import kotlinx.coroutines.debug.internal.DebugProbesImpl;
import kotlinx.coroutines.internal.ScopeCoroutine;

/* compiled from: DebugProbesImpl.kt */
@Metadata(d1 = {"\u0000Æ\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0015\n\u0002\u0010\u0003\n\u0002\b\t\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\bÀ\u0002\u0018\u00002\u00020\u0001:\u0001wB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J,\u0010.\u001a\b\u0012\u0004\u0012\u0002H00/\"\u0004\b\u0000\u001002\f\u00101\u001a\b\u0012\u0004\u0012\u0002H00/2\b\u00102\u001a\u0004\u0018\u000103H\u0002J\u000e\u00104\u001a\u00020\u00142\u0006\u00105\u001a\u000206J\f\u00107\u001a\b\u0012\u0004\u0012\u00020908J\u0011\u0010:\u001a\b\u0012\u0004\u0012\u00020\u00010;¢\u0006\u0002\u0010<J9\u0010=\u001a\b\u0012\u0004\u0012\u0002H>08\"\b\b\u0000\u0010>*\u00020\u00012\u001e\b\u0004\u0010?\u001a\u0018\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000b\u0012\u0004\u0012\u00020A\u0012\u0004\u0012\u0002H>0@H\u0082\bJ\u0010\u0010B\u001a\u00020\u00142\u0006\u00105\u001a\u000206H\u0002J\f\u0010C\u001a\b\u0012\u0004\u0012\u00020D08J\"\u0010E\u001a\b\u0012\u0004\u0012\u00020\u0004082\u0006\u0010F\u001a\u0002092\f\u0010G\u001a\b\u0012\u0004\u0012\u00020\u000408J\u000e\u0010H\u001a\u00020&2\u0006\u0010F\u001a\u000209J.\u0010I\u001a\b\u0012\u0004\u0012\u00020\u0004082\u0006\u0010J\u001a\u00020&2\b\u0010K\u001a\u0004\u0018\u00010$2\f\u0010G\u001a\b\u0012\u0004\u0012\u00020\u000408H\u0002J=\u0010L\u001a\u000e\u0012\u0004\u0012\u00020N\u0012\u0004\u0012\u00020N0M2\u0006\u0010O\u001a\u00020N2\f\u0010P\u001a\b\u0012\u0004\u0012\u00020\u00040;2\f\u0010G\u001a\b\u0012\u0004\u0012\u00020\u000408H\u0002¢\u0006\u0002\u0010QJ1\u0010R\u001a\u00020N2\u0006\u0010S\u001a\u00020N2\f\u0010P\u001a\b\u0012\u0004\u0012\u00020\u00040;2\f\u0010G\u001a\b\u0012\u0004\u0012\u00020\u000408H\u0002¢\u0006\u0002\u0010TJ\u0016\u0010U\u001a\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013H\u0002J\u000e\u0010V\u001a\u00020&2\u0006\u0010W\u001a\u00020'J\u0006\u0010X\u001a\u00020\u0014J\u001e\u0010Y\u001a\u00020\u00142\u0006\u00105\u001a\u0002062\f\u0010Z\u001a\b\u0012\u0004\u0012\u00020\u000408H\u0002J\u0014\u0010[\u001a\u00020\u00142\n\u0010\\\u001a\u0006\u0012\u0002\b\u00030\u000bH\u0002J'\u0010]\u001a\b\u0012\u0004\u0012\u0002H00/\"\u0004\b\u0000\u001002\f\u00101\u001a\b\u0012\u0004\u0012\u0002H00/H\u0000¢\u0006\u0002\b^J\u0019\u0010_\u001a\u00020\u00142\n\u00102\u001a\u0006\u0012\u0002\b\u00030/H\u0000¢\u0006\u0002\b`J\u0019\u0010a\u001a\u00020\u00142\n\u00102\u001a\u0006\u0012\u0002\b\u00030/H\u0000¢\u0006\u0002\bbJ%\u0010c\u001a\b\u0012\u0004\u0012\u00020\u000408\"\b\b\u0000\u00100*\u00020d2\u0006\u0010e\u001a\u0002H0H\u0002¢\u0006\u0002\u0010fJ\b\u0010g\u001a\u00020\u0014H\u0002J\b\u0010h\u001a\u00020\u0014H\u0002J\u0006\u0010i\u001a\u00020\u0014J\u0018\u0010j\u001a\u00020\u00142\u0006\u00102\u001a\u00020\u00072\u0006\u0010J\u001a\u00020&H\u0002J\u001c\u0010k\u001a\u00020\u00142\n\u00102\u001a\u0006\u0012\u0002\b\u00030/2\u0006\u0010J\u001a\u00020&H\u0002J(\u0010k\u001a\u00020\u00142\n\u0010\\\u001a\u0006\u0012\u0002\b\u00030\u000b2\n\u00102\u001a\u0006\u0012\u0002\b\u00030/2\u0006\u0010J\u001a\u00020&H\u0002J4\u0010l\u001a\u00020\u0014*\u00020'2\u0012\u0010m\u001a\u000e\u0012\u0004\u0012\u00020'\u0012\u0004\u0012\u00020\b0n2\n\u0010o\u001a\u00060pj\u0002`q2\u0006\u0010r\u001a\u00020&H\u0002J\u0010\u0010s\u001a\u00020\u000f*\u0006\u0012\u0002\b\u00030\u000bH\u0002J\u0016\u0010\\\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u000b*\u0006\u0012\u0002\b\u00030/H\u0002J\u0013\u0010\\\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u000b*\u00020\u0007H\u0082\u0010J\u000f\u0010t\u001a\u0004\u0018\u00010\u0007*\u00020\u0007H\u0082\u0010J\u0012\u0010u\u001a\u000203*\b\u0012\u0004\u0012\u00020\u000408H\u0002J\f\u0010v\u001a\u00020&*\u00020\u0001H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\t\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000b0\n8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u001e\u0010\u000e\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000b\u0012\u0004\u0012\u00020\u000f0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0015\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\t\u0010\u001a\u001a\u00020\u001bX\u0082\u0004R\u0014\u0010\u001c\u001a\u00020\u000f8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u0017R\u001a\u0010\u001e\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u0017\"\u0004\b \u0010\u0019R\t\u0010!\u001a\u00020\"X\u0082\u0004R\u0010\u0010#\u001a\u0004\u0018\u00010$X\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010%\u001a\u00020&*\u00020'8BX\u0082\u0004¢\u0006\f\u0012\u0004\b(\u0010)\u001a\u0004\b*\u0010+R\u0018\u0010,\u001a\u00020\u000f*\u00020\u00048BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b,\u0010-¨\u0006x"}, d2 = {"Lkotlinx/coroutines/debug/internal/DebugProbesImpl;", "", "()V", "ARTIFICIAL_FRAME", "Ljava/lang/StackTraceElement;", "callerInfoCache", "Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;", "capturedCoroutines", "", "Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;", "getCapturedCoroutines", "()Ljava/util/Set;", "capturedCoroutinesMap", "", "dateFormat", "Ljava/text/SimpleDateFormat;", "dynamicAttach", "Lkotlin/Function1;", "", "enableCreationStackTraces", "getEnableCreationStackTraces", "()Z", "setEnableCreationStackTraces", "(Z)V", "installations", "Lkotlinx/atomicfu/AtomicInt;", "isInstalled", "isInstalled$kotlinx_coroutines_core", "sanitizeStackTraces", "getSanitizeStackTraces", "setSanitizeStackTraces", "sequenceNumber", "Lkotlinx/atomicfu/AtomicLong;", "weakRefCleanerThread", "Ljava/lang/Thread;", "debugString", "", "Lkotlinx/coroutines/Job;", "getDebugString$annotations", "(Lkotlinx/coroutines/Job;)V", "getDebugString", "(Lkotlinx/coroutines/Job;)Ljava/lang/String;", "isInternalMethod", "(Ljava/lang/StackTraceElement;)Z", "createOwner", "Lkotlin/coroutines/Continuation;", ExifInterface.GPS_DIRECTION_TRUE, "completion", "frame", "Lkotlinx/coroutines/debug/internal/StackTraceFrame;", "dumpCoroutines", "out", "Ljava/io/PrintStream;", "dumpCoroutinesInfo", "", "Lkotlinx/coroutines/debug/internal/DebugCoroutineInfo;", "dumpCoroutinesInfoAsJsonAndReferences", "", "()[Ljava/lang/Object;", "dumpCoroutinesInfoImpl", "R", "create", "Lkotlin/Function2;", "Lkotlin/coroutines/CoroutineContext;", "dumpCoroutinesSynchronized", "dumpDebuggerInfo", "Lkotlinx/coroutines/debug/internal/DebuggerInfo;", "enhanceStackTraceWithThreadDump", "info", "coroutineTrace", "enhanceStackTraceWithThreadDumpAsJson", "enhanceStackTraceWithThreadDumpImpl", SentryThread.JsonKeys.STATE, "thread", "findContinuationStartIndex", "Lkotlin/Pair;", "", "indexOfResumeWith", "actualTrace", "(I[Ljava/lang/StackTraceElement;Ljava/util/List;)Lkotlin/Pair;", "findIndexOfFrame", "frameIndex", "(I[Ljava/lang/StackTraceElement;Ljava/util/List;)I", "getDynamicAttach", "hierarchyToString", "job", "install", "printStackTrace", SentryStackTrace.JsonKeys.FRAMES, "probeCoroutineCompleted", "owner", "probeCoroutineCreated", "probeCoroutineCreated$kotlinx_coroutines_core", "probeCoroutineResumed", "probeCoroutineResumed$kotlinx_coroutines_core", "probeCoroutineSuspended", "probeCoroutineSuspended$kotlinx_coroutines_core", "sanitizeStackTrace", "", "throwable", "(Ljava/lang/Throwable;)Ljava/util/List;", "startWeakRefCleanerThread", "stopWeakRefCleanerThread", "uninstall", "updateRunningState", "updateState", OperatingSystem.JsonKeys.BUILD, "map", "", "builder", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "indent", "isFinished", "realCaller", "toStackTraceFrame", "toStringRepr", "CoroutineOwner", "kotlinx-coroutines-core"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class DebugProbesImpl {
    private static final StackTraceElement ARTIFICIAL_FRAME;
    public static final DebugProbesImpl INSTANCE;
    private static final ConcurrentWeakMap<CoroutineStackFrame, DebugCoroutineInfoImpl> callerInfoCache;
    private static final ConcurrentWeakMap<CoroutineOwner<?>, Boolean> capturedCoroutinesMap;
    private static final SimpleDateFormat dateFormat;
    private static final Function1<Boolean, Unit> dynamicAttach;
    private static boolean enableCreationStackTraces;
    private static final DebugProbesImpl$Installations$kotlinx$VolatileWrapper installations$kotlinx$VolatileWrapper;
    private static boolean sanitizeStackTraces;
    private static final DebugProbesImpl$SequenceNumber$kotlinx$VolatileWrapper sequenceNumber$kotlinx$VolatileWrapper;
    private static Thread weakRefCleanerThread;

    private static /* synthetic */ void getDebugString$annotations(Job job) {
    }

    public final boolean getEnableCreationStackTraces() {
        return enableCreationStackTraces;
    }

    public final boolean getSanitizeStackTraces() {
        return sanitizeStackTraces;
    }

    public final boolean isInstalled$kotlinx_coroutines_core() {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        atomicIntegerFieldUpdater = DebugProbesImpl$Installations$kotlinx$VolatileWrapper.installations$FU;
        return atomicIntegerFieldUpdater.get(installations$kotlinx$VolatileWrapper) > 0;
    }

    public final void setEnableCreationStackTraces(boolean z) {
        enableCreationStackTraces = z;
    }

    public final void setSanitizeStackTraces(boolean z) {
        sanitizeStackTraces = z;
    }

    private DebugProbesImpl() {
    }

    static {
        DebugProbesImpl debugProbesImpl = new DebugProbesImpl();
        INSTANCE = debugProbesImpl;
        ARTIFICIAL_FRAME = new ArtificialStackFrames().coroutineCreation();
        dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        capturedCoroutinesMap = new ConcurrentWeakMap<>(false, 1, null);
        sanitizeStackTraces = true;
        enableCreationStackTraces = true;
        dynamicAttach = debugProbesImpl.getDynamicAttach();
        callerInfoCache = new ConcurrentWeakMap<>(true);
        installations$kotlinx$VolatileWrapper = new DebugProbesImpl$Installations$kotlinx$VolatileWrapper(null);
        sequenceNumber$kotlinx$VolatileWrapper = new DebugProbesImpl$SequenceNumber$kotlinx$VolatileWrapper(null);
    }

    private final Set<CoroutineOwner<?>> getCapturedCoroutines() {
        return capturedCoroutinesMap.keySet();
    }

    private final Function1<Boolean, Unit> getDynamicAttach() {
        Object m5698constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            DebugProbesImpl debugProbesImpl = this;
            Object newInstance = Class.forName("kotlinx.coroutines.debug.internal.ByteBuddyDynamicAttach").getConstructors()[0].newInstance(new Object[0]);
            Intrinsics.checkNotNull(newInstance, "null cannot be cast to non-null type kotlin.Function1<kotlin.Boolean, kotlin.Unit>");
            m5698constructorimpl = Result.m5698constructorimpl((Function1) TypeIntrinsics.beforeCheckcastToFunctionOfArity(newInstance, 1));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            m5698constructorimpl = Result.m5698constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m5704isFailureimpl(m5698constructorimpl)) {
            m5698constructorimpl = null;
        }
        return (Function1) m5698constructorimpl;
    }

    public final void install() {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        Function1<Boolean, Unit> function1;
        atomicIntegerFieldUpdater = DebugProbesImpl$Installations$kotlinx$VolatileWrapper.installations$FU;
        if (atomicIntegerFieldUpdater.incrementAndGet(installations$kotlinx$VolatileWrapper) > 1) {
            return;
        }
        startWeakRefCleanerThread();
        if (AgentInstallationType.INSTANCE.isInstalledStatically$kotlinx_coroutines_core() || (function1 = dynamicAttach) == null) {
            return;
        }
        function1.invoke(true);
    }

    public final void uninstall() {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        Function1<Boolean, Unit> function1;
        if (!isInstalled$kotlinx_coroutines_core()) {
            throw new IllegalStateException("Agent was not installed".toString());
        }
        atomicIntegerFieldUpdater = DebugProbesImpl$Installations$kotlinx$VolatileWrapper.installations$FU;
        if (atomicIntegerFieldUpdater.decrementAndGet(installations$kotlinx$VolatileWrapper) != 0) {
            return;
        }
        stopWeakRefCleanerThread();
        capturedCoroutinesMap.clear();
        callerInfoCache.clear();
        if (AgentInstallationType.INSTANCE.isInstalledStatically$kotlinx_coroutines_core() || (function1 = dynamicAttach) == null) {
            return;
        }
        function1.invoke(false);
    }

    private final void startWeakRefCleanerThread() {
        weakRefCleanerThread = ThreadsKt.thread$default(false, true, null, "Coroutines Debugger Cleaner", 0, new Function0<Unit>() { // from class: kotlinx.coroutines.debug.internal.DebugProbesImpl$startWeakRefCleanerThread$1
            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                ConcurrentWeakMap concurrentWeakMap;
                concurrentWeakMap = DebugProbesImpl.callerInfoCache;
                concurrentWeakMap.runWeakRefQueueCleaningLoopUntilInterrupted();
            }
        }, 21, null);
    }

    private final void stopWeakRefCleanerThread() {
        Thread thread = weakRefCleanerThread;
        if (thread == null) {
            return;
        }
        weakRefCleanerThread = null;
        thread.interrupt();
        thread.join();
    }

    public final String hierarchyToString(Job job) {
        if (!isInstalled$kotlinx_coroutines_core()) {
            throw new IllegalStateException("Debug probes are not installed".toString());
        }
        Set<CoroutineOwner<?>> capturedCoroutines = getCapturedCoroutines();
        ArrayList arrayList = new ArrayList();
        for (Object obj : capturedCoroutines) {
            if (((CoroutineOwner) obj).delegate.getContext().get(Job.INSTANCE) != null) {
                arrayList.add(obj);
            }
        }
        ArrayList<CoroutineOwner> arrayList2 = arrayList;
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(arrayList2, 10)), 16));
        for (CoroutineOwner coroutineOwner : arrayList2) {
            linkedHashMap.put(JobKt.getJob(coroutineOwner.delegate.getContext()), coroutineOwner.info);
        }
        StringBuilder sb = new StringBuilder();
        INSTANCE.build(job, linkedHashMap, sb, "");
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }

    private final void build(Job job, Map<Job, DebugCoroutineInfoImpl> map, StringBuilder sb, String str) {
        DebugCoroutineInfoImpl debugCoroutineInfoImpl = map.get(job);
        if (debugCoroutineInfoImpl == null) {
            if (!(job instanceof ScopeCoroutine)) {
                sb.append(str + getDebugString(job) + '\n');
                str = str + '\t';
            }
        } else {
            sb.append(str + getDebugString(job) + ", continuation is " + debugCoroutineInfoImpl.get_state() + " at line " + ((StackTraceElement) CollectionsKt.firstOrNull((List) debugCoroutineInfoImpl.lastObservedStackTrace())) + '\n');
            str = str + '\t';
        }
        Iterator<Job> it = job.getChildren().iterator();
        while (it.hasNext()) {
            build(it.next(), map, sb, str);
        }
    }

    private final String getDebugString(Job job) {
        return job instanceof JobSupport ? ((JobSupport) job).toDebugString() : job.toString();
    }

    private final <R> List<R> dumpCoroutinesInfoImpl(final Function2<? super CoroutineOwner<?>, ? super CoroutineContext, ? extends R> create) {
        if (!isInstalled$kotlinx_coroutines_core()) {
            throw new IllegalStateException("Debug probes are not installed".toString());
        }
        return SequencesKt.toList(SequencesKt.mapNotNull(SequencesKt.sortedWith(CollectionsKt.asSequence(getCapturedCoroutines()), new DebugProbesImpl$dumpCoroutinesInfoImpl$$inlined$sortedBy$1()), new Function1<CoroutineOwner<?>, R>() { // from class: kotlinx.coroutines.debug.internal.DebugProbesImpl$dumpCoroutinesInfoImpl$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final R invoke(DebugProbesImpl.CoroutineOwner<?> coroutineOwner) {
                boolean isFinished;
                CoroutineContext context;
                isFinished = DebugProbesImpl.INSTANCE.isFinished(coroutineOwner);
                if (isFinished || (context = coroutineOwner.info.getContext()) == null) {
                    return null;
                }
                return create.invoke(coroutineOwner, context);
            }
        }));
    }

    public final Object[] dumpCoroutinesInfoAsJsonAndReferences() {
        String name;
        List<DebugCoroutineInfo> dumpCoroutinesInfo = dumpCoroutinesInfo();
        int size = dumpCoroutinesInfo.size();
        ArrayList arrayList = new ArrayList(size);
        ArrayList arrayList2 = new ArrayList(size);
        ArrayList arrayList3 = new ArrayList(size);
        for (DebugCoroutineInfo debugCoroutineInfo : dumpCoroutinesInfo) {
            CoroutineContext context = debugCoroutineInfo.getContext();
            CoroutineName coroutineName = (CoroutineName) context.get(CoroutineName.INSTANCE);
            Long l = null;
            String stringRepr = (coroutineName == null || (name = coroutineName.getName()) == null) ? null : toStringRepr(name);
            CoroutineDispatcher coroutineDispatcher = (CoroutineDispatcher) context.get(CoroutineDispatcher.INSTANCE);
            String stringRepr2 = coroutineDispatcher != null ? toStringRepr(coroutineDispatcher) : null;
            StringBuilder append = new StringBuilder("\n                {\n                    \"name\": ").append(stringRepr).append(",\n                    \"id\": ");
            CoroutineId coroutineId = (CoroutineId) context.get(CoroutineId.INSTANCE);
            if (coroutineId != null) {
                l = Long.valueOf(coroutineId.getId());
            }
            arrayList3.add(StringsKt.trimIndent(append.append(l).append(",\n                    \"dispatcher\": ").append(stringRepr2).append(",\n                    \"sequenceNumber\": ").append(debugCoroutineInfo.getSequenceNumber()).append(",\n                    \"state\": \"").append(debugCoroutineInfo.getState()).append("\"\n                } \n                ").toString()));
            arrayList2.add(debugCoroutineInfo.getLastObservedFrame());
            arrayList.add(debugCoroutineInfo.getLastObservedThread());
        }
        return new Object[]{"[" + CollectionsKt.joinToString$default(arrayList3, null, null, null, 0, null, null, 63, null) + ']', arrayList.toArray(new Thread[0]), arrayList2.toArray(new CoroutineStackFrame[0]), dumpCoroutinesInfo.toArray(new DebugCoroutineInfo[0])};
    }

    public final String enhanceStackTraceWithThreadDumpAsJson(DebugCoroutineInfo info) {
        List<StackTraceElement> enhanceStackTraceWithThreadDump = enhanceStackTraceWithThreadDump(info, info.lastObservedStackTrace());
        ArrayList arrayList = new ArrayList();
        for (StackTraceElement stackTraceElement : enhanceStackTraceWithThreadDump) {
            StringBuilder append = new StringBuilder("\n                {\n                    \"declaringClass\": \"").append(stackTraceElement.getClassName()).append("\",\n                    \"methodName\": \"").append(stackTraceElement.getMethodName()).append("\",\n                    \"fileName\": ");
            String fileName = stackTraceElement.getFileName();
            arrayList.add(StringsKt.trimIndent(append.append(fileName != null ? toStringRepr(fileName) : null).append(",\n                    \"lineNumber\": ").append(stackTraceElement.getLineNumber()).append("\n                }\n                ").toString()));
        }
        return "[" + CollectionsKt.joinToString$default(arrayList, null, null, null, 0, null, null, 63, null) + ']';
    }

    private final String toStringRepr(Object obj) {
        String repr;
        repr = DebugProbesImplKt.repr(obj.toString());
        return repr;
    }

    public final void dumpCoroutines(PrintStream out) {
        synchronized (out) {
            INSTANCE.dumpCoroutinesSynchronized(out);
            Unit unit = Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isFinished(CoroutineOwner<?> coroutineOwner) {
        Job job;
        CoroutineContext context = coroutineOwner.info.getContext();
        if (context == null || (job = (Job) context.get(Job.INSTANCE)) == null || !job.isCompleted()) {
            return false;
        }
        capturedCoroutinesMap.remove(coroutineOwner);
        return true;
    }

    private final void dumpCoroutinesSynchronized(PrintStream out) {
        String str;
        if (!isInstalled$kotlinx_coroutines_core()) {
            throw new IllegalStateException("Debug probes are not installed".toString());
        }
        out.print("Coroutines dump " + dateFormat.format(Long.valueOf(System.currentTimeMillis())));
        for (CoroutineOwner coroutineOwner : SequencesKt.sortedWith(SequencesKt.filter(CollectionsKt.asSequence(getCapturedCoroutines()), new Function1<CoroutineOwner<?>, Boolean>() { // from class: kotlinx.coroutines.debug.internal.DebugProbesImpl$dumpCoroutinesSynchronized$2
            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(DebugProbesImpl.CoroutineOwner<?> coroutineOwner2) {
                boolean isFinished;
                isFinished = DebugProbesImpl.INSTANCE.isFinished(coroutineOwner2);
                return Boolean.valueOf(!isFinished);
            }
        }), new Comparator() { // from class: kotlinx.coroutines.debug.internal.DebugProbesImpl$dumpCoroutinesSynchronized$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return ComparisonsKt.compareValues(Long.valueOf(((DebugProbesImpl.CoroutineOwner) t).info.sequenceNumber), Long.valueOf(((DebugProbesImpl.CoroutineOwner) t2).info.sequenceNumber));
            }
        })) {
            DebugCoroutineInfoImpl debugCoroutineInfoImpl = coroutineOwner.info;
            List<StackTraceElement> lastObservedStackTrace = debugCoroutineInfoImpl.lastObservedStackTrace();
            DebugProbesImpl debugProbesImpl = INSTANCE;
            List<StackTraceElement> enhanceStackTraceWithThreadDumpImpl = debugProbesImpl.enhanceStackTraceWithThreadDumpImpl(debugCoroutineInfoImpl.get_state(), debugCoroutineInfoImpl.lastObservedThread, lastObservedStackTrace);
            if (Intrinsics.areEqual(debugCoroutineInfoImpl.get_state(), DebugCoroutineInfoImplKt.RUNNING) && enhanceStackTraceWithThreadDumpImpl == lastObservedStackTrace) {
                str = debugCoroutineInfoImpl.get_state() + " (Last suspension stacktrace, not an actual stacktrace)";
            } else {
                str = debugCoroutineInfoImpl.get_state();
            }
            out.print("\n\nCoroutine " + coroutineOwner.delegate + ", state: " + str);
            if (lastObservedStackTrace.isEmpty()) {
                out.print("\n\tat " + ARTIFICIAL_FRAME);
                debugProbesImpl.printStackTrace(out, debugCoroutineInfoImpl.getCreationStackTrace());
            } else {
                debugProbesImpl.printStackTrace(out, enhanceStackTraceWithThreadDumpImpl);
            }
        }
    }

    private final void printStackTrace(PrintStream out, List<StackTraceElement> frames) {
        Iterator<T> it = frames.iterator();
        while (it.hasNext()) {
            out.print("\n\tat " + ((StackTraceElement) it.next()));
        }
    }

    public final List<StackTraceElement> enhanceStackTraceWithThreadDump(DebugCoroutineInfo info, List<StackTraceElement> coroutineTrace) {
        return enhanceStackTraceWithThreadDumpImpl(info.getState(), info.getLastObservedThread(), coroutineTrace);
    }

    private final List<StackTraceElement> enhanceStackTraceWithThreadDumpImpl(String state, Thread thread, List<StackTraceElement> coroutineTrace) {
        Object m5698constructorimpl;
        if (!Intrinsics.areEqual(state, DebugCoroutineInfoImplKt.RUNNING) || thread == null) {
            return coroutineTrace;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            DebugProbesImpl debugProbesImpl = this;
            m5698constructorimpl = Result.m5698constructorimpl(thread.getStackTrace());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            m5698constructorimpl = Result.m5698constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m5704isFailureimpl(m5698constructorimpl)) {
            m5698constructorimpl = null;
        }
        StackTraceElement[] stackTraceElementArr = (StackTraceElement[]) m5698constructorimpl;
        if (stackTraceElementArr == null) {
            return coroutineTrace;
        }
        int length = stackTraceElementArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                i = -1;
                break;
            }
            StackTraceElement stackTraceElement = stackTraceElementArr[i];
            if (Intrinsics.areEqual(stackTraceElement.getClassName(), "kotlin.coroutines.jvm.internal.BaseContinuationImpl") && Intrinsics.areEqual(stackTraceElement.getMethodName(), "resumeWith") && Intrinsics.areEqual(stackTraceElement.getFileName(), "ContinuationImpl.kt")) {
                break;
            }
            i++;
        }
        Pair<Integer, Integer> findContinuationStartIndex = findContinuationStartIndex(i, stackTraceElementArr, coroutineTrace);
        int intValue = findContinuationStartIndex.component1().intValue();
        int intValue2 = findContinuationStartIndex.component2().intValue();
        if (intValue == -1) {
            return coroutineTrace;
        }
        ArrayList arrayList = new ArrayList((((coroutineTrace.size() + i) - intValue) - 1) - intValue2);
        int i2 = i - intValue2;
        for (int i3 = 0; i3 < i2; i3++) {
            arrayList.add(stackTraceElementArr[i3]);
        }
        int size = coroutineTrace.size();
        for (int i4 = intValue + 1; i4 < size; i4++) {
            arrayList.add(coroutineTrace.get(i4));
        }
        return arrayList;
    }

    private final Pair<Integer, Integer> findContinuationStartIndex(int indexOfResumeWith, StackTraceElement[] actualTrace, List<StackTraceElement> coroutineTrace) {
        for (int i = 0; i < 3; i++) {
            int findIndexOfFrame = INSTANCE.findIndexOfFrame((indexOfResumeWith - 1) - i, actualTrace, coroutineTrace);
            if (findIndexOfFrame != -1) {
                return TuplesKt.to(Integer.valueOf(findIndexOfFrame), Integer.valueOf(i));
            }
        }
        return TuplesKt.to(-1, 0);
    }

    private final int findIndexOfFrame(int frameIndex, StackTraceElement[] actualTrace, List<StackTraceElement> coroutineTrace) {
        StackTraceElement stackTraceElement = (StackTraceElement) ArraysKt.getOrNull(actualTrace, frameIndex);
        if (stackTraceElement == null) {
            return -1;
        }
        int i = 0;
        for (StackTraceElement stackTraceElement2 : coroutineTrace) {
            if (Intrinsics.areEqual(stackTraceElement2.getFileName(), stackTraceElement.getFileName()) && Intrinsics.areEqual(stackTraceElement2.getClassName(), stackTraceElement.getClassName()) && Intrinsics.areEqual(stackTraceElement2.getMethodName(), stackTraceElement.getMethodName())) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public final void probeCoroutineResumed$kotlinx_coroutines_core(Continuation<?> frame) {
        updateState(frame, DebugCoroutineInfoImplKt.RUNNING);
    }

    public final void probeCoroutineSuspended$kotlinx_coroutines_core(Continuation<?> frame) {
        updateState(frame, DebugCoroutineInfoImplKt.SUSPENDED);
    }

    private final void updateState(Continuation<?> frame, String state) {
        if (isInstalled$kotlinx_coroutines_core()) {
            if (Intrinsics.areEqual(state, DebugCoroutineInfoImplKt.RUNNING) && KotlinVersion.CURRENT.isAtLeast(1, 3, 30)) {
                CoroutineStackFrame coroutineStackFrame = frame instanceof CoroutineStackFrame ? (CoroutineStackFrame) frame : null;
                if (coroutineStackFrame == null) {
                    return;
                }
                updateRunningState(coroutineStackFrame, state);
                return;
            }
            CoroutineOwner<?> owner = owner(frame);
            if (owner == null) {
                return;
            }
            updateState(owner, frame, state);
        }
    }

    private final void updateRunningState(CoroutineStackFrame frame, String state) {
        boolean z;
        if (isInstalled$kotlinx_coroutines_core()) {
            ConcurrentWeakMap<CoroutineStackFrame, DebugCoroutineInfoImpl> concurrentWeakMap = callerInfoCache;
            DebugCoroutineInfoImpl remove = concurrentWeakMap.remove(frame);
            if (remove != null) {
                z = false;
            } else {
                CoroutineOwner<?> owner = owner(frame);
                if (owner == null || (remove = owner.info) == null) {
                    return;
                }
                CoroutineStackFrame lastObservedFrame$kotlinx_coroutines_core = remove.getLastObservedFrame$kotlinx_coroutines_core();
                CoroutineStackFrame realCaller = lastObservedFrame$kotlinx_coroutines_core != null ? realCaller(lastObservedFrame$kotlinx_coroutines_core) : null;
                if (realCaller != null) {
                    concurrentWeakMap.remove(realCaller);
                }
                z = true;
            }
            Intrinsics.checkNotNull(frame, "null cannot be cast to non-null type kotlin.coroutines.Continuation<*>");
            remove.updateState$kotlinx_coroutines_core(state, (Continuation) frame, z);
            CoroutineStackFrame realCaller2 = realCaller(frame);
            if (realCaller2 == null) {
                return;
            }
            concurrentWeakMap.put(realCaller2, remove);
        }
    }

    private final CoroutineStackFrame realCaller(CoroutineStackFrame coroutineStackFrame) {
        do {
            coroutineStackFrame = coroutineStackFrame.getCallerFrame();
            if (coroutineStackFrame == null) {
                return null;
            }
        } while (coroutineStackFrame.getStackTraceElement() == null);
        return coroutineStackFrame;
    }

    private final void updateState(CoroutineOwner<?> owner, Continuation<?> frame, String state) {
        if (isInstalled$kotlinx_coroutines_core()) {
            owner.info.updateState$kotlinx_coroutines_core(state, frame, true);
        }
    }

    private final CoroutineOwner<?> owner(Continuation<?> continuation) {
        CoroutineStackFrame coroutineStackFrame = continuation instanceof CoroutineStackFrame ? (CoroutineStackFrame) continuation : null;
        if (coroutineStackFrame != null) {
            return owner(coroutineStackFrame);
        }
        return null;
    }

    private final CoroutineOwner<?> owner(CoroutineStackFrame coroutineStackFrame) {
        while (!(coroutineStackFrame instanceof CoroutineOwner)) {
            coroutineStackFrame = coroutineStackFrame.getCallerFrame();
            if (coroutineStackFrame == null) {
                return null;
            }
        }
        return (CoroutineOwner) coroutineStackFrame;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T> Continuation<T> probeCoroutineCreated$kotlinx_coroutines_core(Continuation<? super T> completion) {
        if (isInstalled$kotlinx_coroutines_core() && owner(completion) == null) {
            return createOwner(completion, enableCreationStackTraces ? toStackTraceFrame(sanitizeStackTrace(new Exception())) : null);
        }
        return completion;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final <T> Continuation<T> createOwner(Continuation<? super T> completion, StackTraceFrame frame) {
        AtomicLongFieldUpdater atomicLongFieldUpdater;
        if (!isInstalled$kotlinx_coroutines_core()) {
            return completion;
        }
        CoroutineContext context = completion.getContext();
        atomicLongFieldUpdater = DebugProbesImpl$SequenceNumber$kotlinx$VolatileWrapper.sequenceNumber$FU;
        CoroutineOwner<?> coroutineOwner = new CoroutineOwner<>(completion, new DebugCoroutineInfoImpl(context, frame, atomicLongFieldUpdater.incrementAndGet(sequenceNumber$kotlinx$VolatileWrapper)));
        ConcurrentWeakMap<CoroutineOwner<?>, Boolean> concurrentWeakMap = capturedCoroutinesMap;
        concurrentWeakMap.put(coroutineOwner, true);
        if (!isInstalled$kotlinx_coroutines_core()) {
            concurrentWeakMap.clear();
        }
        return coroutineOwner;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void probeCoroutineCompleted(CoroutineOwner<?> owner) {
        CoroutineStackFrame realCaller;
        capturedCoroutinesMap.remove(owner);
        CoroutineStackFrame lastObservedFrame$kotlinx_coroutines_core = owner.info.getLastObservedFrame$kotlinx_coroutines_core();
        if (lastObservedFrame$kotlinx_coroutines_core == null || (realCaller = realCaller(lastObservedFrame$kotlinx_coroutines_core)) == null) {
            return;
        }
        callerInfoCache.remove(realCaller);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DebugProbesImpl.kt */
    @Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\u00020\u0003B\u001b\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\n\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\u001e\u0010\u0015\u001a\u00020\u00162\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u0018H\u0016ø\u0001\u0000¢\u0006\u0002\u0010\u0019J\b\u0010\u001a\u001a\u00020\u001bH\u0016R\u0016\u0010\b\u001a\u0004\u0018\u00010\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0012\u0010\u000b\u001a\u00020\fX\u0096\u0005¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u00028\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\u0004\u0018\u00010\u00108BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001c"}, d2 = {"Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/coroutines/Continuation;", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "delegate", "info", "Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;", "(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;)V", "callerFrame", "getCallerFrame", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "context", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "frame", "Lkotlinx/coroutines/debug/internal/StackTraceFrame;", "getFrame", "()Lkotlinx/coroutines/debug/internal/StackTraceFrame;", "getStackTraceElement", "Ljava/lang/StackTraceElement;", "resumeWith", "", "result", "Lkotlin/Result;", "(Ljava/lang/Object;)V", "toString", "", "kotlinx-coroutines-core"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class CoroutineOwner<T> implements Continuation<T>, CoroutineStackFrame {
        public final Continuation<T> delegate;
        public final DebugCoroutineInfoImpl info;

        @Override // kotlin.coroutines.Continuation
        public CoroutineContext getContext() {
            return this.delegate.getContext();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public CoroutineOwner(Continuation<? super T> continuation, DebugCoroutineInfoImpl debugCoroutineInfoImpl) {
            this.delegate = continuation;
            this.info = debugCoroutineInfoImpl;
        }

        private final StackTraceFrame getFrame() {
            return this.info.getCreationStackBottom();
        }

        @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
        public CoroutineStackFrame getCallerFrame() {
            StackTraceFrame frame = getFrame();
            if (frame != null) {
                return frame.getCallerFrame();
            }
            return null;
        }

        @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
        public StackTraceElement getStackTraceElement() {
            StackTraceFrame frame = getFrame();
            if (frame != null) {
                return frame.getStackTraceElement();
            }
            return null;
        }

        @Override // kotlin.coroutines.Continuation
        public void resumeWith(Object result) {
            DebugProbesImpl.INSTANCE.probeCoroutineCompleted(this);
            this.delegate.resumeWith(result);
        }

        public String toString() {
            return this.delegate.toString();
        }
    }

    private final <T extends Throwable> List<StackTraceElement> sanitizeStackTrace(T throwable) {
        StackTraceElement[] stackTrace = throwable.getStackTrace();
        int length = stackTrace.length;
        int i = -1;
        int length2 = stackTrace.length - 1;
        if (length2 >= 0) {
            while (true) {
                int i2 = length2 - 1;
                if (Intrinsics.areEqual(stackTrace[length2].getClassName(), "kotlin.coroutines.jvm.internal.DebugProbesKt")) {
                    i = length2;
                    break;
                }
                if (i2 < 0) {
                    break;
                }
                length2 = i2;
            }
        }
        int i3 = i + 1;
        if (!sanitizeStackTraces) {
            int i4 = length - i3;
            ArrayList arrayList = new ArrayList(i4);
            for (int i5 = 0; i5 < i4; i5++) {
                arrayList.add(stackTrace[i5 + i3]);
            }
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList((length - i3) + 1);
        while (i3 < length) {
            if (isInternalMethod(stackTrace[i3])) {
                ArrayList arrayList3 = arrayList2;
                arrayList3.add(stackTrace[i3]);
                int i6 = i3 + 1;
                while (i6 < length && isInternalMethod(stackTrace[i6])) {
                    i6++;
                }
                int i7 = i6 - 1;
                int i8 = i7;
                while (i8 > i3 && stackTrace[i8].getFileName() == null) {
                    i8--;
                }
                if (i8 > i3 && i8 < i7) {
                    arrayList3.add(stackTrace[i8]);
                }
                arrayList3.add(stackTrace[i7]);
                i3 = i6;
            } else {
                arrayList2.add(stackTrace[i3]);
                i3++;
            }
        }
        return arrayList2;
    }

    private final boolean isInternalMethod(StackTraceElement stackTraceElement) {
        return StringsKt.startsWith$default(stackTraceElement.getClassName(), "kotlinx.coroutines", false, 2, (Object) null);
    }

    public final List<DebugCoroutineInfo> dumpCoroutinesInfo() {
        if (!isInstalled$kotlinx_coroutines_core()) {
            throw new IllegalStateException("Debug probes are not installed".toString());
        }
        return SequencesKt.toList(SequencesKt.mapNotNull(SequencesKt.sortedWith(CollectionsKt.asSequence(getCapturedCoroutines()), new DebugProbesImpl$dumpCoroutinesInfoImpl$$inlined$sortedBy$1()), new Function1<CoroutineOwner<?>, DebugCoroutineInfo>() { // from class: kotlinx.coroutines.debug.internal.DebugProbesImpl$dumpCoroutinesInfo$$inlined$dumpCoroutinesInfoImpl$1
            @Override // kotlin.jvm.functions.Function1
            public final DebugCoroutineInfo invoke(DebugProbesImpl.CoroutineOwner<?> coroutineOwner) {
                boolean isFinished;
                CoroutineContext context;
                isFinished = DebugProbesImpl.INSTANCE.isFinished(coroutineOwner);
                if (isFinished || (context = coroutineOwner.info.getContext()) == null) {
                    return null;
                }
                return new DebugCoroutineInfo(coroutineOwner.info, context);
            }
        }));
    }

    public final List<DebuggerInfo> dumpDebuggerInfo() {
        if (!isInstalled$kotlinx_coroutines_core()) {
            throw new IllegalStateException("Debug probes are not installed".toString());
        }
        return SequencesKt.toList(SequencesKt.mapNotNull(SequencesKt.sortedWith(CollectionsKt.asSequence(getCapturedCoroutines()), new DebugProbesImpl$dumpCoroutinesInfoImpl$$inlined$sortedBy$1()), new Function1<CoroutineOwner<?>, DebuggerInfo>() { // from class: kotlinx.coroutines.debug.internal.DebugProbesImpl$dumpDebuggerInfo$$inlined$dumpCoroutinesInfoImpl$1
            @Override // kotlin.jvm.functions.Function1
            public final DebuggerInfo invoke(DebugProbesImpl.CoroutineOwner<?> coroutineOwner) {
                boolean isFinished;
                CoroutineContext context;
                isFinished = DebugProbesImpl.INSTANCE.isFinished(coroutineOwner);
                if (isFinished || (context = coroutineOwner.info.getContext()) == null) {
                    return null;
                }
                return new DebuggerInfo(coroutineOwner.info, context);
            }
        }));
    }

    private final StackTraceFrame toStackTraceFrame(List<StackTraceElement> list) {
        StackTraceFrame stackTraceFrame = null;
        if (!list.isEmpty()) {
            ListIterator<StackTraceElement> listIterator = list.listIterator(list.size());
            while (listIterator.hasPrevious()) {
                stackTraceFrame = new StackTraceFrame(stackTraceFrame, listIterator.previous());
            }
        }
        return new StackTraceFrame(stackTraceFrame, ARTIFICIAL_FRAME);
    }
}
