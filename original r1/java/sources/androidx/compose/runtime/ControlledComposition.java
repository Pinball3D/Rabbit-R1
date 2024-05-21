package androidx.compose.runtime;

import io.sentry.protocol.SentryThread;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* compiled from: Composition.kt */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001J\b\u0010\u0007\u001a\u00020\bH&J\b\u0010\t\u001a\u00020\bH&J\b\u0010\n\u001a\u00020\bH&J \u0010\u000b\u001a\u00020\b2\u0011\u0010\f\u001a\r\u0012\u0004\u0012\u00020\b0\r¢\u0006\u0002\b\u000eH&¢\u0006\u0002\u0010\u000fJ3\u0010\u0010\u001a\u0002H\u0011\"\u0004\b\u0000\u0010\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00002\u0006\u0010\u0013\u001a\u00020\u00142\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u0002H\u00110\rH&¢\u0006\u0002\u0010\u0016J\u0010\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0018\u001a\u00020\u0019H'J$\u0010\u001a\u001a\u00020\b2\u001a\u0010\u001b\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u001e\u0012\u0006\u0012\u0004\u0018\u00010\u001e0\u001d0\u001cH'J\b\u0010\u001f\u001a\u00020\bH&J\u0016\u0010 \u001a\u00020\u00032\f\u0010!\u001a\b\u0012\u0004\u0012\u00020#0\"H&J\u0016\u0010$\u001a\u00020\b2\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\b0\rH&J\b\u0010%\u001a\u00020\u0003H&J\u0016\u0010&\u001a\u00020\b2\f\u0010!\u001a\b\u0012\u0004\u0012\u00020#0\"H&J\u0010\u0010'\u001a\u00020\b2\u0006\u0010(\u001a\u00020#H&J\u0010\u0010)\u001a\u00020\b2\u0006\u0010(\u001a\u00020#H&J\b\u0010*\u001a\u00020\bH'R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0005\u0082\u0001\u0001+ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006,À\u0006\u0001"}, d2 = {"Landroidx/compose/runtime/ControlledComposition;", "Landroidx/compose/runtime/Composition;", "hasPendingChanges", "", "getHasPendingChanges", "()Z", "isComposing", "applyChanges", "", "applyLateChanges", "changesApplied", "composeContent", "content", "Lkotlin/Function0;", "Landroidx/compose/runtime/Composable;", "(Lkotlin/jvm/functions/Function2;)V", "delegateInvalidations", "R", "to", "groupIndex", "", "block", "(Landroidx/compose/runtime/ControlledComposition;ILkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "disposeUnusedMovableContent", SentryThread.JsonKeys.STATE, "Landroidx/compose/runtime/MovableContentState;", "insertMovableContent", "references", "", "Lkotlin/Pair;", "Landroidx/compose/runtime/MovableContentStateReference;", "invalidateAll", "observesAnyOf", "values", "", "", "prepareCompose", "recompose", "recordModificationsOf", "recordReadOf", "value", "recordWriteOf", "verifyConsistent", "Landroidx/compose/runtime/CompositionImpl;", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface ControlledComposition extends Composition {
    void applyChanges();

    void applyLateChanges();

    void changesApplied();

    void composeContent(Function2<? super Composer, ? super Integer, Unit> content);

    <R> R delegateInvalidations(ControlledComposition to, int groupIndex, Function0<? extends R> block);

    void disposeUnusedMovableContent(MovableContentState state);

    boolean getHasPendingChanges();

    void insertMovableContent(List<Pair<MovableContentStateReference, MovableContentStateReference>> references);

    void invalidateAll();

    boolean isComposing();

    boolean observesAnyOf(Set<? extends Object> values);

    void prepareCompose(Function0<Unit> block);

    boolean recompose();

    void recordModificationsOf(Set<? extends Object> values);

    void recordReadOf(Object value);

    void recordWriteOf(Object value);

    void verifyConsistent();
}
