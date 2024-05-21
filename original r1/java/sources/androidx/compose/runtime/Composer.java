package androidx.compose.runtime;

import androidx.compose.runtime.tooling.CompositionData;
import androidx.exifinterface.media.ExifInterface;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Composer.kt */
@Metadata(d1 = {"\u0000Ê\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0005\n\u0002\u0010\f\n\u0002\u0010\u0006\n\u0002\u0010\u0007\n\u0002\u0010\t\n\u0002\u0010\n\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\bv\u0018\u0000 \u0083\u00012\u00020\u0001:\u0002\u0083\u0001J@\u00105\u001a\u000206\"\u0004\b\u0000\u00107\"\u0004\b\u0001\u001082\u0006\u00109\u001a\u0002H72\u001d\u0010:\u001a\u0019\u0012\u0004\u0012\u0002H8\u0012\u0004\u0012\u0002H7\u0012\u0004\u0012\u0002060;¢\u0006\u0002\b<H'¢\u0006\u0002\u0010=J\b\u0010>\u001a\u00020?H'J\u0012\u0010@\u001a\u00020\"2\b\u00109\u001a\u0004\u0018\u00010\u0001H'J\u0010\u0010@\u001a\u00020\"2\u0006\u00109\u001a\u00020\"H\u0017J\u0010\u0010@\u001a\u00020\"2\u0006\u00109\u001a\u00020AH\u0017J\u0010\u0010@\u001a\u00020\"2\u0006\u00109\u001a\u00020BH\u0017J\u0010\u0010@\u001a\u00020\"2\u0006\u00109\u001a\u00020CH\u0017J\u0010\u0010@\u001a\u00020\"2\u0006\u00109\u001a\u00020DH\u0017J\u0010\u0010@\u001a\u00020\"2\u0006\u00109\u001a\u00020\u0016H\u0017J\u0010\u0010@\u001a\u00020\"2\u0006\u00109\u001a\u00020EH\u0017J\u0010\u0010@\u001a\u00020\"2\u0006\u00109\u001a\u00020FH\u0017J\u0012\u0010G\u001a\u00020\"2\b\u00109\u001a\u0004\u0018\u00010\u0001H\u0017J\b\u0010H\u001a\u000206H&J!\u0010I\u001a\u0002H8\"\u0004\b\u0000\u001082\f\u0010J\u001a\b\u0012\u0004\u0012\u0002H80KH'¢\u0006\u0002\u0010LJ\u001c\u0010M\u001a\u000206\"\u0004\b\u0000\u001082\f\u0010N\u001a\b\u0012\u0004\u0012\u0002H80OH'J\u0010\u0010P\u001a\u0002062\u0006\u0010@\u001a\u00020\"H'J\b\u0010Q\u001a\u000206H'J\b\u0010R\u001a\u000206H&J\b\u0010S\u001a\u000206H'J\b\u0010T\u001a\u000206H'J\b\u0010U\u001a\u000206H'J\b\u0010V\u001a\u000206H'J\b\u0010W\u001a\u000206H'J\b\u0010X\u001a\u000206H'J\n\u0010Y\u001a\u0004\u0018\u00010ZH'J\b\u0010[\u001a\u000206H'J\u0010\u0010\\\u001a\u0002062\u0006\u0010]\u001a\u00020\u0016H'J\u001e\u0010^\u001a\u0002062\n\u00109\u001a\u0006\u0012\u0002\b\u00030_2\b\u0010`\u001a\u0004\u0018\u00010\u0001H'J$\u0010a\u001a\u0002062\u001a\u0010b\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020e\u0012\u0006\u0012\u0004\u0018\u00010e0d0cH'J\u001c\u0010f\u001a\u00020\u00012\b\u0010g\u001a\u0004\u0018\u00010\u00012\b\u0010h\u001a\u0004\u0018\u00010\u0001H'J\u0016\u0010i\u001a\u0002062\f\u0010j\u001a\b\u0012\u0004\u0012\u0002060OH'J\u0010\u0010k\u001a\u0002062\u0006\u0010l\u001a\u00020*H'J\n\u0010m\u001a\u0004\u0018\u00010\u0001H'J\b\u0010n\u001a\u000206H'J\b\u0010o\u001a\u000206H'J\u0010\u0010p\u001a\u0002062\u0006\u0010p\u001a\u00020qH&J\b\u0010r\u001a\u000206H&J\u0018\u0010s\u001a\u0002062\u0006\u0010J\u001a\u00020\u00162\u0006\u0010p\u001a\u00020qH&J\b\u0010t\u001a\u000206H'J\u001a\u0010u\u001a\u0002062\u0006\u0010J\u001a\u00020\u00162\b\u0010v\u001a\u0004\u0018\u00010\u0001H'J\b\u0010w\u001a\u000206H'J!\u0010x\u001a\u0002062\u0012\u0010y\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030{0zH'¢\u0006\u0002\u0010|J\u0010\u0010}\u001a\u0002062\u0006\u0010J\u001a\u00020\u0016H'J\u0010\u0010~\u001a\u00020\u00002\u0006\u0010J\u001a\u00020\u0016H'J\u001a\u0010\u007f\u001a\u0002062\u0006\u0010J\u001a\u00020\u00162\b\u0010v\u001a\u0004\u0018\u00010\u0001H'J\t\u0010\u0080\u0001\u001a\u000206H'J\u0013\u0010\u0081\u0001\u001a\u0002062\b\u00109\u001a\u0004\u0018\u00010\u0001H'J\t\u0010\u0082\u0001\u001a\u000206H'R\u001e\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u00038&X§\u0004¢\u0006\f\u0012\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007R\u001a\u0010\b\u001a\u00020\t8fX§\u0004¢\u0006\f\u0012\u0004\b\n\u0010\u0005\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\r\u001a\u00020\u000e8fX¦\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0012\u0010\u0011\u001a\u00020\u0012X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u00168&X§\u0004¢\u0006\f\u0012\u0004\b\u0017\u0010\u0005\u001a\u0004\b\u0018\u0010\u0019R\u0012\u0010\u001a\u001a\u00020\u001bX¦\u0004¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\u00168&X§\u0004¢\u0006\f\u0012\u0004\b\u001f\u0010\u0005\u001a\u0004\b \u0010\u0019R\u001a\u0010!\u001a\u00020\"8&X§\u0004¢\u0006\f\u0012\u0004\b#\u0010\u0005\u001a\u0004\b$\u0010%R\u001a\u0010&\u001a\u00020\"8&X§\u0004¢\u0006\f\u0012\u0004\b'\u0010\u0005\u001a\u0004\b(\u0010%R\u001c\u0010)\u001a\u0004\u0018\u00010*8&X§\u0004¢\u0006\f\u0012\u0004\b+\u0010\u0005\u001a\u0004\b,\u0010-R\u001c\u0010.\u001a\u0004\u0018\u00010\u00018&X§\u0004¢\u0006\f\u0012\u0004\b/\u0010\u0005\u001a\u0004\b0\u00101R\u001a\u00102\u001a\u00020\"8&X§\u0004¢\u0006\f\u0012\u0004\b3\u0010\u0005\u001a\u0004\b4\u0010%\u0082\u0001\u0002\u0084\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0085\u0001À\u0006\u0001"}, d2 = {"Landroidx/compose/runtime/Composer;", "", "applier", "Landroidx/compose/runtime/Applier;", "getApplier$annotations", "()V", "getApplier", "()Landroidx/compose/runtime/Applier;", "applyCoroutineContext", "Lkotlin/coroutines/CoroutineContext;", "getApplyCoroutineContext$annotations", "getApplyCoroutineContext", "()Lkotlin/coroutines/CoroutineContext;", "composition", "Landroidx/compose/runtime/ControlledComposition;", "getComposition", "()Landroidx/compose/runtime/ControlledComposition;", "compositionData", "Landroidx/compose/runtime/tooling/CompositionData;", "getCompositionData", "()Landroidx/compose/runtime/tooling/CompositionData;", "compoundKeyHash", "", "getCompoundKeyHash$annotations", "getCompoundKeyHash", "()I", "currentCompositionLocalMap", "Landroidx/compose/runtime/CompositionLocalMap;", "getCurrentCompositionLocalMap", "()Landroidx/compose/runtime/CompositionLocalMap;", "currentMarker", "getCurrentMarker$annotations", "getCurrentMarker", "defaultsInvalid", "", "getDefaultsInvalid$annotations", "getDefaultsInvalid", "()Z", "inserting", "getInserting$annotations", "getInserting", "recomposeScope", "Landroidx/compose/runtime/RecomposeScope;", "getRecomposeScope$annotations", "getRecomposeScope", "()Landroidx/compose/runtime/RecomposeScope;", "recomposeScopeIdentity", "getRecomposeScopeIdentity$annotations", "getRecomposeScopeIdentity", "()Ljava/lang/Object;", "skipping", "getSkipping$annotations", "getSkipping", "apply", "", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, ExifInterface.GPS_DIRECTION_TRUE, "value", "block", "Lkotlin/Function2;", "Lkotlin/ExtensionFunctionType;", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V", "buildContext", "Landroidx/compose/runtime/CompositionContext;", "changed", "", "", "", "", "", "", "changedInstance", "collectParameterInformation", "consume", "key", "Landroidx/compose/runtime/CompositionLocal;", "(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;", "createNode", "factory", "Lkotlin/Function0;", "deactivateToEndGroup", "disableReusing", "disableSourceInformation", "enableReusing", "endDefaults", "endMovableGroup", "endNode", "endProviders", "endReplaceableGroup", "endRestartGroup", "Landroidx/compose/runtime/ScopeUpdateScope;", "endReusableGroup", "endToMarker", "marker", "insertMovableContent", "Landroidx/compose/runtime/MovableContent;", "parameter", "insertMovableContentReferences", "references", "", "Lkotlin/Pair;", "Landroidx/compose/runtime/MovableContentStateReference;", "joinKey", "left", "right", "recordSideEffect", "effect", "recordUsed", "scope", "rememberedValue", "skipCurrentGroup", "skipToGroupEnd", "sourceInformation", "", "sourceInformationMarkerEnd", "sourceInformationMarkerStart", "startDefaults", "startMovableGroup", "dataKey", "startNode", "startProviders", "values", "", "Landroidx/compose/runtime/ProvidedValue;", "([Landroidx/compose/runtime/ProvidedValue;)V", "startReplaceableGroup", "startRestartGroup", "startReusableGroup", "startReusableNode", "updateRememberedValue", "useNode", "Companion", "Landroidx/compose/runtime/ComposerImpl;", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface Composer {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = Companion.$$INSTANCE;

    @ComposeCompilerApi
    static /* synthetic */ void getApplier$annotations() {
    }

    static /* synthetic */ void getApplyCoroutineContext$annotations() {
    }

    static /* synthetic */ void getCompoundKeyHash$annotations() {
    }

    @ComposeCompilerApi
    static /* synthetic */ void getCurrentMarker$annotations() {
    }

    @ComposeCompilerApi
    static /* synthetic */ void getDefaultsInvalid$annotations() {
    }

    @ComposeCompilerApi
    static /* synthetic */ void getInserting$annotations() {
    }

    static /* synthetic */ void getRecomposeScope$annotations() {
    }

    @ComposeCompilerApi
    static /* synthetic */ void getRecomposeScopeIdentity$annotations() {
    }

    @ComposeCompilerApi
    static /* synthetic */ void getSkipping$annotations() {
    }

    @ComposeCompilerApi
    <V, T> void apply(V value, Function2<? super T, ? super V, Unit> block);

    CompositionContext buildContext();

    @ComposeCompilerApi
    boolean changed(Object value);

    void collectParameterInformation();

    <T> T consume(CompositionLocal<T> key);

    @ComposeCompilerApi
    <T> void createNode(Function0<? extends T> factory);

    @ComposeCompilerApi
    void deactivateToEndGroup(boolean changed);

    @ComposeCompilerApi
    void disableReusing();

    void disableSourceInformation();

    @ComposeCompilerApi
    void enableReusing();

    @ComposeCompilerApi
    void endDefaults();

    @ComposeCompilerApi
    void endMovableGroup();

    @ComposeCompilerApi
    void endNode();

    void endProviders();

    @ComposeCompilerApi
    void endReplaceableGroup();

    @ComposeCompilerApi
    ScopeUpdateScope endRestartGroup();

    @ComposeCompilerApi
    void endReusableGroup();

    @ComposeCompilerApi
    void endToMarker(int marker);

    Applier<?> getApplier();

    CoroutineContext getApplyCoroutineContext();

    ControlledComposition getComposition();

    CompositionData getCompositionData();

    int getCompoundKeyHash();

    CompositionLocalMap getCurrentCompositionLocalMap();

    int getCurrentMarker();

    boolean getDefaultsInvalid();

    boolean getInserting();

    RecomposeScope getRecomposeScope();

    Object getRecomposeScopeIdentity();

    boolean getSkipping();

    void insertMovableContent(MovableContent<?> value, Object parameter);

    void insertMovableContentReferences(List<Pair<MovableContentStateReference, MovableContentStateReference>> references);

    @ComposeCompilerApi
    Object joinKey(Object left, Object right);

    void recordSideEffect(Function0<Unit> effect);

    void recordUsed(RecomposeScope scope);

    @ComposeCompilerApi
    Object rememberedValue();

    @ComposeCompilerApi
    void skipCurrentGroup();

    @ComposeCompilerApi
    void skipToGroupEnd();

    void sourceInformation(String sourceInformation);

    void sourceInformationMarkerEnd();

    void sourceInformationMarkerStart(int key, String sourceInformation);

    @ComposeCompilerApi
    void startDefaults();

    @ComposeCompilerApi
    void startMovableGroup(int key, Object dataKey);

    @ComposeCompilerApi
    void startNode();

    void startProviders(ProvidedValue<?>[] values);

    @ComposeCompilerApi
    void startReplaceableGroup(int key);

    @ComposeCompilerApi
    Composer startRestartGroup(int key);

    @ComposeCompilerApi
    void startReusableGroup(int key, Object dataKey);

    @ComposeCompilerApi
    void startReusableNode();

    @ComposeCompilerApi
    void updateRememberedValue(Object value);

    @ComposeCompilerApi
    void useNode();

    @ComposeCompilerApi
    default boolean changed(boolean value) {
        return changed(value);
    }

    @ComposeCompilerApi
    default boolean changed(char value) {
        return changed(value);
    }

    @ComposeCompilerApi
    default boolean changed(byte value) {
        return changed(value);
    }

    @ComposeCompilerApi
    default boolean changed(short value) {
        return changed(value);
    }

    @ComposeCompilerApi
    default boolean changed(int value) {
        return changed(value);
    }

    @ComposeCompilerApi
    default boolean changed(float value) {
        return changed(value);
    }

    @ComposeCompilerApi
    default boolean changed(long value) {
        return changed(value);
    }

    @ComposeCompilerApi
    default boolean changed(double value) {
        return changed(value);
    }

    @ComposeCompilerApi
    default boolean changedInstance(Object value) {
        return changed(value);
    }

    /* compiled from: Composer.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0007R\u0011\u0010\u0003\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u0005¨\u0006\n"}, d2 = {"Landroidx/compose/runtime/Composer$Companion;", "", "()V", "Empty", "getEmpty", "()Ljava/lang/Object;", "setTracer", "", "tracer", "Landroidx/compose/runtime/CompositionTracer;", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private static final Object Empty = new Object() { // from class: androidx.compose.runtime.Composer$Companion$Empty$1
            public String toString() {
                return "Empty";
            }
        };

        public final Object getEmpty() {
            return Empty;
        }

        private Companion() {
        }

        public final void setTracer(CompositionTracer tracer) {
            Intrinsics.checkNotNullParameter(tracer, "tracer");
            ComposerKt.access$setCompositionTracer$p(tracer);
        }
    }
}
