package androidx.compose.ui.input.nestedscroll;

import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import io.sentry.okhttp.SentryOkHttpEventListener;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: NestedScrollModifier.kt */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007J\b\u0010\f\u001a\u00020\u0002H\u0016J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0002H\u0016J\f\u0010\u0016\u001a\u00020\u0014*\u00020\u0017H\u0016R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0018"}, d2 = {"Landroidx/compose/ui/input/nestedscroll/NestedScrollElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;", SentryOkHttpEventListener.CONNECTION_EVENT, "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;", "dispatcher", "Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;", "(Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)V", "getConnection", "()Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;", "getDispatcher", "()Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;", "create", "equals", "", "other", "", "hashCode", "", "update", "", "node", "inspectableProperties", "Landroidx/compose/ui/platform/InspectorInfo;", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class NestedScrollElement extends ModifierNodeElement<NestedScrollNode> {
    private final NestedScrollConnection connection;
    private final NestedScrollDispatcher dispatcher;

    public final NestedScrollConnection getConnection() {
        return this.connection;
    }

    public final NestedScrollDispatcher getDispatcher() {
        return this.dispatcher;
    }

    public NestedScrollElement(NestedScrollConnection connection, NestedScrollDispatcher nestedScrollDispatcher) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        this.connection = connection;
        this.dispatcher = nestedScrollDispatcher;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public NestedScrollNode create() {
        return new NestedScrollNode(this.connection, this.dispatcher);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(NestedScrollNode node) {
        Intrinsics.checkNotNullParameter(node, "node");
        node.updateNode$ui_release(this.connection, this.dispatcher);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        int hashCode = this.connection.hashCode() * 31;
        NestedScrollDispatcher nestedScrollDispatcher = this.dispatcher;
        return hashCode + (nestedScrollDispatcher != null ? nestedScrollDispatcher.hashCode() : 0);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object other) {
        if (!(other instanceof NestedScrollElement)) {
            return false;
        }
        NestedScrollElement nestedScrollElement = (NestedScrollElement) other;
        return Intrinsics.areEqual(nestedScrollElement.connection, this.connection) && Intrinsics.areEqual(nestedScrollElement.dispatcher, this.dispatcher);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        Intrinsics.checkNotNullParameter(inspectorInfo, "<this>");
        inspectorInfo.setName("nestedScroll");
        inspectorInfo.getProperties().set(SentryOkHttpEventListener.CONNECTION_EVENT, this.connection);
        inspectorInfo.getProperties().set("dispatcher", this.dispatcher);
    }
}
