package androidx.compose.runtime;

import androidx.compose.runtime.collection.IdentityArrayIntMap;
import androidx.compose.runtime.collection.IdentityArrayMap;
import androidx.compose.runtime.collection.IdentityArraySet;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RecomposeScopeImpl.kt */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0000\u0018\u0000 H2\u00020\u00012\u00020\u0002:\u0001HB\u000f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010\u0005J\u000e\u00104\u001a\u00020\u00102\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u00105\u001a\u00020\u00102\u0006\u00106\u001a\u00020\u000eJ\u001c\u00107\u001a\u0010\u0012\u0004\u0012\u000209\u0012\u0004\u0012\u00020\u0010\u0018\u0001082\u0006\u0010:\u001a\u00020\u000fJ\b\u0010;\u001a\u00020\u0010H\u0016J\u0010\u0010<\u001a\u00020=2\b\u0010\u0016\u001a\u0004\u0018\u00010,J\u0016\u0010>\u001a\u00020\u00122\u000e\u0010?\u001a\n\u0012\u0004\u0012\u00020,\u0018\u00010@J\u000e\u0010A\u001a\u00020\u00122\u0006\u0010B\u001a\u00020,J\u0006\u0010C\u001a\u00020\u0010J\u0006\u0010D\u001a\u00020\u0010J\u0006\u0010E\u001a\u00020\u0010J\u000e\u0010F\u001a\u00020\u00102\u0006\u0010:\u001a\u00020\u000fJ\"\u0010G\u001a\u00020\u00102\u0018\u0010\f\u001a\u0014\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\rH\u0016R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\"\u0010\f\u001a\u0016\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0010\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u0011\u001a\u00020\u00128F¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00128F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0018\u0010\u0014\"\u0004\b\u0019\u0010\u001aR$\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00128F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001c\u0010\u0014\"\u0004\b\u001d\u0010\u001aR\u000e\u0010\u001e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u001f\u001a\u00020\u00128F¢\u0006\u0006\u001a\u0004\b\u001f\u0010\u0014R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010 \u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00128F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b!\u0010\u0014\"\u0004\b\"\u0010\u001aR$\u0010#\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00128B@BX\u0082\u000e¢\u0006\f\u001a\u0004\b$\u0010\u0014\"\u0004\b%\u0010\u001aR$\u0010&\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00128@@BX\u0080\u000e¢\u0006\f\u001a\u0004\b'\u0010\u0014\"\u0004\b(\u0010\u001aR\"\u0010)\u001a\u0016\u0012\b\u0012\u0006\u0012\u0002\b\u00030+\u0012\u0006\u0012\u0004\u0018\u00010,\u0018\u00010*X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010-\u001a\u0004\u0018\u00010.X\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010/\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00128F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b0\u0010\u0014\"\u0004\b1\u0010\u001aR\u0011\u00102\u001a\u00020\u00128F¢\u0006\u0006\u001a\u0004\b3\u0010\u0014¨\u0006I"}, d2 = {"Landroidx/compose/runtime/RecomposeScopeImpl;", "Landroidx/compose/runtime/ScopeUpdateScope;", "Landroidx/compose/runtime/RecomposeScope;", "owner", "Landroidx/compose/runtime/RecomposeScopeOwner;", "(Landroidx/compose/runtime/RecomposeScopeOwner;)V", "anchor", "Landroidx/compose/runtime/Anchor;", "getAnchor", "()Landroidx/compose/runtime/Anchor;", "setAnchor", "(Landroidx/compose/runtime/Anchor;)V", "block", "Lkotlin/Function2;", "Landroidx/compose/runtime/Composer;", "", "", "canRecompose", "", "getCanRecompose", "()Z", "currentToken", "value", "defaultsInScope", "getDefaultsInScope", "setDefaultsInScope", "(Z)V", "defaultsInvalid", "getDefaultsInvalid", "setDefaultsInvalid", "flags", "isConditional", "requiresRecompose", "getRequiresRecompose", "setRequiresRecompose", "rereading", "getRereading", "setRereading", "skipped", "getSkipped$runtime_release", "setSkipped", "trackedDependencies", "Landroidx/compose/runtime/collection/IdentityArrayMap;", "Landroidx/compose/runtime/DerivedState;", "", "trackedInstances", "Landroidx/compose/runtime/collection/IdentityArrayIntMap;", "used", "getUsed", "setUsed", "valid", "getValid", "adoptedBy", "compose", "composer", "end", "Lkotlin/Function1;", "Landroidx/compose/runtime/Composition;", "token", "invalidate", "invalidateForResult", "Landroidx/compose/runtime/InvalidationResult;", "isInvalidFor", "instances", "Landroidx/compose/runtime/collection/IdentityArraySet;", "recordRead", "instance", "release", "rereadTrackedInstances", "scopeSkipped", "start", "updateScope", "Companion", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class RecomposeScopeImpl implements ScopeUpdateScope, RecomposeScope {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private Anchor anchor;
    private Function2<? super Composer, ? super Integer, Unit> block;
    private int currentToken;
    private int flags;
    private RecomposeScopeOwner owner;
    private IdentityArrayMap<DerivedState<?>, Object> trackedDependencies;
    private IdentityArrayIntMap trackedInstances;

    private final boolean getRereading() {
        return (this.flags & 32) != 0;
    }

    private final void setRereading(boolean z) {
        if (z) {
            this.flags |= 32;
        } else {
            this.flags &= -33;
        }
    }

    private final void setSkipped(boolean z) {
        if (z) {
            this.flags |= 16;
        } else {
            this.flags &= -17;
        }
    }

    public final void adoptedBy(RecomposeScopeOwner owner) {
        Intrinsics.checkNotNullParameter(owner, "owner");
        this.owner = owner;
    }

    public final Anchor getAnchor() {
        return this.anchor;
    }

    public final boolean getCanRecompose() {
        return this.block != null;
    }

    public final boolean getDefaultsInScope() {
        return (this.flags & 2) != 0;
    }

    public final boolean getDefaultsInvalid() {
        return (this.flags & 4) != 0;
    }

    public final boolean getRequiresRecompose() {
        return (this.flags & 8) != 0;
    }

    public final boolean getSkipped$runtime_release() {
        return (this.flags & 16) != 0;
    }

    public final boolean getUsed() {
        return (this.flags & 1) != 0;
    }

    public final boolean isConditional() {
        return this.trackedDependencies != null;
    }

    public final void setAnchor(Anchor anchor) {
        this.anchor = anchor;
    }

    public final void setDefaultsInScope(boolean z) {
        if (z) {
            this.flags |= 2;
        } else {
            this.flags &= -3;
        }
    }

    public final void setDefaultsInvalid(boolean z) {
        if (z) {
            this.flags |= 4;
        } else {
            this.flags &= -5;
        }
    }

    public final void setRequiresRecompose(boolean z) {
        if (z) {
            this.flags |= 8;
        } else {
            this.flags &= -9;
        }
    }

    public final void setUsed(boolean z) {
        if (z) {
            this.flags |= 1;
        } else {
            this.flags &= -2;
        }
    }

    @Override // androidx.compose.runtime.ScopeUpdateScope
    public void updateScope(Function2<? super Composer, ? super Integer, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        this.block = block;
    }

    public RecomposeScopeImpl(RecomposeScopeOwner recomposeScopeOwner) {
        this.owner = recomposeScopeOwner;
    }

    public final boolean getValid() {
        Anchor anchor;
        return (this.owner == null || (anchor = this.anchor) == null || !anchor.getValid()) ? false : true;
    }

    public final void compose(Composer composer) {
        Unit unit;
        Intrinsics.checkNotNullParameter(composer, "composer");
        Function2<? super Composer, ? super Integer, Unit> function2 = this.block;
        if (function2 != null) {
            function2.invoke(composer, 1);
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            throw new IllegalStateException("Invalid restart scope".toString());
        }
    }

    public final InvalidationResult invalidateForResult(Object value) {
        InvalidationResult invalidate;
        RecomposeScopeOwner recomposeScopeOwner = this.owner;
        return (recomposeScopeOwner == null || (invalidate = recomposeScopeOwner.invalidate(this, value)) == null) ? InvalidationResult.IGNORED : invalidate;
    }

    public final void release() {
        RecomposeScopeOwner recomposeScopeOwner = this.owner;
        if (recomposeScopeOwner != null) {
            recomposeScopeOwner.recomposeScopeReleased(this);
        }
        this.owner = null;
        this.trackedInstances = null;
        this.trackedDependencies = null;
    }

    @Override // androidx.compose.runtime.RecomposeScope
    public void invalidate() {
        RecomposeScopeOwner recomposeScopeOwner = this.owner;
        if (recomposeScopeOwner != null) {
            recomposeScopeOwner.invalidate(this, null);
        }
    }

    public final void start(int token) {
        this.currentToken = token;
        setSkipped(false);
    }

    public final void scopeSkipped() {
        setSkipped(true);
    }

    public final boolean recordRead(Object instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        int i = 0;
        if (getRereading()) {
            return false;
        }
        IdentityArrayIntMap identityArrayIntMap = this.trackedInstances;
        if (identityArrayIntMap == null) {
            identityArrayIntMap = new IdentityArrayIntMap();
            this.trackedInstances = identityArrayIntMap;
        }
        int i2 = 1;
        if (identityArrayIntMap.add(instance, this.currentToken) == this.currentToken) {
            return true;
        }
        if (instance instanceof DerivedState) {
            IdentityArrayMap<DerivedState<?>, Object> identityArrayMap = this.trackedDependencies;
            if (identityArrayMap == null) {
                identityArrayMap = new IdentityArrayMap<>(i, i2, null);
                this.trackedDependencies = identityArrayMap;
            }
            identityArrayMap.set(instance, ((DerivedState) instance).getCurrentRecord().getCurrentValue());
        }
        return false;
    }

    public final boolean isInvalidFor(IdentityArraySet<Object> instances) {
        IdentityArrayMap<DerivedState<?>, Object> identityArrayMap;
        if (instances != null && (identityArrayMap = this.trackedDependencies) != null && instances.isNotEmpty()) {
            IdentityArraySet<Object> identityArraySet = instances;
            if ((identityArraySet instanceof Collection) && identityArraySet.isEmpty()) {
                return false;
            }
            for (Object obj : identityArraySet) {
                if (obj instanceof DerivedState) {
                    DerivedState<?> derivedState = (DerivedState) obj;
                    SnapshotMutationPolicy<?> policy = derivedState.getPolicy();
                    if (policy == null) {
                        policy = SnapshotStateKt.structuralEqualityPolicy();
                    }
                    if (policy.equivalent(derivedState.getCurrentRecord().getCurrentValue(), identityArrayMap.get(derivedState))) {
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final void rereadTrackedInstances() {
        IdentityArrayIntMap identityArrayIntMap;
        RecomposeScopeOwner recomposeScopeOwner = this.owner;
        if (recomposeScopeOwner == null || (identityArrayIntMap = this.trackedInstances) == null) {
            return;
        }
        setRereading(true);
        try {
            Object[] keys = identityArrayIntMap.getKeys();
            int[] values = identityArrayIntMap.getValues();
            int size = identityArrayIntMap.getSize();
            for (int i = 0; i < size; i++) {
                Object obj = keys[i];
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Any");
                int i2 = values[i];
                recomposeScopeOwner.recordReadOf(obj);
            }
        } finally {
            setRereading(false);
        }
    }

    public final Function1<Composition, Unit> end(final int token) {
        final IdentityArrayIntMap identityArrayIntMap = this.trackedInstances;
        if (identityArrayIntMap == null || getSkipped$runtime_release()) {
            return null;
        }
        Object[] keys = identityArrayIntMap.getKeys();
        int[] values = identityArrayIntMap.getValues();
        int size = identityArrayIntMap.getSize();
        for (int i = 0; i < size; i++) {
            Intrinsics.checkNotNull(keys[i], "null cannot be cast to non-null type kotlin.Any");
            if (values[i] != token) {
                return new Function1<Composition, Unit>() { // from class: androidx.compose.runtime.RecomposeScopeImpl$end$1$2
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Composition composition) {
                        invoke2(composition);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(Composition composition) {
                        int i2;
                        IdentityArrayIntMap identityArrayIntMap2;
                        IdentityArrayMap identityArrayMap;
                        Intrinsics.checkNotNullParameter(composition, "composition");
                        i2 = RecomposeScopeImpl.this.currentToken;
                        if (i2 == token) {
                            IdentityArrayIntMap identityArrayIntMap3 = identityArrayIntMap;
                            identityArrayIntMap2 = RecomposeScopeImpl.this.trackedInstances;
                            if (Intrinsics.areEqual(identityArrayIntMap3, identityArrayIntMap2) && (composition instanceof CompositionImpl)) {
                                IdentityArrayIntMap identityArrayIntMap4 = identityArrayIntMap;
                                int i3 = token;
                                RecomposeScopeImpl recomposeScopeImpl = RecomposeScopeImpl.this;
                                Object[] keys2 = identityArrayIntMap4.getKeys();
                                int[] values2 = identityArrayIntMap4.getValues();
                                int size2 = identityArrayIntMap4.getSize();
                                int i4 = 0;
                                for (int i5 = 0; i5 < size2; i5++) {
                                    Object obj = keys2[i5];
                                    Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Any");
                                    int i6 = values2[i5];
                                    boolean z = i6 != i3;
                                    if (z) {
                                        CompositionImpl compositionImpl = (CompositionImpl) composition;
                                        compositionImpl.removeObservation$runtime_release(obj, recomposeScopeImpl);
                                        DerivedState<?> derivedState = obj instanceof DerivedState ? (DerivedState) obj : null;
                                        if (derivedState != null) {
                                            compositionImpl.removeDerivedStateObservation$runtime_release(derivedState);
                                            identityArrayMap = recomposeScopeImpl.trackedDependencies;
                                            if (identityArrayMap != null) {
                                                identityArrayMap.remove(derivedState);
                                                if (identityArrayMap.getSize() == 0) {
                                                    recomposeScopeImpl.trackedDependencies = null;
                                                }
                                            }
                                        }
                                    }
                                    if (!z) {
                                        if (i4 != i5) {
                                            keys2[i4] = obj;
                                            values2[i4] = i6;
                                        }
                                        i4++;
                                    }
                                }
                                for (int i7 = i4; i7 < size2; i7++) {
                                    keys2[i7] = null;
                                }
                                identityArrayIntMap4.size = i4;
                                if (identityArrayIntMap.getSize() == 0) {
                                    RecomposeScopeImpl.this.trackedInstances = null;
                                }
                            }
                        }
                    }
                };
            }
        }
        return null;
    }

    /* compiled from: RecomposeScopeImpl.kt */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J+\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\n\u001a\u00020\u000bH\u0000¢\u0006\u0002\b\fJ#\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u000f2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0000¢\u0006\u0002\b\u0010¨\u0006\u0011"}, d2 = {"Landroidx/compose/runtime/RecomposeScopeImpl$Companion;", "", "()V", "adoptAnchoredScopes", "", "slots", "Landroidx/compose/runtime/SlotWriter;", "anchors", "", "Landroidx/compose/runtime/Anchor;", "newOwner", "Landroidx/compose/runtime/RecomposeScopeOwner;", "adoptAnchoredScopes$runtime_release", "hasAnchoredRecomposeScopes", "", "Landroidx/compose/runtime/SlotTable;", "hasAnchoredRecomposeScopes$runtime_release", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final void adoptAnchoredScopes$runtime_release(SlotWriter slots, List<Anchor> anchors, RecomposeScopeOwner newOwner) {
            Intrinsics.checkNotNullParameter(slots, "slots");
            Intrinsics.checkNotNullParameter(anchors, "anchors");
            Intrinsics.checkNotNullParameter(newOwner, "newOwner");
            if (!anchors.isEmpty()) {
                int size = anchors.size();
                for (int i = 0; i < size; i++) {
                    Object slot = slots.slot(anchors.get(i), 0);
                    RecomposeScopeImpl recomposeScopeImpl = slot instanceof RecomposeScopeImpl ? (RecomposeScopeImpl) slot : null;
                    if (recomposeScopeImpl != null) {
                        recomposeScopeImpl.adoptedBy(newOwner);
                    }
                }
            }
        }

        public final boolean hasAnchoredRecomposeScopes$runtime_release(SlotTable slots, List<Anchor> anchors) {
            Intrinsics.checkNotNullParameter(slots, "slots");
            Intrinsics.checkNotNullParameter(anchors, "anchors");
            if (!anchors.isEmpty()) {
                int size = anchors.size();
                for (int i = 0; i < size; i++) {
                    Anchor anchor = anchors.get(i);
                    if (slots.ownsAnchor(anchor) && (slots.slot$runtime_release(slots.anchorIndex(anchor), 0) instanceof RecomposeScopeImpl)) {
                        return true;
                    }
                }
            }
            return false;
        }
    }
}
