package androidx.compose.runtime;

import androidx.compose.runtime.Recomposer;
import androidx.compose.runtime.collection.IdentityArraySet;
import androidx.compose.runtime.external.kotlinx.collections.immutable.ExtensionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentSet;
import androidx.compose.runtime.snapshots.MutableSnapshot;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotApplyResult;
import androidx.compose.runtime.tooling.CompositionData;
import androidx.exifinterface.media.ExifInterface;
import io.sentry.protocol.SentryStackTrace;
import io.sentry.protocol.SentryThread;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ReplaceWith;
import kotlin.Result;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.ExceptionsKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* compiled from: Recomposer.kt */
@Metadata(d1 = {"\u0000\u0096\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010#\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\r\b\u0007\u0018\u0000 °\u00012\u00020\u0001:\n°\u0001±\u0001²\u0001³\u0001´\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010V\u001a\u00020U2\u0006\u0010W\u001a\u00020XH\u0002J\u0006\u0010Y\u001a\u00020ZJ\u0011\u0010[\u001a\u00020UH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\\J\u0011\u0010]\u001a\u00020UH\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\\J\u0006\u0010^\u001a\u00020UJ\u0006\u0010_\u001a\u00020UJ*\u0010`\u001a\u00020U2\u0006\u0010a\u001a\u00020\u00172\u0011\u0010b\u001a\r\u0012\u0004\u0012\u00020U0c¢\u0006\u0002\bdH\u0010¢\u0006\u0004\be\u0010fJ:\u0010g\u001a\u0002Hh\"\u0004\b\u0000\u0010h2\u0006\u0010a\u001a\u00020\u00172\u000e\u0010i\u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010K2\f\u0010j\u001a\b\u0012\u0004\u0012\u0002Hh0cH\u0082\b¢\u0006\u0002\u0010kJ\u0015\u0010l\u001a\u00020U2\u0006\u0010m\u001a\u00020\u001aH\u0010¢\u0006\u0002\bnJ\u0010\u0010o\u001a\n\u0012\u0004\u0012\u00020U\u0018\u00010TH\u0002J\b\u0010p\u001a\u00020UH\u0002J\u0015\u0010q\u001a\u00020U2\u0006\u0010m\u001a\u00020\u001aH\u0010¢\u0006\u0002\brJ\u0015\u0010s\u001a\u00020U2\u0006\u0010a\u001a\u00020\u0017H\u0010¢\u0006\u0002\btJ\u0015\u0010u\u001a\u00020U2\u0006\u0010v\u001a\u00020wH\u0010¢\u0006\u0002\bxJ\u0011\u0010y\u001a\u00020UH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\\J\u001d\u0010z\u001a\u00020U2\u0006\u0010m\u001a\u00020\u001a2\u0006\u0010{\u001a\u00020\u001bH\u0010¢\u0006\u0002\b|J\u0017\u0010}\u001a\u0004\u0018\u00010\u001b2\u0006\u0010m\u001a\u00020\u001aH\u0010¢\u0006\u0002\b~J\u0006\u0010\u007f\u001a\u00020UJ\u0011\u0010\u0080\u0001\u001a\u00020U2\u0006\u0010a\u001a\u00020\u0017H\u0002J0\u0010\u0081\u0001\u001a\t\u0012\u0004\u0012\u00020\u00170\u0082\u00012\u000e\u0010\u0083\u0001\u001a\t\u0012\u0004\u0012\u00020\u001a0\u0082\u00012\u000e\u0010i\u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010KH\u0002J#\u0010\u0084\u0001\u001a\u0004\u0018\u00010\u00172\u0006\u0010a\u001a\u00020\u00172\u000e\u0010i\u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010KH\u0002J0\u0010\u0085\u0001\u001a\u00020U2\r\u0010\u0086\u0001\u001a\b0\u0087\u0001j\u0003`\u0088\u00012\u000b\b\u0002\u0010\u0089\u0001\u001a\u0004\u0018\u00010\u00172\t\b\u0002\u0010\u008a\u0001\u001a\u00020\u0012H\u0002J\u001e\u0010\u008b\u0001\u001a\u000f\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020U0\u008c\u00012\u0006\u0010a\u001a\u00020\u0017H\u0002JY\u0010\u008d\u0001\u001a\u00020U2D\u0010j\u001a@\b\u0001\u0012\u0005\u0012\u00030\u008f\u0001\u0012\u0017\u0012\u00150\u0090\u0001¢\u0006\u000f\b\u0091\u0001\u0012\n\b\u0092\u0001\u0012\u0005\b\b(\u0093\u0001\u0012\u000b\u0012\t\u0012\u0004\u0012\u00020U0\u0094\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u001f0\u008e\u0001¢\u0006\u0003\b\u0095\u0001H\u0082@ø\u0001\u0000¢\u0006\u0003\u0010\u0096\u0001J\t\u0010\u0097\u0001\u001a\u00020\u0012H\u0002J \u0010\u0097\u0001\u001a\u00020U2\u0014\u0010\u0098\u0001\u001a\u000f\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020U0\u008c\u0001H\u0082\bJ\u001f\u0010\u0099\u0001\u001a\u00020U2\u000e\u0010\u009a\u0001\u001a\t\u0012\u0005\u0012\u00030\u009b\u00010\"H\u0010¢\u0006\u0003\b\u009c\u0001J\u0017\u0010\u009d\u0001\u001a\u00020U2\u0006\u0010a\u001a\u00020\u0017H\u0010¢\u0006\u0003\b\u009e\u0001J\u0012\u0010\u009f\u0001\u001a\u00020U2\u0007\u0010 \u0001\u001a\u00020GH\u0002J\u0017\u0010¡\u0001\u001a\u00020U2\u0006\u0010a\u001a\u00020\u0017H\u0010¢\u0006\u0003\b¢\u0001J\u000b\u0010£\u0001\u001a\u0004\u0018\u000101H\u0002J\u0007\u0010¤\u0001\u001a\u00020UJ\t\u0010¥\u0001\u001a\u00020UH\u0002J'\u0010¦\u0001\u001a\u00020U2\b\u0010\u0093\u0001\u001a\u00030\u0090\u00012\b\u0010§\u0001\u001a\u00030¨\u0001H\u0082@ø\u0001\u0000¢\u0006\u0003\u0010©\u0001J\u0012\u0010ª\u0001\u001a\u00020UH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\\J\u001b\u0010«\u0001\u001a\u00020U2\u0006\u0010B\u001a\u00020\u0003H\u0087@ø\u0001\u0000¢\u0006\u0003\u0010¬\u0001J\u0017\u0010\u00ad\u0001\u001a\u00020U2\u0006\u0010a\u001a\u00020\u0017H\u0010¢\u0006\u0003\b®\u0001J.\u0010¯\u0001\u001a\u000f\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020U0\u008c\u00012\u0006\u0010a\u001a\u00020\u00172\u000e\u0010i\u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010KH\u0002R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u00020\u00128PX\u0090\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0\u0019X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R(\u0010\u001d\u001a\u001c\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u001f0\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001a0\u00160\u0019X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00170\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010!\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\"X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010#\u001a\u00020$8PX\u0090\u0004¢\u0006\u0006\u001a\u0004\b%\u0010&R\u000e\u0010'\u001a\u00020$X\u0082\u000e¢\u0006\u0002\n\u0000R\u0017\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00070)8F¢\u0006\u0006\u001a\u0004\b*\u0010+R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b,\u0010-R\u000e\u0010.\u001a\u00020/X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u00100\u001a\u0004\u0018\u000101X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u00102\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00103\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u00104\u001a\u00020\u00128BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b5\u0010\u0014R\u0014\u00106\u001a\u00020\u00128BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b7\u0010\u0014R\u0014\u00108\u001a\u00020\u00128BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b9\u0010\u0014R\u0014\u0010:\u001a\u00020\u00128BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b;\u0010\u0014R\u0011\u0010<\u001a\u00020\u00128F¢\u0006\u0006\u001a\u0004\b=\u0010\u0014R\u0014\u0010>\u001a\u00020\u00128BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b?\u0010\u0014R\u000e\u0010@\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010A\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010B\u001a\u00020\u00038PX\u0090\u0004¢\u0006\u0006\u001a\u0004\bC\u0010-R\u0012\u0010D\u001a\u00060ER\u00020\u0000X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010F\u001a\u0004\u0018\u00010GX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010H\u001a\u00020\u00128BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bI\u0010\u0014R\u0014\u0010J\u001a\b\u0012\u0004\u0012\u00020\u001f0KX\u0082\u000e¢\u0006\u0002\n\u0000R \u0010L\u001a\b\u0012\u0004\u0012\u00020\u00070M8FX\u0087\u0004¢\u0006\f\u0012\u0004\bN\u0010O\u001a\u0004\bP\u0010QR\u000e\u0010R\u001a\u00020\u001fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010S\u001a\n\u0012\u0004\u0012\u00020U\u0018\u00010TX\u0082\u000e¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006µ\u0001"}, d2 = {"Landroidx/compose/runtime/Recomposer;", "Landroidx/compose/runtime/CompositionContext;", "effectCoroutineContext", "Lkotlin/coroutines/CoroutineContext;", "(Lkotlin/coroutines/CoroutineContext;)V", "_state", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Landroidx/compose/runtime/Recomposer$State;", "broadcastFrameClock", "Landroidx/compose/runtime/BroadcastFrameClock;", "<set-?>", "", "changeCount", "getChangeCount", "()J", "closeCause", "", "collectingParameterInformation", "", "getCollectingParameterInformation$runtime_release", "()Z", "compositionInvalidations", "", "Landroidx/compose/runtime/ControlledComposition;", "compositionValueStatesAvailable", "", "Landroidx/compose/runtime/MovableContentStateReference;", "Landroidx/compose/runtime/MovableContentState;", "compositionValuesAwaitingInsert", "compositionValuesRemoved", "Landroidx/compose/runtime/MovableContent;", "", "compositionsAwaitingApply", "compositionsRemoved", "", "compoundHashKey", "", "getCompoundHashKey$runtime_release", "()I", "concurrentCompositionsOutstanding", "currentState", "Lkotlinx/coroutines/flow/StateFlow;", "getCurrentState", "()Lkotlinx/coroutines/flow/StateFlow;", "getEffectCoroutineContext", "()Lkotlin/coroutines/CoroutineContext;", "effectJob", "Lkotlinx/coroutines/CompletableJob;", "errorState", "Landroidx/compose/runtime/Recomposer$RecomposerErrorState;", "failedCompositions", "frameClockPaused", "hasBroadcastFrameClockAwaiters", "getHasBroadcastFrameClockAwaiters", "hasBroadcastFrameClockAwaitersLocked", "getHasBroadcastFrameClockAwaitersLocked", "hasConcurrentFrameWorkLocked", "getHasConcurrentFrameWorkLocked", "hasFrameWorkLocked", "getHasFrameWorkLocked", "hasPendingWork", "getHasPendingWork", "hasSchedulingWork", "getHasSchedulingWork", "isClosed", "knownCompositions", "recomposeCoroutineContext", "getRecomposeCoroutineContext$runtime_release", "recomposerInfo", "Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;", "runnerJob", "Lkotlinx/coroutines/Job;", "shouldKeepRecomposing", "getShouldKeepRecomposing", "snapshotInvalidations", "Landroidx/compose/runtime/collection/IdentityArraySet;", SentryThread.JsonKeys.STATE, "Lkotlinx/coroutines/flow/Flow;", "getState$annotations", "()V", "getState", "()Lkotlinx/coroutines/flow/Flow;", "stateLock", "workContinuation", "Lkotlinx/coroutines/CancellableContinuation;", "", "applyAndCheck", SentryStackTrace.JsonKeys.SNAPSHOT, "Landroidx/compose/runtime/snapshots/MutableSnapshot;", "asRecomposerInfo", "Landroidx/compose/runtime/RecomposerInfo;", "awaitIdle", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "awaitWorkAvailable", "cancel", "close", "composeInitial", "composition", "content", "Lkotlin/Function0;", "Landroidx/compose/runtime/Composable;", "composeInitial$runtime_release", "(Landroidx/compose/runtime/ControlledComposition;Lkotlin/jvm/functions/Function2;)V", "composing", ExifInterface.GPS_DIRECTION_TRUE, "modifiedValues", "block", "(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/collection/IdentityArraySet;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "deletedMovableContent", "reference", "deletedMovableContent$runtime_release", "deriveStateLocked", "discardUnusedValues", "insertMovableContent", "insertMovableContent$runtime_release", "invalidate", "invalidate$runtime_release", "invalidateScope", "scope", "Landroidx/compose/runtime/RecomposeScopeImpl;", "invalidateScope$runtime_release", "join", "movableContentStateReleased", "data", "movableContentStateReleased$runtime_release", "movableContentStateResolve", "movableContentStateResolve$runtime_release", "pauseCompositionFrameClock", "performInitialMovableContentInserts", "performInsertValues", "", "references", "performRecompose", "processCompositionError", "e", "Ljava/lang/Exception;", "Lkotlin/Exception;", "failedInitialComposition", "recoverable", "readObserverOf", "Lkotlin/Function1;", "recompositionRunner", "Lkotlin/Function3;", "Lkotlinx/coroutines/CoroutineScope;", "Landroidx/compose/runtime/MonotonicFrameClock;", "Lkotlin/ParameterName;", "name", "parentFrameClock", "Lkotlin/coroutines/Continuation;", "Lkotlin/ExtensionFunctionType;", "(Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "recordComposerModifications", "onEachInvalidComposition", "recordInspectionTable", "table", "Landroidx/compose/runtime/tooling/CompositionData;", "recordInspectionTable$runtime_release", "registerComposition", "registerComposition$runtime_release", "registerRunnerJob", "callingJob", "reportRemovedComposition", "reportRemovedComposition$runtime_release", "resetErrorState", "resumeCompositionFrameClock", "retryFailedCompositions", "runFrameLoop", "frameSignal", "Landroidx/compose/runtime/ProduceFrameSignal;", "(Landroidx/compose/runtime/MonotonicFrameClock;Landroidx/compose/runtime/ProduceFrameSignal;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "runRecomposeAndApplyChanges", "runRecomposeConcurrentlyAndApplyChanges", "(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unregisterComposition", "unregisterComposition$runtime_release", "writeObserverOf", "Companion", "HotReloadable", "RecomposerErrorState", "RecomposerInfoImpl", "State", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class Recomposer extends CompositionContext {
    private final MutableStateFlow<State> _state;
    private final BroadcastFrameClock broadcastFrameClock;
    private long changeCount;
    private Throwable closeCause;
    private final List<ControlledComposition> compositionInvalidations;
    private final Map<MovableContentStateReference, MovableContentState> compositionValueStatesAvailable;
    private final List<MovableContentStateReference> compositionValuesAwaitingInsert;
    private final Map<MovableContent<Object>, List<MovableContentStateReference>> compositionValuesRemoved;
    private final List<ControlledComposition> compositionsAwaitingApply;
    private Set<ControlledComposition> compositionsRemoved;
    private int concurrentCompositionsOutstanding;
    private final CoroutineContext effectCoroutineContext;
    private final CompletableJob effectJob;
    private RecomposerErrorState errorState;
    private List<ControlledComposition> failedCompositions;
    private boolean frameClockPaused;
    private boolean isClosed;
    private final List<ControlledComposition> knownCompositions;
    private final RecomposerInfoImpl recomposerInfo;
    private Job runnerJob;
    private IdentityArraySet<Object> snapshotInvalidations;
    private final Object stateLock;
    private CancellableContinuation<? super Unit> workContinuation;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final int $stable = 8;
    private static final MutableStateFlow<PersistentSet<RecomposerInfoImpl>> _runningRecomposers = StateFlowKt.MutableStateFlow(ExtensionsKt.persistentSetOf());
    private static final AtomicReference<Boolean> _hotReloadEnabled = new AtomicReference<>(false);

    /* compiled from: Recomposer.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Landroidx/compose/runtime/Recomposer$State;", "", "(Ljava/lang/String;I)V", "ShutDown", "ShuttingDown", "Inactive", "InactivePendingWork", "Idle", "PendingWork", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public enum State {
        ShutDown,
        ShuttingDown,
        Inactive,
        InactivePendingWork,
        Idle,
        PendingWork
    }

    @Deprecated(message = "Replaced by currentState as a StateFlow", replaceWith = @ReplaceWith(expression = "currentState", imports = {}))
    public static /* synthetic */ void getState$annotations() {
    }

    public final long getChangeCount() {
        return this.changeCount;
    }

    @Override // androidx.compose.runtime.CompositionContext
    public boolean getCollectingParameterInformation$runtime_release() {
        return false;
    }

    @Override // androidx.compose.runtime.CompositionContext
    public int getCompoundHashKey$runtime_release() {
        return 1000;
    }

    @Override // androidx.compose.runtime.CompositionContext
    public CoroutineContext getEffectCoroutineContext() {
        return this.effectCoroutineContext;
    }

    @Override // androidx.compose.runtime.CompositionContext
    public void recordInspectionTable$runtime_release(Set<CompositionData> table) {
        Intrinsics.checkNotNullParameter(table, "table");
    }

    @Override // androidx.compose.runtime.CompositionContext
    public void registerComposition$runtime_release(ControlledComposition composition) {
        Intrinsics.checkNotNullParameter(composition, "composition");
    }

    public Recomposer(CoroutineContext effectCoroutineContext) {
        Intrinsics.checkNotNullParameter(effectCoroutineContext, "effectCoroutineContext");
        BroadcastFrameClock broadcastFrameClock = new BroadcastFrameClock(new Function0<Unit>() { // from class: androidx.compose.runtime.Recomposer$broadcastFrameClock$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                CancellableContinuation deriveStateLocked;
                MutableStateFlow mutableStateFlow;
                Throwable th;
                Object obj = Recomposer.this.stateLock;
                Recomposer recomposer = Recomposer.this;
                synchronized (obj) {
                    deriveStateLocked = recomposer.deriveStateLocked();
                    mutableStateFlow = recomposer._state;
                    if (((Recomposer.State) mutableStateFlow.getValue()).compareTo(Recomposer.State.ShuttingDown) <= 0) {
                        th = recomposer.closeCause;
                        throw ExceptionsKt.CancellationException("Recomposer shutdown; frame clock awaiter will never resume", th);
                    }
                }
                if (deriveStateLocked != null) {
                    Result.Companion companion = Result.INSTANCE;
                    deriveStateLocked.resumeWith(Result.m5698constructorimpl(Unit.INSTANCE));
                }
            }
        });
        this.broadcastFrameClock = broadcastFrameClock;
        this.stateLock = new Object();
        this.knownCompositions = new ArrayList();
        this.snapshotInvalidations = new IdentityArraySet<>();
        this.compositionInvalidations = new ArrayList();
        this.compositionsAwaitingApply = new ArrayList();
        this.compositionValuesAwaitingInsert = new ArrayList();
        this.compositionValuesRemoved = new LinkedHashMap();
        this.compositionValueStatesAvailable = new LinkedHashMap();
        this._state = StateFlowKt.MutableStateFlow(State.Inactive);
        CompletableJob Job = JobKt.Job((Job) effectCoroutineContext.get(Job.INSTANCE));
        Job.invokeOnCompletion(new Function1<Throwable, Unit>() { // from class: androidx.compose.runtime.Recomposer$effectJob$1$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(final Throwable th) {
                Job job;
                CancellableContinuation cancellableContinuation;
                MutableStateFlow mutableStateFlow;
                MutableStateFlow mutableStateFlow2;
                boolean z;
                CancellableContinuation cancellableContinuation2;
                CancellableContinuation cancellableContinuation3;
                CancellationException CancellationException = ExceptionsKt.CancellationException("Recomposer effect job completed", th);
                Object obj = Recomposer.this.stateLock;
                final Recomposer recomposer = Recomposer.this;
                synchronized (obj) {
                    job = recomposer.runnerJob;
                    cancellableContinuation = null;
                    if (job != null) {
                        mutableStateFlow2 = recomposer._state;
                        mutableStateFlow2.setValue(Recomposer.State.ShuttingDown);
                        z = recomposer.isClosed;
                        if (z) {
                            cancellableContinuation2 = recomposer.workContinuation;
                            if (cancellableContinuation2 != null) {
                                cancellableContinuation3 = recomposer.workContinuation;
                                recomposer.workContinuation = null;
                                job.invokeOnCompletion(new Function1<Throwable, Unit>() { // from class: androidx.compose.runtime.Recomposer$effectJob$1$1$1$1
                                    /* JADX INFO: Access modifiers changed from: package-private */
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Unit invoke(Throwable th2) {
                                        invoke2(th2);
                                        return Unit.INSTANCE;
                                    }

                                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                    public final void invoke2(Throwable th2) {
                                        MutableStateFlow mutableStateFlow3;
                                        Object obj2 = Recomposer.this.stateLock;
                                        Recomposer recomposer2 = Recomposer.this;
                                        Throwable th3 = th;
                                        synchronized (obj2) {
                                            if (th3 == null) {
                                                th3 = null;
                                            } else if (th2 != null) {
                                                if (!(!(th2 instanceof CancellationException))) {
                                                    th2 = null;
                                                }
                                                if (th2 != null) {
                                                    kotlin.ExceptionsKt.addSuppressed(th3, th2);
                                                }
                                            }
                                            recomposer2.closeCause = th3;
                                            mutableStateFlow3 = recomposer2._state;
                                            mutableStateFlow3.setValue(Recomposer.State.ShutDown);
                                            Unit unit = Unit.INSTANCE;
                                        }
                                    }
                                });
                                cancellableContinuation = cancellableContinuation3;
                            }
                        } else {
                            job.cancel(CancellationException);
                        }
                        cancellableContinuation3 = null;
                        recomposer.workContinuation = null;
                        job.invokeOnCompletion(new Function1<Throwable, Unit>() { // from class: androidx.compose.runtime.Recomposer$effectJob$1$1$1$1
                            /* JADX INFO: Access modifiers changed from: package-private */
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(Throwable th2) {
                                invoke2(th2);
                                return Unit.INSTANCE;
                            }

                            /* renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(Throwable th2) {
                                MutableStateFlow mutableStateFlow3;
                                Object obj2 = Recomposer.this.stateLock;
                                Recomposer recomposer2 = Recomposer.this;
                                Throwable th3 = th;
                                synchronized (obj2) {
                                    if (th3 == null) {
                                        th3 = null;
                                    } else if (th2 != null) {
                                        if (!(!(th2 instanceof CancellationException))) {
                                            th2 = null;
                                        }
                                        if (th2 != null) {
                                            kotlin.ExceptionsKt.addSuppressed(th3, th2);
                                        }
                                    }
                                    recomposer2.closeCause = th3;
                                    mutableStateFlow3 = recomposer2._state;
                                    mutableStateFlow3.setValue(Recomposer.State.ShutDown);
                                    Unit unit = Unit.INSTANCE;
                                }
                            }
                        });
                        cancellableContinuation = cancellableContinuation3;
                    } else {
                        recomposer.closeCause = CancellationException;
                        mutableStateFlow = recomposer._state;
                        mutableStateFlow.setValue(Recomposer.State.ShutDown);
                        Unit unit = Unit.INSTANCE;
                    }
                }
                if (cancellableContinuation != null) {
                    Result.Companion companion = Result.INSTANCE;
                    cancellableContinuation.resumeWith(Result.m5698constructorimpl(Unit.INSTANCE));
                }
            }
        });
        this.effectJob = Job;
        this.effectCoroutineContext = effectCoroutineContext.plus(broadcastFrameClock).plus(Job);
        this.recomposerInfo = new RecomposerInfoImpl();
    }

    @Override // androidx.compose.runtime.CompositionContext
    public CoroutineContext getRecomposeCoroutineContext$runtime_release() {
        return EmptyCoroutineContext.INSTANCE;
    }

    private final boolean getHasBroadcastFrameClockAwaitersLocked() {
        return !this.frameClockPaused && this.broadcastFrameClock.getHasAwaiters();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CancellableContinuation<Unit> deriveStateLocked() {
        State state;
        if (this._state.getValue().compareTo(State.ShuttingDown) <= 0) {
            this.knownCompositions.clear();
            this.snapshotInvalidations = new IdentityArraySet<>();
            this.compositionInvalidations.clear();
            this.compositionsAwaitingApply.clear();
            this.compositionValuesAwaitingInsert.clear();
            this.failedCompositions = null;
            CancellableContinuation<? super Unit> cancellableContinuation = this.workContinuation;
            if (cancellableContinuation != null) {
                CancellableContinuation.DefaultImpls.cancel$default(cancellableContinuation, null, 1, null);
            }
            this.workContinuation = null;
            this.errorState = null;
            return null;
        }
        if (this.errorState != null) {
            state = State.Inactive;
        } else if (this.runnerJob == null) {
            this.snapshotInvalidations = new IdentityArraySet<>();
            this.compositionInvalidations.clear();
            state = getHasBroadcastFrameClockAwaitersLocked() ? State.InactivePendingWork : State.Inactive;
        } else if ((!this.compositionInvalidations.isEmpty()) || this.snapshotInvalidations.isNotEmpty() || (!this.compositionsAwaitingApply.isEmpty()) || (!this.compositionValuesAwaitingInsert.isEmpty()) || this.concurrentCompositionsOutstanding > 0 || getHasBroadcastFrameClockAwaitersLocked()) {
            state = State.PendingWork;
        } else {
            state = State.Idle;
        }
        this._state.setValue(state);
        if (state != State.PendingWork) {
            return null;
        }
        CancellableContinuation cancellableContinuation2 = this.workContinuation;
        this.workContinuation = null;
        return cancellableContinuation2;
    }

    public final Flow<State> getState() {
        return getCurrentState();
    }

    public final StateFlow<State> getCurrentState() {
        return this._state;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Recomposer.kt */
    @Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017J\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019J\u0006\u0010\u001a\u001a\u00020\u0015J\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001cR\u0014\u0010\u0003\u001a\u00020\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u00108VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u001e"}, d2 = {"Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;", "Landroidx/compose/runtime/RecomposerInfo;", "(Landroidx/compose/runtime/Recomposer;)V", "changeCount", "", "getChangeCount", "()J", "currentError", "Landroidx/compose/runtime/RecomposerErrorInfo;", "getCurrentError", "()Landroidx/compose/runtime/RecomposerErrorInfo;", "hasPendingWork", "", "getHasPendingWork", "()Z", SentryThread.JsonKeys.STATE, "Lkotlinx/coroutines/flow/Flow;", "Landroidx/compose/runtime/Recomposer$State;", "getState", "()Lkotlinx/coroutines/flow/Flow;", "invalidateGroupsWithKey", "", "key", "", "resetErrorState", "Landroidx/compose/runtime/Recomposer$RecomposerErrorState;", "retryFailedCompositions", "saveStateAndDisposeForHotReload", "", "Landroidx/compose/runtime/Recomposer$HotReloadable;", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public final class RecomposerInfoImpl implements RecomposerInfo {
        public RecomposerInfoImpl() {
        }

        @Override // androidx.compose.runtime.RecomposerInfo
        public Flow<State> getState() {
            return Recomposer.this.getCurrentState();
        }

        @Override // androidx.compose.runtime.RecomposerInfo
        public boolean getHasPendingWork() {
            return Recomposer.this.getHasPendingWork();
        }

        @Override // androidx.compose.runtime.RecomposerInfo
        public long getChangeCount() {
            return Recomposer.this.getChangeCount();
        }

        public final RecomposerErrorInfo getCurrentError() {
            RecomposerErrorState recomposerErrorState;
            Object obj = Recomposer.this.stateLock;
            Recomposer recomposer = Recomposer.this;
            synchronized (obj) {
                recomposerErrorState = recomposer.errorState;
            }
            return recomposerErrorState;
        }

        public final void invalidateGroupsWithKey(int key) {
            List mutableList;
            Object obj = Recomposer.this.stateLock;
            Recomposer recomposer = Recomposer.this;
            synchronized (obj) {
                mutableList = CollectionsKt.toMutableList((Collection) recomposer.knownCompositions);
            }
            ArrayList arrayList = new ArrayList(mutableList.size());
            int size = mutableList.size();
            for (int i = 0; i < size; i++) {
                ControlledComposition controlledComposition = (ControlledComposition) mutableList.get(i);
                CompositionImpl compositionImpl = controlledComposition instanceof CompositionImpl ? (CompositionImpl) controlledComposition : null;
                if (compositionImpl != null) {
                    arrayList.add(compositionImpl);
                }
            }
            ArrayList arrayList2 = arrayList;
            int size2 = arrayList2.size();
            for (int i2 = 0; i2 < size2; i2++) {
                ((CompositionImpl) arrayList2.get(i2)).invalidateGroupsWithKey(key);
            }
        }

        public final List<HotReloadable> saveStateAndDisposeForHotReload() {
            List mutableList;
            Object obj = Recomposer.this.stateLock;
            Recomposer recomposer = Recomposer.this;
            synchronized (obj) {
                mutableList = CollectionsKt.toMutableList((Collection) recomposer.knownCompositions);
            }
            ArrayList arrayList = new ArrayList(mutableList.size());
            int size = mutableList.size();
            for (int i = 0; i < size; i++) {
                ControlledComposition controlledComposition = (ControlledComposition) mutableList.get(i);
                CompositionImpl compositionImpl = controlledComposition instanceof CompositionImpl ? (CompositionImpl) controlledComposition : null;
                if (compositionImpl != null) {
                    arrayList.add(compositionImpl);
                }
            }
            ArrayList arrayList2 = arrayList;
            ArrayList arrayList3 = new ArrayList(arrayList2.size());
            int size2 = arrayList2.size();
            for (int i2 = 0; i2 < size2; i2++) {
                HotReloadable hotReloadable = new HotReloadable((CompositionImpl) arrayList2.get(i2));
                hotReloadable.clearContent();
                arrayList3.add(hotReloadable);
            }
            return arrayList3;
        }

        public final RecomposerErrorState resetErrorState() {
            return Recomposer.this.resetErrorState();
        }

        public final void retryFailedCompositions() {
            Recomposer.this.retryFailedCompositions();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Recomposer.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\n\u001a\u00020\u0007J\u0006\u0010\u000b\u001a\u00020\u0007J\u0006\u0010\f\u001a\u00020\u0007R\u001b\u0010\u0005\u001a\r\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\b\bX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Landroidx/compose/runtime/Recomposer$HotReloadable;", "", "composition", "Landroidx/compose/runtime/CompositionImpl;", "(Landroidx/compose/runtime/CompositionImpl;)V", "composable", "Lkotlin/Function0;", "", "Landroidx/compose/runtime/Composable;", "Lkotlin/jvm/functions/Function2;", "clearContent", "recompose", "resetContent", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class HotReloadable {
        private Function2<? super Composer, ? super Integer, Unit> composable;
        private final CompositionImpl composition;

        public HotReloadable(CompositionImpl composition) {
            Intrinsics.checkNotNullParameter(composition, "composition");
            this.composition = composition;
            this.composable = composition.getComposable();
        }

        public final void clearContent() {
            if (this.composition.getIsRoot()) {
                this.composition.setContent(ComposableSingletons$RecomposerKt.INSTANCE.m2250getLambda1$runtime_release());
            }
        }

        public final void resetContent() {
            this.composition.setComposable(this.composable);
        }

        public final void recompose() {
            if (this.composition.getIsRoot()) {
                this.composition.setContent(this.composable);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Recomposer.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0010\u0004\u001a\u00060\u0005j\u0002`\u0006¢\u0006\u0002\u0010\u0007R\u0018\u0010\u0004\u001a\u00060\u0005j\u0002`\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/compose/runtime/Recomposer$RecomposerErrorState;", "Landroidx/compose/runtime/RecomposerErrorInfo;", "recoverable", "", "cause", "Ljava/lang/Exception;", "Lkotlin/Exception;", "(ZLjava/lang/Exception;)V", "getCause", "()Ljava/lang/Exception;", "getRecoverable", "()Z", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class RecomposerErrorState implements RecomposerErrorInfo {
        private final Exception cause;
        private final boolean recoverable;

        @Override // androidx.compose.runtime.RecomposerErrorInfo
        public Exception getCause() {
            return this.cause;
        }

        @Override // androidx.compose.runtime.RecomposerErrorInfo
        public boolean getRecoverable() {
            return this.recoverable;
        }

        public RecomposerErrorState(boolean z, Exception cause) {
            Intrinsics.checkNotNullParameter(cause, "cause");
            this.recoverable = z;
            this.cause = cause;
        }
    }

    public final RecomposerInfo asRecomposerInfo() {
        return this.recomposerInfo;
    }

    private final void recordComposerModifications(Function1<? super ControlledComposition, Unit> onEachInvalidComposition) {
        IdentityArraySet identityArraySet = this.snapshotInvalidations;
        if (identityArraySet.isNotEmpty()) {
            List list = this.knownCompositions;
            int size = list.size();
            for (int i = 0; i < size; i++) {
                ((ControlledComposition) list.get(i)).recordModificationsOf(identityArraySet);
            }
            this.snapshotInvalidations = new IdentityArraySet();
        }
        List list2 = this.compositionInvalidations;
        int size2 = list2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            onEachInvalidComposition.invoke(list2.get(i2));
        }
        this.compositionInvalidations.clear();
        if (deriveStateLocked() != null) {
            throw new IllegalStateException("called outside of runRecomposeAndApplyChanges".toString());
        }
    }

    public final Object runRecomposeAndApplyChanges(Continuation<? super Unit> continuation) {
        Object recompositionRunner = recompositionRunner(new Recomposer$runRecomposeAndApplyChanges$2(this, null), continuation);
        return recompositionRunner == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? recompositionRunner : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void processCompositionError$default(Recomposer recomposer, Exception exc, ControlledComposition controlledComposition, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            controlledComposition = null;
        }
        if ((i & 4) != 0) {
            z = false;
        }
        recomposer.processCompositionError(exc, controlledComposition, z);
    }

    private final void processCompositionError(Exception e, ControlledComposition failedInitialComposition, boolean recoverable) {
        Boolean bool = _hotReloadEnabled.get();
        Intrinsics.checkNotNullExpressionValue(bool, "_hotReloadEnabled.get()");
        if (!bool.booleanValue()) {
            throw e;
        }
        if (e instanceof ComposeRuntimeError) {
            throw e;
        }
        synchronized (this.stateLock) {
            ActualAndroid_androidKt.logError("Error was captured in composition while live edit was enabled.", e);
            this.compositionsAwaitingApply.clear();
            this.compositionInvalidations.clear();
            this.snapshotInvalidations = new IdentityArraySet<>();
            this.compositionValuesAwaitingInsert.clear();
            this.compositionValuesRemoved.clear();
            this.compositionValueStatesAvailable.clear();
            this.errorState = new RecomposerErrorState(recoverable, e);
            if (failedInitialComposition != null) {
                ArrayList arrayList = this.failedCompositions;
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    this.failedCompositions = arrayList;
                }
                if (!arrayList.contains(failedInitialComposition)) {
                    arrayList.add(failedInitialComposition);
                }
                this.knownCompositions.remove(failedInitialComposition);
            }
            deriveStateLocked();
        }
    }

    public final Object runRecomposeConcurrentlyAndApplyChanges(CoroutineContext coroutineContext, Continuation<? super Unit> continuation) {
        Object recompositionRunner = recompositionRunner(new Recomposer$runRecomposeConcurrentlyAndApplyChanges$2(coroutineContext, this, null), continuation);
        return recompositionRunner == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? recompositionRunner : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x008a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00a8 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /* JADX WARN: Type inference failed for: r6v10, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r6v7, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r7v10, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r7v7, types: [java.util.List] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x00a6 -> B:11:0x0040). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object runFrameLoop(androidx.compose.runtime.MonotonicFrameClock r7, final androidx.compose.runtime.ProduceFrameSignal r8, kotlin.coroutines.Continuation<? super kotlin.Unit> r9) {
        /*
            r6 = this;
            boolean r0 = r9 instanceof androidx.compose.runtime.Recomposer$runFrameLoop$1
            if (r0 == 0) goto L14
            r0 = r9
            androidx.compose.runtime.Recomposer$runFrameLoop$1 r0 = (androidx.compose.runtime.Recomposer$runFrameLoop$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r9 = r0.label
            int r9 = r9 - r2
            r0.label = r9
            goto L19
        L14:
            androidx.compose.runtime.Recomposer$runFrameLoop$1 r0 = new androidx.compose.runtime.Recomposer$runFrameLoop$1
            r0.<init>(r6, r9)
        L19:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L65
            if (r2 == r4) goto L4d
            if (r2 != r3) goto L45
            java.lang.Object r6 = r0.L$4
            java.util.List r6 = (java.util.List) r6
            java.lang.Object r7 = r0.L$3
            java.util.List r7 = (java.util.List) r7
            java.lang.Object r8 = r0.L$2
            androidx.compose.runtime.ProduceFrameSignal r8 = (androidx.compose.runtime.ProduceFrameSignal) r8
            java.lang.Object r2 = r0.L$1
            androidx.compose.runtime.MonotonicFrameClock r2 = (androidx.compose.runtime.MonotonicFrameClock) r2
            java.lang.Object r5 = r0.L$0
            androidx.compose.runtime.Recomposer r5 = (androidx.compose.runtime.Recomposer) r5
            kotlin.ResultKt.throwOnFailure(r9)
        L40:
            r9 = r7
            r7 = r2
            r2 = r6
            r6 = r5
            goto L76
        L45:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L4d:
            java.lang.Object r6 = r0.L$4
            java.util.List r6 = (java.util.List) r6
            java.lang.Object r7 = r0.L$3
            java.util.List r7 = (java.util.List) r7
            java.lang.Object r8 = r0.L$2
            androidx.compose.runtime.ProduceFrameSignal r8 = (androidx.compose.runtime.ProduceFrameSignal) r8
            java.lang.Object r2 = r0.L$1
            androidx.compose.runtime.MonotonicFrameClock r2 = (androidx.compose.runtime.MonotonicFrameClock) r2
            java.lang.Object r5 = r0.L$0
            androidx.compose.runtime.Recomposer r5 = (androidx.compose.runtime.Recomposer) r5
            kotlin.ResultKt.throwOnFailure(r9)
            goto L8f
        L65:
            kotlin.ResultKt.throwOnFailure(r9)
            java.util.ArrayList r9 = new java.util.ArrayList
            r9.<init>()
            java.util.List r9 = (java.util.List) r9
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            java.util.List r2 = (java.util.List) r2
        L76:
            java.lang.Object r5 = r6.stateLock
            r0.L$0 = r6
            r0.L$1 = r7
            r0.L$2 = r8
            r0.L$3 = r9
            r0.L$4 = r2
            r0.label = r4
            java.lang.Object r5 = r8.awaitFrameRequest(r5, r0)
            if (r5 != r1) goto L8b
            return r1
        L8b:
            r5 = r6
            r6 = r2
            r2 = r7
            r7 = r9
        L8f:
            androidx.compose.runtime.Recomposer$runFrameLoop$2 r9 = new androidx.compose.runtime.Recomposer$runFrameLoop$2
            r9.<init>()
            kotlin.jvm.functions.Function1 r9 = (kotlin.jvm.functions.Function1) r9
            r0.L$0 = r5
            r0.L$1 = r2
            r0.L$2 = r8
            r0.L$3 = r7
            r0.L$4 = r6
            r0.label = r3
            java.lang.Object r9 = r2.withFrameNanos(r9, r0)
            if (r9 != r1) goto L40
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.Recomposer.runFrameLoop(androidx.compose.runtime.MonotonicFrameClock, androidx.compose.runtime.ProduceFrameSignal, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object awaitWorkAvailable(Continuation<? super Unit> continuation) {
        if (getHasSchedulingWork()) {
            return Unit.INSTANCE;
        }
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        CancellableContinuationImpl cancellableContinuationImpl2 = cancellableContinuationImpl;
        synchronized (this.stateLock) {
            if (!getHasSchedulingWork()) {
                this.workContinuation = cancellableContinuationImpl2;
                cancellableContinuationImpl2 = null;
            }
        }
        if (cancellableContinuationImpl2 != null) {
            Result.Companion companion = Result.INSTANCE;
            cancellableContinuationImpl2.resumeWith(Result.m5698constructorimpl(Unit.INSTANCE));
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? result : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object recompositionRunner(Function3<? super CoroutineScope, ? super MonotonicFrameClock, ? super Continuation<? super Unit>, ? extends Object> function3, Continuation<? super Unit> continuation) {
        Object withContext = BuildersKt.withContext(this.broadcastFrameClock, new Recomposer$recompositionRunner$2(this, function3, MonotonicFrameClockKt.getMonotonicFrameClock(continuation.getContext()), null), continuation);
        return withContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? withContext : Unit.INSTANCE;
    }

    public final void close() {
        if (this.effectJob.complete()) {
            synchronized (this.stateLock) {
                this.isClosed = true;
                Unit unit = Unit.INSTANCE;
            }
        }
    }

    public final Object join(Continuation<? super Unit> continuation) {
        Object first = FlowKt.first(getCurrentState(), new Recomposer$join$2(null), continuation);
        return first == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? first : Unit.INSTANCE;
    }

    @Override // androidx.compose.runtime.CompositionContext
    public void composeInitial$runtime_release(ControlledComposition composition, Function2<? super Composer, ? super Integer, Unit> content) {
        Intrinsics.checkNotNullParameter(composition, "composition");
        Intrinsics.checkNotNullParameter(content, "content");
        boolean isComposing = composition.isComposing();
        try {
            MutableSnapshot takeMutableSnapshot = Snapshot.INSTANCE.takeMutableSnapshot(readObserverOf(composition), writeObserverOf(composition, null));
            try {
                MutableSnapshot mutableSnapshot = takeMutableSnapshot;
                Snapshot makeCurrent = mutableSnapshot.makeCurrent();
                try {
                    composition.composeContent(content);
                    Unit unit = Unit.INSTANCE;
                    if (!isComposing) {
                        Snapshot.INSTANCE.notifyObjectsInitialized();
                    }
                    synchronized (this.stateLock) {
                        if (this._state.getValue().compareTo(State.ShuttingDown) > 0 && !this.knownCompositions.contains(composition)) {
                            this.knownCompositions.add(composition);
                        }
                        Unit unit2 = Unit.INSTANCE;
                    }
                    try {
                        performInitialMovableContentInserts(composition);
                        try {
                            composition.applyChanges();
                            composition.applyLateChanges();
                            if (isComposing) {
                                return;
                            }
                            Snapshot.INSTANCE.notifyObjectsInitialized();
                        } catch (Exception e) {
                            processCompositionError$default(this, e, null, false, 6, null);
                        }
                    } catch (Exception e2) {
                        processCompositionError(e2, composition, true);
                    }
                } finally {
                    mutableSnapshot.restoreCurrent(makeCurrent);
                }
            } finally {
                applyAndCheck(takeMutableSnapshot);
            }
        } catch (Exception e3) {
            processCompositionError(e3, composition, true);
        }
    }

    private static final void performInitialMovableContentInserts$fillToInsert(List<MovableContentStateReference> list, Recomposer recomposer, ControlledComposition controlledComposition) {
        list.clear();
        synchronized (recomposer.stateLock) {
            Iterator<MovableContentStateReference> it = recomposer.compositionValuesAwaitingInsert.iterator();
            while (it.hasNext()) {
                MovableContentStateReference next = it.next();
                if (Intrinsics.areEqual(next.getComposition(), controlledComposition)) {
                    list.add(next);
                    it.remove();
                }
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ControlledComposition performRecompose(final ControlledComposition composition, final IdentityArraySet<Object> modifiedValues) {
        Set<ControlledComposition> set;
        if (composition.isComposing() || composition.getDisposed() || ((set = this.compositionsRemoved) != null && set.contains(composition))) {
            return null;
        }
        MutableSnapshot takeMutableSnapshot = Snapshot.INSTANCE.takeMutableSnapshot(readObserverOf(composition), writeObserverOf(composition, modifiedValues));
        try {
            MutableSnapshot mutableSnapshot = takeMutableSnapshot;
            Snapshot makeCurrent = mutableSnapshot.makeCurrent();
            if (modifiedValues != null) {
                try {
                    if (modifiedValues.isNotEmpty()) {
                        composition.prepareCompose(new Function0<Unit>() { // from class: androidx.compose.runtime.Recomposer$performRecompose$1$1
                            /* JADX INFO: Access modifiers changed from: package-private */
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(0);
                            }

                            @Override // kotlin.jvm.functions.Function0
                            public /* bridge */ /* synthetic */ Unit invoke() {
                                invoke2();
                                return Unit.INSTANCE;
                            }

                            /* renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2() {
                                IdentityArraySet<Object> identityArraySet = modifiedValues;
                                ControlledComposition controlledComposition = composition;
                                Object[] values = identityArraySet.getValues();
                                int size = identityArraySet.size();
                                for (int i = 0; i < size; i++) {
                                    Object obj = values[i];
                                    Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type T of androidx.compose.runtime.collection.IdentityArraySet");
                                    controlledComposition.recordWriteOf(obj);
                                }
                            }
                        });
                    }
                } catch (Throwable th) {
                    mutableSnapshot.restoreCurrent(makeCurrent);
                    throw th;
                }
            }
            boolean recompose = composition.recompose();
            mutableSnapshot.restoreCurrent(makeCurrent);
            if (recompose) {
                return composition;
            }
            return null;
        } finally {
            applyAndCheck(takeMutableSnapshot);
        }
    }

    private final Function1<Object, Unit> readObserverOf(final ControlledComposition composition) {
        return new Function1<Object, Unit>() { // from class: androidx.compose.runtime.Recomposer$readObserverOf$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Object obj) {
                invoke2(obj);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Object value) {
                Intrinsics.checkNotNullParameter(value, "value");
                ControlledComposition.this.recordReadOf(value);
            }
        };
    }

    private final Function1<Object, Unit> writeObserverOf(final ControlledComposition composition, final IdentityArraySet<Object> modifiedValues) {
        return new Function1<Object, Unit>() { // from class: androidx.compose.runtime.Recomposer$writeObserverOf$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Object obj) {
                invoke2(obj);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Object value) {
                Intrinsics.checkNotNullParameter(value, "value");
                ControlledComposition.this.recordWriteOf(value);
                IdentityArraySet<Object> identityArraySet = modifiedValues;
                if (identityArraySet != null) {
                    identityArraySet.add(value);
                }
            }
        };
    }

    private final <T> T composing(ControlledComposition composition, IdentityArraySet<Object> modifiedValues, Function0<? extends T> block) {
        MutableSnapshot takeMutableSnapshot = Snapshot.INSTANCE.takeMutableSnapshot(readObserverOf(composition), writeObserverOf(composition, modifiedValues));
        try {
            MutableSnapshot mutableSnapshot = takeMutableSnapshot;
            Snapshot makeCurrent = mutableSnapshot.makeCurrent();
            try {
                return block.invoke();
            } finally {
                InlineMarker.finallyStart(1);
                mutableSnapshot.restoreCurrent(makeCurrent);
                InlineMarker.finallyEnd(1);
            }
        } finally {
            InlineMarker.finallyStart(1);
            applyAndCheck(takeMutableSnapshot);
            InlineMarker.finallyEnd(1);
        }
    }

    private final void applyAndCheck(MutableSnapshot snapshot) {
        try {
            if (snapshot.apply() instanceof SnapshotApplyResult.Failure) {
                throw new IllegalStateException("Unsupported concurrent change during composition. A state object was modified by composition as well as being modified outside composition.".toString());
            }
        } finally {
            snapshot.dispose();
        }
    }

    private final boolean getHasFrameWorkLocked() {
        return (this.compositionInvalidations.isEmpty() ^ true) || getHasBroadcastFrameClockAwaitersLocked();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean getHasConcurrentFrameWorkLocked() {
        return (this.compositionsAwaitingApply.isEmpty() ^ true) || getHasBroadcastFrameClockAwaitersLocked();
    }

    public final Object awaitIdle(Continuation<? super Unit> continuation) {
        Object collect = FlowKt.collect(FlowKt.takeWhile(getCurrentState(), new Recomposer$awaitIdle$2(null)), continuation);
        return collect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? collect : Unit.INSTANCE;
    }

    /* compiled from: Recomposer.kt */
    @Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u000b\b\u0087\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0013\u001a\u00020\u00142\n\u0010\u0015\u001a\u00060\u000bR\u00020\fH\u0002J\r\u0010\u0016\u001a\u00020\u0014H\u0000¢\u0006\u0002\b\u0017J\u0013\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0019H\u0000¢\u0006\u0002\b\u001bJ\u0015\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u001eH\u0000¢\u0006\u0002\b\u001fJ\u0015\u0010 \u001a\u00020\u00142\u0006\u0010!\u001a\u00020\u0001H\u0000¢\u0006\u0002\b\"J\u0014\u0010#\u001a\u00020\u00142\n\u0010\u0015\u001a\u00060\u000bR\u00020\fH\u0002J\r\u0010$\u001a\u00020\u0001H\u0000¢\u0006\u0002\b%J\u0015\u0010&\u001a\u00020\u00142\u0006\u0010'\u001a\u00020\u0005H\u0000¢\u0006\u0002\b(R.\u0010\u0003\u001a\"\u0012\f\u0012\n \u0006*\u0004\u0018\u00010\u00050\u00050\u0004j\u0010\u0012\f\u0012\n \u0006*\u0004\u0018\u00010\u00050\u0005`\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\b\u001a\u0012\u0012\u000e\u0012\f\u0012\b\u0012\u00060\u000bR\u00020\f0\n0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00100\u000f0\u000e8F¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012¨\u0006)"}, d2 = {"Landroidx/compose/runtime/Recomposer$Companion;", "", "()V", "_hotReloadEnabled", "Ljava/util/concurrent/atomic/AtomicReference;", "", "kotlin.jvm.PlatformType", "Landroidx/compose/runtime/AtomicReference;", "_runningRecomposers", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;", "Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;", "Landroidx/compose/runtime/Recomposer;", "runningRecomposers", "Lkotlinx/coroutines/flow/StateFlow;", "", "Landroidx/compose/runtime/RecomposerInfo;", "getRunningRecomposers", "()Lkotlinx/coroutines/flow/StateFlow;", "addRunning", "", "info", "clearErrors", "clearErrors$runtime_release", "getCurrentErrors", "", "Landroidx/compose/runtime/RecomposerErrorInfo;", "getCurrentErrors$runtime_release", "invalidateGroupsWithKey", "key", "", "invalidateGroupsWithKey$runtime_release", "loadStateAndComposeForHotReload", "token", "loadStateAndComposeForHotReload$runtime_release", "removeRunning", "saveStateAndDisposeForHotReload", "saveStateAndDisposeForHotReload$runtime_release", "setHotReloadEnabled", "value", "setHotReloadEnabled$runtime_release", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final StateFlow<Set<RecomposerInfo>> getRunningRecomposers() {
            return Recomposer._runningRecomposers;
        }

        public final void setHotReloadEnabled$runtime_release(boolean value) {
            Recomposer._hotReloadEnabled.set(Boolean.valueOf(value));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void addRunning(RecomposerInfoImpl info) {
            PersistentSet persistentSet;
            PersistentSet add;
            do {
                persistentSet = (PersistentSet) Recomposer._runningRecomposers.getValue();
                add = persistentSet.add((PersistentSet) info);
                if (persistentSet == add) {
                    return;
                }
            } while (!Recomposer._runningRecomposers.compareAndSet(persistentSet, add));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void removeRunning(RecomposerInfoImpl info) {
            PersistentSet persistentSet;
            PersistentSet remove;
            do {
                persistentSet = (PersistentSet) Recomposer._runningRecomposers.getValue();
                remove = persistentSet.remove((PersistentSet) info);
                if (persistentSet == remove) {
                    return;
                }
            } while (!Recomposer._runningRecomposers.compareAndSet(persistentSet, remove));
        }

        public final Object saveStateAndDisposeForHotReload$runtime_release() {
            Recomposer._hotReloadEnabled.set(true);
            Iterable iterable = (Iterable) Recomposer._runningRecomposers.getValue();
            ArrayList arrayList = new ArrayList();
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                CollectionsKt.addAll(arrayList, ((RecomposerInfoImpl) it.next()).saveStateAndDisposeForHotReload());
            }
            return arrayList;
        }

        public final void loadStateAndComposeForHotReload$runtime_release(Object token) {
            Intrinsics.checkNotNullParameter(token, "token");
            Recomposer._hotReloadEnabled.set(true);
            Iterator it = ((Iterable) Recomposer._runningRecomposers.getValue()).iterator();
            while (it.hasNext()) {
                ((RecomposerInfoImpl) it.next()).resetErrorState();
            }
            List list = (List) token;
            int size = list.size();
            for (int i = 0; i < size; i++) {
                ((HotReloadable) list.get(i)).resetContent();
            }
            int size2 = list.size();
            for (int i2 = 0; i2 < size2; i2++) {
                ((HotReloadable) list.get(i2)).recompose();
            }
            Iterator it2 = ((Iterable) Recomposer._runningRecomposers.getValue()).iterator();
            while (it2.hasNext()) {
                ((RecomposerInfoImpl) it2.next()).retryFailedCompositions();
            }
        }

        public final void invalidateGroupsWithKey$runtime_release(int key) {
            Recomposer._hotReloadEnabled.set(true);
            for (RecomposerInfoImpl recomposerInfoImpl : (Iterable) Recomposer._runningRecomposers.getValue()) {
                RecomposerErrorInfo currentError = recomposerInfoImpl.getCurrentError();
                if (currentError == null || currentError.getRecoverable()) {
                    recomposerInfoImpl.resetErrorState();
                    recomposerInfoImpl.invalidateGroupsWithKey(key);
                    recomposerInfoImpl.retryFailedCompositions();
                }
            }
        }

        public final List<RecomposerErrorInfo> getCurrentErrors$runtime_release() {
            Iterable iterable = (Iterable) Recomposer._runningRecomposers.getValue();
            ArrayList arrayList = new ArrayList();
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                RecomposerErrorInfo currentError = ((RecomposerInfoImpl) it.next()).getCurrentError();
                if (currentError != null) {
                    arrayList.add(currentError);
                }
            }
            return arrayList;
        }

        public final void clearErrors$runtime_release() {
            Iterable iterable = (Iterable) Recomposer._runningRecomposers.getValue();
            ArrayList arrayList = new ArrayList();
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                RecomposerErrorState resetErrorState = ((RecomposerInfoImpl) it.next()).resetErrorState();
                if (resetErrorState != null) {
                    arrayList.add(resetErrorState);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean getHasBroadcastFrameClockAwaiters() {
        boolean hasBroadcastFrameClockAwaitersLocked;
        synchronized (this.stateLock) {
            hasBroadcastFrameClockAwaitersLocked = getHasBroadcastFrameClockAwaitersLocked();
        }
        return hasBroadcastFrameClockAwaitersLocked;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean getShouldKeepRecomposing() {
        boolean z;
        synchronized (this.stateLock) {
            z = !this.isClosed;
        }
        if (z) {
            return true;
        }
        Iterator<Job> it = this.effectJob.getChildren().iterator();
        while (it.hasNext()) {
            if (it.next().isActive()) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean recordComposerModifications() {
        List mutableList;
        boolean hasFrameWorkLocked;
        synchronized (this.stateLock) {
            if (this.snapshotInvalidations.isEmpty()) {
                return getHasFrameWorkLocked();
            }
            IdentityArraySet<Object> identityArraySet = this.snapshotInvalidations;
            this.snapshotInvalidations = new IdentityArraySet<>();
            synchronized (this.stateLock) {
                mutableList = CollectionsKt.toMutableList((Collection) this.knownCompositions);
            }
            try {
                Recomposer recomposer = this;
                int size = mutableList.size();
                for (int i = 0; i < size; i++) {
                    ((ControlledComposition) mutableList.get(i)).recordModificationsOf(identityArraySet);
                    if (this._state.getValue().compareTo(State.ShuttingDown) <= 0) {
                        break;
                    }
                }
                this.snapshotInvalidations = new IdentityArraySet<>();
                synchronized (this.stateLock) {
                    if (deriveStateLocked() != null) {
                        throw new IllegalStateException("called outside of runRecomposeAndApplyChanges".toString());
                    }
                    hasFrameWorkLocked = getHasFrameWorkLocked();
                }
                return hasFrameWorkLocked;
            } catch (Throwable th) {
                synchronized (this.stateLock) {
                    this.snapshotInvalidations.addAll((Collection<? extends Object>) identityArraySet);
                    Unit unit = Unit.INSTANCE;
                    throw th;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void registerRunnerJob(Job callingJob) {
        synchronized (this.stateLock) {
            Throwable th = this.closeCause;
            if (th != null) {
                throw th;
            }
            if (this._state.getValue().compareTo(State.ShuttingDown) <= 0) {
                throw new IllegalStateException("Recomposer shut down".toString());
            }
            if (this.runnerJob != null) {
                throw new IllegalStateException("Recomposer already running".toString());
            }
            this.runnerJob = callingJob;
            deriveStateLocked();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final RecomposerErrorState resetErrorState() {
        RecomposerErrorState recomposerErrorState;
        synchronized (this.stateLock) {
            recomposerErrorState = this.errorState;
            if (recomposerErrorState != null) {
                this.errorState = null;
                deriveStateLocked();
            }
        }
        return recomposerErrorState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void retryFailedCompositions() {
        List<ControlledComposition> list;
        synchronized (this.stateLock) {
            list = this.failedCompositions;
            this.failedCompositions = null;
        }
        if (list == null) {
            return;
        }
        while (!list.isEmpty()) {
            try {
                ControlledComposition controlledComposition = (ControlledComposition) CollectionsKt.removeLast(list);
                if (controlledComposition instanceof CompositionImpl) {
                    controlledComposition.invalidateAll();
                    controlledComposition.setContent(((CompositionImpl) controlledComposition).getComposable());
                    if (this.errorState != null) {
                        break;
                    }
                }
            } catch (Throwable th) {
                if (!list.isEmpty()) {
                    synchronized (this.stateLock) {
                        List<ControlledComposition> list2 = this.failedCompositions;
                        if (list2 != null) {
                            list2.addAll(list);
                            if (list2 != null) {
                                list = list2;
                            }
                        }
                        this.failedCompositions = list;
                        Unit unit = Unit.INSTANCE;
                    }
                }
                throw th;
            }
        }
        if (!list.isEmpty()) {
            synchronized (this.stateLock) {
                List<ControlledComposition> list3 = this.failedCompositions;
                if (list3 != null) {
                    list3.addAll(list);
                    if (list3 != null) {
                        list = list3;
                    }
                }
                this.failedCompositions = list;
                Unit unit2 = Unit.INSTANCE;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean getHasSchedulingWork() {
        boolean z;
        synchronized (this.stateLock) {
            z = true;
            if (!this.snapshotInvalidations.isNotEmpty() && !(!this.compositionInvalidations.isEmpty())) {
                if (!getHasBroadcastFrameClockAwaitersLocked()) {
                    z = false;
                }
            }
        }
        return z;
    }

    public final void cancel() {
        synchronized (this.stateLock) {
            if (this._state.getValue().compareTo(State.Idle) >= 0) {
                this._state.setValue(State.ShuttingDown);
            }
            Unit unit = Unit.INSTANCE;
        }
        Job.DefaultImpls.cancel$default((Job) this.effectJob, (CancellationException) null, 1, (Object) null);
    }

    private final void performInitialMovableContentInserts(ControlledComposition composition) {
        synchronized (this.stateLock) {
            List<MovableContentStateReference> list = this.compositionValuesAwaitingInsert;
            int size = list.size();
            for (int i = 0; i < size; i++) {
                if (Intrinsics.areEqual(list.get(i).getComposition(), composition)) {
                    Unit unit = Unit.INSTANCE;
                    ArrayList arrayList = new ArrayList();
                    performInitialMovableContentInserts$fillToInsert(arrayList, this, composition);
                    while (!arrayList.isEmpty()) {
                        performInsertValues(arrayList, null);
                        performInitialMovableContentInserts$fillToInsert(arrayList, this, composition);
                    }
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<ControlledComposition> performInsertValues(List<MovableContentStateReference> references, IdentityArraySet<Object> modifiedValues) {
        Iterator it;
        ArrayList arrayList;
        HashMap hashMap = new HashMap(references.size());
        int size = references.size();
        for (int i = 0; i < size; i++) {
            MovableContentStateReference movableContentStateReference = references.get(i);
            ControlledComposition composition = movableContentStateReference.getComposition();
            HashMap hashMap2 = hashMap;
            Object obj = hashMap2.get(composition);
            if (obj == null) {
                obj = new ArrayList();
                hashMap2.put(composition, obj);
            }
            ((ArrayList) obj).add(movableContentStateReference);
        }
        HashMap hashMap3 = hashMap;
        Iterator it2 = hashMap3.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry entry = (Map.Entry) it2.next();
            ControlledComposition controlledComposition = (ControlledComposition) entry.getKey();
            List list = (List) entry.getValue();
            ComposerKt.runtimeCheck(!controlledComposition.isComposing());
            MutableSnapshot takeMutableSnapshot = Snapshot.INSTANCE.takeMutableSnapshot(readObserverOf(controlledComposition), writeObserverOf(controlledComposition, modifiedValues));
            try {
                Snapshot makeCurrent = takeMutableSnapshot.makeCurrent();
                try {
                    synchronized (this.stateLock) {
                        ArrayList arrayList2 = new ArrayList(list.size());
                        int size2 = list.size();
                        int i2 = 0;
                        while (i2 < size2) {
                            MovableContentStateReference movableContentStateReference2 = (MovableContentStateReference) list.get(i2);
                            arrayList2.add(TuplesKt.to(movableContentStateReference2, RecomposerKt.removeLastMultiValue(this.compositionValuesRemoved, movableContentStateReference2.getContent$runtime_release())));
                            i2++;
                            it2 = it2;
                        }
                        it = it2;
                        arrayList = arrayList2;
                    }
                    controlledComposition.insertMovableContent(arrayList);
                    Unit unit = Unit.INSTANCE;
                    applyAndCheck(takeMutableSnapshot);
                    it2 = it;
                } finally {
                }
            } catch (Throwable th) {
                applyAndCheck(takeMutableSnapshot);
                throw th;
            }
        }
        return CollectionsKt.toList(hashMap3.keySet());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void discardUnusedValues() {
        int i;
        ArrayList emptyList;
        synchronized (this.stateLock) {
            if (!this.compositionValuesRemoved.isEmpty()) {
                List flatten = CollectionsKt.flatten(this.compositionValuesRemoved.values());
                this.compositionValuesRemoved.clear();
                ArrayList arrayList = new ArrayList(flatten.size());
                int size = flatten.size();
                for (int i2 = 0; i2 < size; i2++) {
                    MovableContentStateReference movableContentStateReference = (MovableContentStateReference) flatten.get(i2);
                    arrayList.add(TuplesKt.to(movableContentStateReference, this.compositionValueStatesAvailable.get(movableContentStateReference)));
                }
                emptyList = arrayList;
                this.compositionValueStatesAvailable.clear();
            } else {
                emptyList = CollectionsKt.emptyList();
            }
        }
        int size2 = emptyList.size();
        for (i = 0; i < size2; i++) {
            Pair pair = (Pair) emptyList.get(i);
            MovableContentStateReference movableContentStateReference2 = (MovableContentStateReference) pair.component1();
            MovableContentState movableContentState = (MovableContentState) pair.component2();
            if (movableContentState != null) {
                movableContentStateReference2.getComposition().disposeUnusedMovableContent(movableContentState);
            }
        }
    }

    public final boolean getHasPendingWork() {
        boolean z;
        synchronized (this.stateLock) {
            z = true;
            if (!this.snapshotInvalidations.isNotEmpty() && !(!this.compositionInvalidations.isEmpty()) && this.concurrentCompositionsOutstanding <= 0 && !(!this.compositionsAwaitingApply.isEmpty())) {
                if (!getHasBroadcastFrameClockAwaitersLocked()) {
                    z = false;
                }
            }
        }
        return z;
    }

    public final void pauseCompositionFrameClock() {
        synchronized (this.stateLock) {
            this.frameClockPaused = true;
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void resumeCompositionFrameClock() {
        CancellableContinuation<Unit> cancellableContinuation;
        synchronized (this.stateLock) {
            if (this.frameClockPaused) {
                this.frameClockPaused = false;
                cancellableContinuation = deriveStateLocked();
            } else {
                cancellableContinuation = null;
            }
        }
        if (cancellableContinuation != null) {
            Result.Companion companion = Result.INSTANCE;
            cancellableContinuation.resumeWith(Result.m5698constructorimpl(Unit.INSTANCE));
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    public void unregisterComposition$runtime_release(ControlledComposition composition) {
        Intrinsics.checkNotNullParameter(composition, "composition");
        synchronized (this.stateLock) {
            this.knownCompositions.remove(composition);
            this.compositionInvalidations.remove(composition);
            this.compositionsAwaitingApply.remove(composition);
            Unit unit = Unit.INSTANCE;
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    public void invalidate$runtime_release(ControlledComposition composition) {
        CancellableContinuation<Unit> cancellableContinuation;
        Intrinsics.checkNotNullParameter(composition, "composition");
        synchronized (this.stateLock) {
            if (this.compositionInvalidations.contains(composition)) {
                cancellableContinuation = null;
            } else {
                this.compositionInvalidations.add(composition);
                cancellableContinuation = deriveStateLocked();
            }
        }
        if (cancellableContinuation != null) {
            Result.Companion companion = Result.INSTANCE;
            cancellableContinuation.resumeWith(Result.m5698constructorimpl(Unit.INSTANCE));
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    public void invalidateScope$runtime_release(RecomposeScopeImpl scope) {
        CancellableContinuation<Unit> deriveStateLocked;
        Intrinsics.checkNotNullParameter(scope, "scope");
        synchronized (this.stateLock) {
            this.snapshotInvalidations.add(scope);
            deriveStateLocked = deriveStateLocked();
        }
        if (deriveStateLocked != null) {
            Result.Companion companion = Result.INSTANCE;
            deriveStateLocked.resumeWith(Result.m5698constructorimpl(Unit.INSTANCE));
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    public void insertMovableContent$runtime_release(MovableContentStateReference reference) {
        CancellableContinuation<Unit> deriveStateLocked;
        Intrinsics.checkNotNullParameter(reference, "reference");
        synchronized (this.stateLock) {
            this.compositionValuesAwaitingInsert.add(reference);
            deriveStateLocked = deriveStateLocked();
        }
        if (deriveStateLocked != null) {
            Result.Companion companion = Result.INSTANCE;
            deriveStateLocked.resumeWith(Result.m5698constructorimpl(Unit.INSTANCE));
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    public void deletedMovableContent$runtime_release(MovableContentStateReference reference) {
        Intrinsics.checkNotNullParameter(reference, "reference");
        synchronized (this.stateLock) {
            RecomposerKt.addMultiValue(this.compositionValuesRemoved, reference.getContent$runtime_release(), reference);
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    public void movableContentStateReleased$runtime_release(MovableContentStateReference reference, MovableContentState data) {
        Intrinsics.checkNotNullParameter(reference, "reference");
        Intrinsics.checkNotNullParameter(data, "data");
        synchronized (this.stateLock) {
            this.compositionValueStatesAvailable.put(reference, data);
            Unit unit = Unit.INSTANCE;
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    public void reportRemovedComposition$runtime_release(ControlledComposition composition) {
        Intrinsics.checkNotNullParameter(composition, "composition");
        synchronized (this.stateLock) {
            LinkedHashSet linkedHashSet = this.compositionsRemoved;
            if (linkedHashSet == null) {
                linkedHashSet = new LinkedHashSet();
                this.compositionsRemoved = linkedHashSet;
            }
            linkedHashSet.add(composition);
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    public MovableContentState movableContentStateResolve$runtime_release(MovableContentStateReference reference) {
        MovableContentState remove;
        Intrinsics.checkNotNullParameter(reference, "reference");
        synchronized (this.stateLock) {
            remove = this.compositionValueStatesAvailable.remove(reference);
        }
        return remove;
    }
}
