package androidx.window.embedding;

import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SplitPairRule.kt */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\n\n\u0002\u0010\u0000\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001BY\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\b\b\u0002\u0010\f\u001a\u00020\r\u0012\b\b\u0002\u0010\u000e\u001a\u00020\n¢\u0006\u0002\u0010\u000fJ\u0013\u0010\u0016\u001a\u00020\u00062\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0096\u0002J\b\u0010\u0019\u001a\u00020\nH\u0016J\u0016\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u0004H\u0080\u0002¢\u0006\u0002\b\u001cR\u0011\u0010\b\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0011R\u0011\u0010\u0007\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0011¨\u0006\u001d"}, d2 = {"Landroidx/window/embedding/SplitPairRule;", "Landroidx/window/embedding/SplitRule;", "filters", "", "Landroidx/window/embedding/SplitPairFilter;", "finishPrimaryWithSecondary", "", "finishSecondaryWithPrimary", "clearTop", "minWidth", "", "minSmallestWidth", "splitRatio", "", "layoutDir", "(Ljava/util/Set;ZZZIIFI)V", "getClearTop", "()Z", "getFilters", "()Ljava/util/Set;", "getFinishPrimaryWithSecondary", "getFinishSecondaryWithPrimary", "equals", "other", "", "hashCode", "plus", "filter", "plus$window_release", "window_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class SplitPairRule extends SplitRule {
    private final boolean clearTop;
    private final Set<SplitPairFilter> filters;
    private final boolean finishPrimaryWithSecondary;
    private final boolean finishSecondaryWithPrimary;

    public final boolean getClearTop() {
        return this.clearTop;
    }

    public final Set<SplitPairFilter> getFilters() {
        return this.filters;
    }

    public final boolean getFinishPrimaryWithSecondary() {
        return this.finishPrimaryWithSecondary;
    }

    public final boolean getFinishSecondaryWithPrimary() {
        return this.finishSecondaryWithPrimary;
    }

    public /* synthetic */ SplitPairRule(Set set, boolean z, boolean z2, boolean z3, int i, int i2, float f, int i3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(set, (i4 & 2) != 0 ? false : z, (i4 & 4) != 0 ? true : z2, (i4 & 8) != 0 ? false : z3, (i4 & 16) != 0 ? 0 : i, (i4 & 32) == 0 ? i2 : 0, (i4 & 64) != 0 ? 0.5f : f, (i4 & 128) != 0 ? 3 : i3);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SplitPairRule(Set<SplitPairFilter> filters, boolean z, boolean z2, boolean z3, int i, int i2, float f, int i3) {
        super(i, i2, f, i3);
        Intrinsics.checkNotNullParameter(filters, "filters");
        this.finishPrimaryWithSecondary = z;
        this.finishSecondaryWithPrimary = z2;
        this.clearTop = z3;
        this.filters = CollectionsKt.toSet(filters);
    }

    public final SplitPairRule plus$window_release(SplitPairFilter filter) {
        Intrinsics.checkNotNullParameter(filter, "filter");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        linkedHashSet.addAll(this.filters);
        linkedHashSet.add(filter);
        return new SplitPairRule(CollectionsKt.toSet(linkedHashSet), this.finishPrimaryWithSecondary, this.finishSecondaryWithPrimary, this.clearTop, getMinWidth(), getMinSmallestWidth(), getSplitRatio(), getLayoutDirection());
    }

    @Override // androidx.window.embedding.SplitRule
    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SplitPairRule) || !super.equals(other)) {
            return false;
        }
        SplitPairRule splitPairRule = (SplitPairRule) other;
        return Intrinsics.areEqual(this.filters, splitPairRule.filters) && this.finishPrimaryWithSecondary == splitPairRule.finishPrimaryWithSecondary && this.finishSecondaryWithPrimary == splitPairRule.finishSecondaryWithPrimary && this.clearTop == splitPairRule.clearTop;
    }

    @Override // androidx.window.embedding.SplitRule
    public int hashCode() {
        return (((((((super.hashCode() * 31) + this.filters.hashCode()) * 31) + Boolean.hashCode(this.finishPrimaryWithSecondary)) * 31) + Boolean.hashCode(this.finishSecondaryWithPrimary)) * 31) + Boolean.hashCode(this.clearTop);
    }
}
