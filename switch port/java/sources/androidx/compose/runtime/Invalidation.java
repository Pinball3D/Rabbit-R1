package androidx.compose.runtime;

import androidx.compose.runtime.collection.IdentityArraySet;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Composer.kt */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\b\u0002\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\u0006\u0010\u0011\u001a\u00020\u0012R\"\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, d2 = {"Landroidx/compose/runtime/Invalidation;", "", "scope", "Landroidx/compose/runtime/RecomposeScopeImpl;", "location", "", "instances", "Landroidx/compose/runtime/collection/IdentityArraySet;", "(Landroidx/compose/runtime/RecomposeScopeImpl;ILandroidx/compose/runtime/collection/IdentityArraySet;)V", "getInstances", "()Landroidx/compose/runtime/collection/IdentityArraySet;", "setInstances", "(Landroidx/compose/runtime/collection/IdentityArraySet;)V", "getLocation", "()I", "getScope", "()Landroidx/compose/runtime/RecomposeScopeImpl;", "isInvalid", "", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class Invalidation {
    private IdentityArraySet<Object> instances;
    private final int location;
    private final RecomposeScopeImpl scope;

    public final IdentityArraySet<Object> getInstances() {
        return this.instances;
    }

    public final int getLocation() {
        return this.location;
    }

    public final RecomposeScopeImpl getScope() {
        return this.scope;
    }

    public final void setInstances(IdentityArraySet<Object> identityArraySet) {
        this.instances = identityArraySet;
    }

    public Invalidation(RecomposeScopeImpl scope, int i, IdentityArraySet<Object> identityArraySet) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.scope = scope;
        this.location = i;
        this.instances = identityArraySet;
    }

    public final boolean isInvalid() {
        return this.scope.isInvalidFor(this.instances);
    }
}
