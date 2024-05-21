package androidx.compose.runtime;

import androidx.compose.runtime.collection.IdentityArraySet;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Composer.kt */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0012\b\u0007\u0018\u00002\u00020\u0001Bc\b\u0000\u0012\u000e\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0001\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012 \u0010\u000b\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u000e\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000f0\r0\f\u0012\u0006\u0010\u0010\u001a\u00020\u0011¢\u0006\u0002\u0010\u0012R\u0014\u0010\t\u001a\u00020\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0005\u001a\u00020\u0006X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u001c\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R4\u0010\u000b\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u000e\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000f0\r0\fX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u0014\u0010\u0010\u001a\u00020\u0011X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u0001X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0014\u0010\u0007\u001a\u00020\bX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"¨\u0006#"}, d2 = {"Landroidx/compose/runtime/MovableContentStateReference;", "", "content", "Landroidx/compose/runtime/MovableContent;", "parameter", "composition", "Landroidx/compose/runtime/ControlledComposition;", "slotTable", "Landroidx/compose/runtime/SlotTable;", "anchor", "Landroidx/compose/runtime/Anchor;", "invalidations", "", "Lkotlin/Pair;", "Landroidx/compose/runtime/RecomposeScopeImpl;", "Landroidx/compose/runtime/collection/IdentityArraySet;", "locals", "Landroidx/compose/runtime/PersistentCompositionLocalMap;", "(Landroidx/compose/runtime/MovableContent;Ljava/lang/Object;Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/SlotTable;Landroidx/compose/runtime/Anchor;Ljava/util/List;Landroidx/compose/runtime/PersistentCompositionLocalMap;)V", "getAnchor$runtime_release", "()Landroidx/compose/runtime/Anchor;", "getComposition$runtime_release", "()Landroidx/compose/runtime/ControlledComposition;", "getContent$runtime_release", "()Landroidx/compose/runtime/MovableContent;", "getInvalidations$runtime_release", "()Ljava/util/List;", "setInvalidations$runtime_release", "(Ljava/util/List;)V", "getLocals$runtime_release", "()Landroidx/compose/runtime/PersistentCompositionLocalMap;", "getParameter$runtime_release", "()Ljava/lang/Object;", "getSlotTable$runtime_release", "()Landroidx/compose/runtime/SlotTable;", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class MovableContentStateReference {
    public static final int $stable = 8;
    private final Anchor anchor;
    private final ControlledComposition composition;
    private final MovableContent<Object> content;
    private List<Pair<RecomposeScopeImpl, IdentityArraySet<Object>>> invalidations;
    private final PersistentCompositionLocalMap locals;
    private final Object parameter;
    private final SlotTable slotTable;

    /* renamed from: getAnchor$runtime_release, reason: from getter */
    public final Anchor getAnchor() {
        return this.anchor;
    }

    /* renamed from: getComposition$runtime_release, reason: from getter */
    public final ControlledComposition getComposition() {
        return this.composition;
    }

    public final MovableContent<Object> getContent$runtime_release() {
        return this.content;
    }

    public final List<Pair<RecomposeScopeImpl, IdentityArraySet<Object>>> getInvalidations$runtime_release() {
        return this.invalidations;
    }

    /* renamed from: getLocals$runtime_release, reason: from getter */
    public final PersistentCompositionLocalMap getLocals() {
        return this.locals;
    }

    /* renamed from: getParameter$runtime_release, reason: from getter */
    public final Object getParameter() {
        return this.parameter;
    }

    /* renamed from: getSlotTable$runtime_release, reason: from getter */
    public final SlotTable getSlotTable() {
        return this.slotTable;
    }

    public final void setInvalidations$runtime_release(List<Pair<RecomposeScopeImpl, IdentityArraySet<Object>>> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.invalidations = list;
    }

    public MovableContentStateReference(MovableContent<Object> content, Object obj, ControlledComposition composition, SlotTable slotTable, Anchor anchor, List<Pair<RecomposeScopeImpl, IdentityArraySet<Object>>> invalidations, PersistentCompositionLocalMap locals) {
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(composition, "composition");
        Intrinsics.checkNotNullParameter(slotTable, "slotTable");
        Intrinsics.checkNotNullParameter(anchor, "anchor");
        Intrinsics.checkNotNullParameter(invalidations, "invalidations");
        Intrinsics.checkNotNullParameter(locals, "locals");
        this.content = content;
        this.parameter = obj;
        this.composition = composition;
        this.slotTable = slotTable;
        this.anchor = anchor;
        this.invalidations = invalidations;
        this.locals = locals;
    }
}
