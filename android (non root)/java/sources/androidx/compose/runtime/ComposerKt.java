package androidx.compose.runtime;

import androidx.compose.runtime.collection.IdentityArraySet;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Composer.kt */
@Metadata(d1 = {"\u0000º\u0001\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b#\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0010\u001a\u0010\u0010?\u001a\u00020@2\u0006\u0010A\u001a\u00020BH\u0000\u001a(\u0010C\u001a\u0004\u0018\u00010\u00012\b\u0010D\u001a\u0004\u0018\u00010\u00012\b\u0010E\u001a\u0004\u0018\u00010\u00012\b\u0010F\u001a\u0004\u0018\u00010\u0001H\u0002\u001a\b\u0010G\u001a\u00020HH\u0007\u001aP\u0010I\u001a>\u0012\u0004\u0012\u0002HK\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u0002HM0Lj\b\u0012\u0004\u0012\u0002HM`N0Jj\u001e\u0012\u0004\u0012\u0002HK\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u0002HM0Lj\b\u0012\u0004\u0012\u0002HM`N`O\"\u0004\b\u0000\u0010K\"\u0004\b\u0001\u0010MH\u0002\u001a\u0010\u0010P\u001a\u00020\u00172\u0006\u0010D\u001a\u00020HH\u0000\u001a\"\u0010P\u001a\u00020\u00172\u0006\u0010D\u001a\u00020H2\f\u0010Q\u001a\b\u0012\u0004\u0012\u00020\u00010RH\u0080\bø\u0001\u0000\u001a\u0018\u0010S\u001a\u00020\u00172\u0006\u0010T\u001a\u00020U2\u0006\u0010S\u001a\u00020BH\u0007\u001a\u0010\u0010V\u001a\u00020\u00172\u0006\u0010T\u001a\u00020UH\u0007\u001a \u0010W\u001a\u00020\u00172\u0006\u0010T\u001a\u00020U2\u0006\u0010X\u001a\u00020\u00072\u0006\u0010S\u001a\u00020BH\u0007\u001a\b\u0010Y\u001a\u00020\u0017H\u0007\u001a(\u0010Z\u001a\u00020\u00172\u0006\u0010X\u001a\u00020\u00072\u0006\u0010[\u001a\u00020\u00072\u0006\u0010\\\u001a\u00020\u00072\u0006\u0010]\u001a\u00020BH\u0007\u001a\u0018\u0010Z\u001a\u00020\u00172\u0006\u0010X\u001a\u00020\u00072\u0006\u0010]\u001a\u00020BH\u0007\u001a\f\u0010^\u001a\u00020H*\u00020\u0007H\u0002\u001a\f\u0010_\u001a\u00020\u0007*\u00020HH\u0002\u001a6\u0010`\u001a\u0002Ha\"\u0004\b\u0000\u0010a*\u00020U2\u0006\u0010b\u001a\u00020H2\u0011\u0010c\u001a\r\u0012\u0004\u0012\u0002Ha0R¢\u0006\u0002\bdH\u0087\bø\u0001\u0000¢\u0006\u0002\u0010e\u001a\u001c\u0010f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010g*\u00020h2\u0006\u0010i\u001a\u00020jH\u0002\u001a\u001c\u0010k\u001a\u00020\u0007*\u00020l2\u0006\u0010m\u001a\u00020\u00072\u0006\u0010n\u001a\u00020\u0007H\u0002\u001a(\u0010o\u001a\b\u0012\u0004\u0012\u00020q0p*\b\u0012\u0004\u0012\u00020q0p2\u0006\u0010r\u001a\u00020\u00072\u0006\u0010s\u001a\u00020\u0007H\u0002\u001a\u001a\u0010t\u001a\u00020\u0007*\b\u0012\u0004\u0012\u00020q0p2\u0006\u0010u\u001a\u00020\u0007H\u0002\u001a\u001a\u0010v\u001a\u00020\u0007*\b\u0012\u0004\u0012\u00020q0p2\u0006\u0010u\u001a\u00020\u0007H\u0002\u001a$\u0010w\u001a\u0004\u0018\u00010q*\b\u0012\u0004\u0012\u00020q0p2\u0006\u0010r\u001a\u00020\u00072\u0006\u0010s\u001a\u00020\u0007H\u0002\u001a,\u0010x\u001a\u00020\u0017*\b\u0012\u0004\u0012\u00020q0p2\u0006\u0010u\u001a\u00020\u00072\u0006\u0010y\u001a\u00020z2\b\u0010{\u001a\u0004\u0018\u00010\u0001H\u0002\u001a$\u0010|\u001a\u00020\u0007*\u00020l2\u0006\u0010}\u001a\u00020\u00072\u0006\u0010~\u001a\u00020\u00072\u0006\u0010\u007f\u001a\u00020\u0007H\u0002\u001a[\u0010\u0080\u0001\u001a\u0004\u0018\u0001HM\"\u0004\b\u0000\u0010K\"\u0004\b\u0001\u0010M*4\u0012\u0004\u0012\u0002HK\u0012\n\u0012\b\u0012\u0004\u0012\u0002HM0L0Jj\u001e\u0012\u0004\u0012\u0002HK\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u0002HM0Lj\b\u0012\u0004\u0012\u0002HM`N`O2\u0006\u0010X\u001a\u0002HKH\u0002¢\u0006\u0003\u0010\u0081\u0001\u001aa\u0010\u0082\u0001\u001a\u00020H\"\u0004\b\u0000\u0010K\"\u0004\b\u0001\u0010M*4\u0012\u0004\u0012\u0002HK\u0012\n\u0012\b\u0012\u0004\u0012\u0002HM0L0Jj\u001e\u0012\u0004\u0012\u0002HK\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u0002HM0Lj\b\u0012\u0004\u0012\u0002HM`N`O2\u0006\u0010X\u001a\u0002HK2\u0006\u0010D\u001a\u0002HMH\u0002¢\u0006\u0003\u0010\u0083\u0001\u001ac\u0010\u0084\u0001\u001a\u0004\u0018\u00010\u0017\"\u0004\b\u0000\u0010K\"\u0004\b\u0001\u0010M*4\u0012\u0004\u0012\u0002HK\u0012\n\u0012\b\u0012\u0004\u0012\u0002HM0L0Jj\u001e\u0012\u0004\u0012\u0002HK\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u0002HM0Lj\b\u0012\u0004\u0012\u0002HM`N`O2\u0006\u0010X\u001a\u0002HK2\u0006\u0010D\u001a\u0002HMH\u0002¢\u0006\u0003\u0010\u0085\u0001\u001a\u0015\u0010\u0086\u0001\u001a\u00020\u0017*\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0015H\u0000\u001a\u001d\u0010\u0087\u0001\u001a\u0004\u0018\u00010q*\b\u0012\u0004\u0012\u00020q0p2\u0006\u0010u\u001a\u00020\u0007H\u0002\u001a#\u0010\u0088\u0001\u001a\u00020\u0017*\b\u0012\u0004\u0012\u00020q0p2\u0006\u0010r\u001a\u00020\u00072\u0006\u0010s\u001a\u00020\u0007H\u0002\"\u001c\u0010\u0000\u001a\u00020\u00018\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0002\u0010\u0003\u001a\u0004\b\u0004\u0010\u0005\"\u0016\u0010\u0006\u001a\u00020\u00078\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b\b\u0010\u0003\"\u0016\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\b\n\u0000\u0012\u0004\b\u000b\u0010\u0003\"\u000e\u0010\f\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\"[\u0010\r\u001aO\u0012\u0017\u0012\u0015\u0012\u0002\b\u00030\u000f¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0012\u0012\u0013\u0012\u00110\u0013¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0014\u0012\u0013\u0012\u00110\u0015¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0016\u0012\u0004\u0012\u00020\u00170\u000ej\u0002`\u0018X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\u0019\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\"\u001c\u0010\u001a\u001a\u00020\u00018\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001b\u0010\u0003\u001a\u0004\b\u001c\u0010\u0005\"\u0016\u0010\u001d\u001a\u00020\u00078\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b\u001e\u0010\u0003\"\u000e\u0010\u001f\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\"\u001c\u0010 \u001a\u00020\u00018\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b!\u0010\u0003\u001a\u0004\b\"\u0010\u0005\"\u0016\u0010#\u001a\u00020\u00078\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b$\u0010\u0003\"\u001c\u0010%\u001a\u00020\u00018\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b&\u0010\u0003\u001a\u0004\b'\u0010\u0005\"\u0016\u0010(\u001a\u00020\u00078\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b)\u0010\u0003\"\u001c\u0010*\u001a\u00020\u00018\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b+\u0010\u0003\u001a\u0004\b,\u0010\u0005\"\u0016\u0010-\u001a\u00020\u00078\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b.\u0010\u0003\"\u001c\u0010/\u001a\u00020\u00018\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b0\u0010\u0003\u001a\u0004\b1\u0010\u0005\"\u0016\u00102\u001a\u00020\u00078\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b3\u0010\u0003\"[\u00104\u001aO\u0012\u0017\u0012\u0015\u0012\u0002\b\u00030\u000f¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0012\u0012\u0013\u0012\u00110\u0013¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0014\u0012\u0013\u0012\u00110\u0015¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0016\u0012\u0004\u0012\u00020\u00170\u000ej\u0002`\u0018X\u0082\u0004¢\u0006\u0002\n\u0000\"[\u00105\u001aO\u0012\u0017\u0012\u0015\u0012\u0002\b\u00030\u000f¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0012\u0012\u0013\u0012\u00110\u0013¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0014\u0012\u0013\u0012\u00110\u0015¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0016\u0012\u0004\u0012\u00020\u00170\u000ej\u0002`\u0018X\u0082\u0004¢\u0006\u0002\n\u0000\"\u0016\u00106\u001a\u00020\u00078\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b7\u0010\u0003\"\u000e\u00108\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\"[\u00109\u001aO\u0012\u0017\u0012\u0015\u0012\u0002\b\u00030\u000f¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0012\u0012\u0013\u0012\u00110\u0013¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0014\u0012\u0013\u0012\u00110\u0015¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0016\u0012\u0004\u0012\u00020\u00170\u000ej\u0002`\u0018X\u0082\u0004¢\u0006\u0002\n\u0000\"[\u0010:\u001aO\u0012\u0017\u0012\u0015\u0012\u0002\b\u00030\u000f¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0012\u0012\u0013\u0012\u00110\u0013¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0014\u0012\u0013\u0012\u00110\u0015¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0016\u0012\u0004\u0012\u00020\u00170\u000ej\u0002`\u0018X\u0082\u0004¢\u0006\u0002\n\u0000\"\u0018\u0010;\u001a\u00020\u0001*\u00020<8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b=\u0010>*\u009f\u0001\b\u0000\u0010\u0089\u0001\"K\u0012\u0017\u0012\u0015\u0012\u0002\b\u00030\u000f¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0012\u0012\u0013\u0012\u00110\u0013¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0014\u0012\u0013\u0012\u00110\u0015¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0016\u0012\u0004\u0012\u00020\u00170\u000e2K\u0012\u0017\u0012\u0015\u0012\u0002\b\u00030\u000f¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0012\u0012\u0013\u0012\u00110\u0013¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0014\u0012\u0013\u0012\u00110\u0015¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0016\u0012\u0004\u0012\u00020\u00170\u000e\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u008a\u0001"}, d2 = {"compositionLocalMap", "", "getCompositionLocalMap$annotations", "()V", "getCompositionLocalMap", "()Ljava/lang/Object;", "compositionLocalMapKey", "", "getCompositionLocalMapKey$annotations", "compositionTracer", "Landroidx/compose/runtime/CompositionTracer;", "getCompositionTracer$annotations", "defaultsKey", "endGroupInstance", "Lkotlin/Function3;", "Landroidx/compose/runtime/Applier;", "Lkotlin/ParameterName;", "name", "applier", "Landroidx/compose/runtime/SlotWriter;", "slots", "Landroidx/compose/runtime/RememberManager;", "rememberManager", "", "Landroidx/compose/runtime/Change;", "invalidGroupLocation", "invocation", "getInvocation$annotations", "getInvocation", "invocationKey", "getInvocationKey$annotations", "nodeKey", "provider", "getProvider$annotations", "getProvider", "providerKey", "getProviderKey$annotations", "providerMaps", "getProviderMaps$annotations", "getProviderMaps", "providerMapsKey", "getProviderMapsKey$annotations", "providerValues", "getProviderValues$annotations", "getProviderValues", "providerValuesKey", "getProviderValuesKey$annotations", "reference", "getReference$annotations", "getReference", "referenceKey", "getReferenceKey$annotations", "removeCurrentGroupInstance", "resetSlotsInstance", "reuseKey", "getReuseKey$annotations", "rootKey", "skipToGroupEndInstance", "startRootGroup", "joinedKey", "Landroidx/compose/runtime/KeyInfo;", "getJoinedKey", "(Landroidx/compose/runtime/KeyInfo;)Ljava/lang/Object;", "composeRuntimeError", "", "message", "", "getKey", "value", "left", "right", "isTraceInProgress", "", "multiMap", "Ljava/util/HashMap;", "K", "Ljava/util/LinkedHashSet;", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lkotlin/collections/LinkedHashSet;", "Lkotlin/collections/HashMap;", "runtimeCheck", "lazyMessage", "Lkotlin/Function0;", "sourceInformation", "composer", "Landroidx/compose/runtime/Composer;", "sourceInformationMarkerEnd", "sourceInformationMarkerStart", "key", "traceEventEnd", "traceEventStart", "dirty1", "dirty2", "info", "asBool", "asInt", "cache", ExifInterface.GPS_DIRECTION_TRUE, "invalid", "block", "Landroidx/compose/runtime/DisallowComposableCalls;", "(Landroidx/compose/runtime/Composer;ZLkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "collectNodesFrom", "", "Landroidx/compose/runtime/SlotTable;", "anchor", "Landroidx/compose/runtime/Anchor;", "distanceFrom", "Landroidx/compose/runtime/SlotReader;", "index", "root", "filterToRange", "", "Landroidx/compose/runtime/Invalidation;", "start", "end", "findInsertLocation", "location", "findLocation", "firstInRange", "insertIfMissing", "scope", "Landroidx/compose/runtime/RecomposeScopeImpl;", "instance", "nearestCommonRootOf", CmcdHeadersFactory.OBJECT_TYPE_AUDIO_ONLY, "b", "common", "pop", "(Ljava/util/HashMap;Ljava/lang/Object;)Ljava/lang/Object;", "put", "(Ljava/util/HashMap;Ljava/lang/Object;Ljava/lang/Object;)Z", "remove", "(Ljava/util/HashMap;Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Unit;", "removeCurrentGroup", "removeLocation", "removeRange", "Change", "runtime_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ComposerKt {
    public static final int compositionLocalMapKey = 202;
    private static CompositionTracer compositionTracer = null;
    private static final int defaultsKey = -127;
    private static final int invalidGroupLocation = -2;
    public static final int invocationKey = 200;
    private static final int nodeKey = 125;
    public static final int providerKey = 201;
    public static final int providerMapsKey = 204;
    public static final int providerValuesKey = 203;
    public static final int referenceKey = 206;
    public static final int reuseKey = 207;
    private static final int rootKey = 100;
    private static final Function3<Applier<?>, SlotWriter, RememberManager, Unit> removeCurrentGroupInstance = new Function3<Applier<?>, SlotWriter, RememberManager, Unit>() { // from class: androidx.compose.runtime.ComposerKt$removeCurrentGroupInstance$1
        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Unit invoke(Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager) {
            invoke2(applier, slotWriter, rememberManager);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(Applier<?> applier, SlotWriter slots, RememberManager rememberManager) {
            Intrinsics.checkNotNullParameter(applier, "<anonymous parameter 0>");
            Intrinsics.checkNotNullParameter(slots, "slots");
            Intrinsics.checkNotNullParameter(rememberManager, "rememberManager");
            ComposerKt.removeCurrentGroup(slots, rememberManager);
        }
    };
    private static final Function3<Applier<?>, SlotWriter, RememberManager, Unit> skipToGroupEndInstance = new Function3<Applier<?>, SlotWriter, RememberManager, Unit>() { // from class: androidx.compose.runtime.ComposerKt$skipToGroupEndInstance$1
        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Unit invoke(Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager) {
            invoke2(applier, slotWriter, rememberManager);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(Applier<?> applier, SlotWriter slots, RememberManager rememberManager) {
            Intrinsics.checkNotNullParameter(applier, "<anonymous parameter 0>");
            Intrinsics.checkNotNullParameter(slots, "slots");
            Intrinsics.checkNotNullParameter(rememberManager, "<anonymous parameter 2>");
            slots.skipToGroupEnd();
        }
    };
    private static final Function3<Applier<?>, SlotWriter, RememberManager, Unit> endGroupInstance = new Function3<Applier<?>, SlotWriter, RememberManager, Unit>() { // from class: androidx.compose.runtime.ComposerKt$endGroupInstance$1
        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Unit invoke(Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager) {
            invoke2(applier, slotWriter, rememberManager);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(Applier<?> applier, SlotWriter slots, RememberManager rememberManager) {
            Intrinsics.checkNotNullParameter(applier, "<anonymous parameter 0>");
            Intrinsics.checkNotNullParameter(slots, "slots");
            Intrinsics.checkNotNullParameter(rememberManager, "<anonymous parameter 2>");
            slots.endGroup();
        }
    };
    private static final Function3<Applier<?>, SlotWriter, RememberManager, Unit> startRootGroup = new Function3<Applier<?>, SlotWriter, RememberManager, Unit>() { // from class: androidx.compose.runtime.ComposerKt$startRootGroup$1
        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Unit invoke(Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager) {
            invoke2(applier, slotWriter, rememberManager);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(Applier<?> applier, SlotWriter slots, RememberManager rememberManager) {
            Intrinsics.checkNotNullParameter(applier, "<anonymous parameter 0>");
            Intrinsics.checkNotNullParameter(slots, "slots");
            Intrinsics.checkNotNullParameter(rememberManager, "<anonymous parameter 2>");
            slots.ensureStarted(0);
        }
    };
    private static final Function3<Applier<?>, SlotWriter, RememberManager, Unit> resetSlotsInstance = new Function3<Applier<?>, SlotWriter, RememberManager, Unit>() { // from class: androidx.compose.runtime.ComposerKt$resetSlotsInstance$1
        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Unit invoke(Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager) {
            invoke2(applier, slotWriter, rememberManager);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(Applier<?> applier, SlotWriter slots, RememberManager rememberManager) {
            Intrinsics.checkNotNullParameter(applier, "<anonymous parameter 0>");
            Intrinsics.checkNotNullParameter(slots, "slots");
            Intrinsics.checkNotNullParameter(rememberManager, "<anonymous parameter 2>");
            slots.reset();
        }
    };
    private static final Object invocation = new OpaqueKey("provider");
    private static final Object provider = new OpaqueKey("provider");
    private static final Object compositionLocalMap = new OpaqueKey("compositionLocalMap");
    private static final Object providerValues = new OpaqueKey("providerValues");
    private static final Object providerMaps = new OpaqueKey("providers");
    private static final Object reference = new OpaqueKey("reference");

    public static final boolean asBool(int i) {
        return i != 0;
    }

    public static final int asInt(boolean z) {
        return z ? 1 : 0;
    }

    public static final Object getCompositionLocalMap() {
        return compositionLocalMap;
    }

    public static /* synthetic */ void getCompositionLocalMap$annotations() {
    }

    public static /* synthetic */ void getCompositionLocalMapKey$annotations() {
    }

    private static /* synthetic */ void getCompositionTracer$annotations() {
    }

    public static final Object getInvocation() {
        return invocation;
    }

    public static /* synthetic */ void getInvocation$annotations() {
    }

    public static /* synthetic */ void getInvocationKey$annotations() {
    }

    public static final Object getProvider() {
        return provider;
    }

    public static /* synthetic */ void getProvider$annotations() {
    }

    public static /* synthetic */ void getProviderKey$annotations() {
    }

    public static final Object getProviderMaps() {
        return providerMaps;
    }

    public static /* synthetic */ void getProviderMaps$annotations() {
    }

    public static /* synthetic */ void getProviderMapsKey$annotations() {
    }

    public static final Object getProviderValues() {
        return providerValues;
    }

    public static /* synthetic */ void getProviderValues$annotations() {
    }

    public static /* synthetic */ void getProviderValuesKey$annotations() {
    }

    public static final Object getReference() {
        return reference;
    }

    public static /* synthetic */ void getReference$annotations() {
    }

    public static /* synthetic */ void getReferenceKey$annotations() {
    }

    public static /* synthetic */ void getReuseKey$annotations() {
    }

    @ComposeCompilerApi
    public static final <T> T cache(Composer composer, boolean z, Function0<? extends T> block) {
        Intrinsics.checkNotNullParameter(composer, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        T t = (T) composer.rememberedValue();
        if (!z && t != Composer.INSTANCE.getEmpty()) {
            return t;
        }
        T invoke = block.invoke();
        composer.updateRememberedValue(invoke);
        return invoke;
    }

    @ComposeCompilerApi
    public static final void sourceInformation(Composer composer, String sourceInformation) {
        Intrinsics.checkNotNullParameter(composer, "composer");
        Intrinsics.checkNotNullParameter(sourceInformation, "sourceInformation");
        composer.sourceInformation(sourceInformation);
    }

    @ComposeCompilerApi
    public static final void sourceInformationMarkerStart(Composer composer, int i, String sourceInformation) {
        Intrinsics.checkNotNullParameter(composer, "composer");
        Intrinsics.checkNotNullParameter(sourceInformation, "sourceInformation");
        composer.sourceInformationMarkerStart(i, sourceInformation);
    }

    @ComposeCompilerApi
    public static final boolean isTraceInProgress() {
        CompositionTracer compositionTracer2 = compositionTracer;
        return compositionTracer2 != null && compositionTracer2.isTraceInProgress();
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Use the overload with $dirty metadata instead", replaceWith = @ReplaceWith(expression = "traceEventStart(key, dirty1, dirty2, info)", imports = {}))
    @ComposeCompilerApi
    public static final /* synthetic */ void traceEventStart(int i, String info) {
        Intrinsics.checkNotNullParameter(info, "info");
        traceEventStart(i, -1, -1, info);
    }

    @ComposeCompilerApi
    public static final void traceEventStart(int i, int i2, int i3, String info) {
        Intrinsics.checkNotNullParameter(info, "info");
        CompositionTracer compositionTracer2 = compositionTracer;
        if (compositionTracer2 != null) {
            compositionTracer2.traceEventStart(i, i2, i3, info);
        }
    }

    @ComposeCompilerApi
    public static final void traceEventEnd() {
        CompositionTracer compositionTracer2 = compositionTracer;
        if (compositionTracer2 != null) {
            compositionTracer2.traceEventEnd();
        }
    }

    @ComposeCompilerApi
    public static final void sourceInformationMarkerEnd(Composer composer) {
        Intrinsics.checkNotNullParameter(composer, "composer");
        composer.sourceInformationMarkerEnd();
    }

    public static final void removeCurrentGroup(SlotWriter slotWriter, RememberManager rememberManager) {
        Intrinsics.checkNotNullParameter(slotWriter, "<this>");
        Intrinsics.checkNotNullParameter(rememberManager, "rememberManager");
        Iterator<Object> groupSlots = slotWriter.groupSlots();
        while (groupSlots.hasNext()) {
            Object next = groupSlots.next();
            if (next instanceof ComposeNodeLifecycleCallback) {
                rememberManager.releasing((ComposeNodeLifecycleCallback) next);
            }
            if (next instanceof RememberObserver) {
                rememberManager.forgetting((RememberObserver) next);
            }
            if (next instanceof RecomposeScopeImpl) {
                ((RecomposeScopeImpl) next).release();
            }
        }
        slotWriter.removeGroup();
    }

    public static final <K, V> HashMap<K, LinkedHashSet<V>> multiMap() {
        return new HashMap<>();
    }

    public static final <K, V> boolean put(HashMap<K, LinkedHashSet<V>> hashMap, K k, V v) {
        HashMap<K, LinkedHashSet<V>> hashMap2 = hashMap;
        LinkedHashSet<V> linkedHashSet = hashMap2.get(k);
        if (linkedHashSet == null) {
            linkedHashSet = new LinkedHashSet<>();
            hashMap2.put(k, linkedHashSet);
        }
        return linkedHashSet.add(v);
    }

    private static final <K, V> Unit remove(HashMap<K, LinkedHashSet<V>> hashMap, K k, V v) {
        LinkedHashSet<V> linkedHashSet = hashMap.get(k);
        if (linkedHashSet == null) {
            return null;
        }
        linkedHashSet.remove(v);
        if (linkedHashSet.isEmpty()) {
            hashMap.remove(k);
        }
        return Unit.INSTANCE;
    }

    public static final <K, V> V pop(HashMap<K, LinkedHashSet<V>> hashMap, K k) {
        V v;
        LinkedHashSet<V> linkedHashSet = hashMap.get(k);
        if (linkedHashSet == null || (v = (V) CollectionsKt.firstOrNull(linkedHashSet)) == null) {
            return null;
        }
        remove(hashMap, k, v);
        return v;
    }

    public static final Object getKey(Object obj, Object obj2, Object obj3) {
        JoinedKey joinedKey = obj instanceof JoinedKey ? (JoinedKey) obj : null;
        if (joinedKey == null) {
            return null;
        }
        if ((!Intrinsics.areEqual(joinedKey.getLeft(), obj2) || !Intrinsics.areEqual(joinedKey.getRight(), obj3)) && (obj = getKey(joinedKey.getLeft(), obj2, obj3)) == null) {
            obj = getKey(joinedKey.getRight(), obj2, obj3);
        }
        return obj;
    }

    private static final int findLocation(List<Invalidation> list, int i) {
        int size = list.size() - 1;
        int i2 = 0;
        while (i2 <= size) {
            int i3 = (i2 + size) >>> 1;
            int compare = Intrinsics.compare(list.get(i3).getLocation(), i);
            if (compare < 0) {
                i2 = i3 + 1;
            } else {
                if (compare <= 0) {
                    return i3;
                }
                size = i3 - 1;
            }
        }
        return -(i2 + 1);
    }

    private static final int findInsertLocation(List<Invalidation> list, int i) {
        int findLocation = findLocation(list, i);
        return findLocation < 0 ? -(findLocation + 1) : findLocation;
    }

    public static final void insertIfMissing(List<Invalidation> list, int i, RecomposeScopeImpl recomposeScopeImpl, Object obj) {
        int findLocation = findLocation(list, i);
        IdentityArraySet identityArraySet = null;
        if (findLocation < 0) {
            int i2 = -(findLocation + 1);
            if (obj != null) {
                identityArraySet = new IdentityArraySet();
                identityArraySet.add(obj);
            }
            list.add(i2, new Invalidation(recomposeScopeImpl, i, identityArraySet));
            return;
        }
        if (obj == null) {
            list.get(findLocation).setInstances(null);
            return;
        }
        IdentityArraySet<Object> instances = list.get(findLocation).getInstances();
        if (instances != null) {
            instances.add(obj);
        }
    }

    public static final Invalidation firstInRange(List<Invalidation> list, int i, int i2) {
        int findInsertLocation = findInsertLocation(list, i);
        if (findInsertLocation >= list.size()) {
            return null;
        }
        Invalidation invalidation = list.get(findInsertLocation);
        if (invalidation.getLocation() < i2) {
            return invalidation;
        }
        return null;
    }

    public static final Invalidation removeLocation(List<Invalidation> list, int i) {
        int findLocation = findLocation(list, i);
        if (findLocation >= 0) {
            return list.remove(findLocation);
        }
        return null;
    }

    public static final void removeRange(List<Invalidation> list, int i, int i2) {
        int findInsertLocation = findInsertLocation(list, i);
        while (findInsertLocation < list.size() && list.get(findInsertLocation).getLocation() < i2) {
            list.remove(findInsertLocation);
        }
    }

    public static final List<Invalidation> filterToRange(List<Invalidation> list, int i, int i2) {
        ArrayList arrayList = new ArrayList();
        for (int findInsertLocation = findInsertLocation(list, i); findInsertLocation < list.size(); findInsertLocation++) {
            Invalidation invalidation = list.get(findInsertLocation);
            if (invalidation.getLocation() >= i2) {
                break;
            }
            arrayList.add(invalidation);
        }
        return arrayList;
    }

    public static final List<Object> collectNodesFrom(SlotTable slotTable, Anchor anchor) {
        ArrayList arrayList = new ArrayList();
        SlotReader openReader = slotTable.openReader();
        try {
            collectNodesFrom$lambda$9$collectFromGroup(openReader, arrayList, slotTable.anchorIndex(anchor));
            Unit unit = Unit.INSTANCE;
            return arrayList;
        } finally {
            openReader.close();
        }
    }

    private static final void collectNodesFrom$lambda$9$collectFromGroup(SlotReader slotReader, List<Object> list, int i) {
        if (slotReader.isNode(i)) {
            list.add(slotReader.node(i));
            return;
        }
        int i2 = i + 1;
        int groupSize = i + slotReader.groupSize(i);
        while (i2 < groupSize) {
            collectNodesFrom$lambda$9$collectFromGroup(slotReader, list, i2);
            i2 += slotReader.groupSize(i2);
        }
    }

    private static final int distanceFrom(SlotReader slotReader, int i, int i2) {
        int i3 = 0;
        while (i > 0 && i != i2) {
            i = slotReader.parent(i);
            i3++;
        }
        return i3;
    }

    public static final int nearestCommonRootOf(SlotReader slotReader, int i, int i2, int i3) {
        if (i == i2) {
            return i;
        }
        if (i == i3 || i2 == i3) {
            return i3;
        }
        if (slotReader.parent(i) == i2) {
            return i2;
        }
        if (slotReader.parent(i2) == i) {
            return i;
        }
        if (slotReader.parent(i) == slotReader.parent(i2)) {
            return slotReader.parent(i);
        }
        int distanceFrom = distanceFrom(slotReader, i, i3);
        int distanceFrom2 = distanceFrom(slotReader, i2, i3);
        int i4 = distanceFrom - distanceFrom2;
        for (int i5 = 0; i5 < i4; i5++) {
            i = slotReader.parent(i);
        }
        int i6 = distanceFrom2 - distanceFrom;
        for (int i7 = 0; i7 < i6; i7++) {
            i2 = slotReader.parent(i2);
        }
        while (i != i2) {
            i = slotReader.parent(i);
            i2 = slotReader.parent(i2);
        }
        return i;
    }

    public static final Object getJoinedKey(KeyInfo keyInfo) {
        return keyInfo.getObjectKey() != null ? new JoinedKey(Integer.valueOf(keyInfo.getKey()), keyInfo.getObjectKey()) : Integer.valueOf(keyInfo.getKey());
    }

    public static final void runtimeCheck(boolean z, Function0<? extends Object> lazyMessage) {
        Intrinsics.checkNotNullParameter(lazyMessage, "lazyMessage");
        if (z) {
            return;
        }
        composeRuntimeError(lazyMessage.invoke().toString());
        throw new KotlinNothingValueException();
    }

    public static final Void composeRuntimeError(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        throw new ComposeRuntimeError("Compose Runtime internal error. Unexpected or incorrect use of the Compose internal runtime API (" + message + "). Please report to Google or use https://goo.gle/compose-feedback");
    }

    public static final void runtimeCheck(boolean z) {
        if (z) {
            return;
        }
        composeRuntimeError("Check failed".toString());
        throw new KotlinNothingValueException();
    }
}
