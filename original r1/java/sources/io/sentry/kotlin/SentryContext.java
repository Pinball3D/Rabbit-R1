package io.sentry.kotlin;

import io.sentry.IHub;
import io.sentry.Sentry;
import kotlin.Metadata;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CopyableThreadContextElement;

/* compiled from: SentryContext.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u0000 \u00102\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\u0010B\u000f\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002¢\u0006\u0002\u0010\u0005J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\u0016J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016J\u0018\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\u0002H\u0016J\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\bH\u0016R\u000e\u0010\u0004\u001a\u00020\u0002X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lio/sentry/kotlin/SentryContext;", "Lkotlinx/coroutines/CopyableThreadContextElement;", "Lio/sentry/IHub;", "Lkotlin/coroutines/AbstractCoroutineContextElement;", "hub", "(Lio/sentry/IHub;)V", "copyForChild", "mergeForChild", "Lkotlin/coroutines/CoroutineContext;", "overwritingElement", "Lkotlin/coroutines/CoroutineContext$Element;", "restoreThreadContext", "", "context", "oldState", "updateThreadContext", "Key", "sentry-kotlin-extensions"}, k = 1, mv = {1, 4, 3})
/* loaded from: classes3.dex */
public final class SentryContext extends AbstractCoroutineContextElement implements CopyableThreadContextElement<IHub> {
    private static final Key Key = new Key(null);
    private final IHub hub;

    /* JADX WARN: Multi-variable type inference failed */
    public SentryContext() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ SentryContext(io.sentry.IHub r1, int r2, kotlin.jvm.internal.DefaultConstructorMarker r3) {
        /*
            r0 = this;
            r2 = r2 & 1
            if (r2 == 0) goto L11
            io.sentry.IHub r1 = io.sentry.Sentry.getCurrentHub()
            io.sentry.IHub r1 = r1.m5623clone()
            java.lang.String r2 = "Sentry.getCurrentHub().clone()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
        L11:
            r0.<init>(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.kotlin.SentryContext.<init>(io.sentry.IHub, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    @Override // kotlin.coroutines.AbstractCoroutineContextElement, kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public <R> R fold(R r, Function2<? super R, ? super CoroutineContext.Element, ? extends R> operation) {
        Intrinsics.checkNotNullParameter(operation, "operation");
        return (R) CopyableThreadContextElement.DefaultImpls.fold(this, r, operation);
    }

    @Override // kotlin.coroutines.AbstractCoroutineContextElement, kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public <E extends CoroutineContext.Element> E get(CoroutineContext.Key<E> key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return (E) CopyableThreadContextElement.DefaultImpls.get(this, key);
    }

    @Override // kotlin.coroutines.AbstractCoroutineContextElement, kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public CoroutineContext minusKey(CoroutineContext.Key<?> key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return CopyableThreadContextElement.DefaultImpls.minusKey(this, key);
    }

    @Override // kotlin.coroutines.AbstractCoroutineContextElement, kotlin.coroutines.CoroutineContext
    public CoroutineContext plus(CoroutineContext context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return CopyableThreadContextElement.DefaultImpls.plus(this, context);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SentryContext(IHub hub) {
        super(Key);
        Intrinsics.checkNotNullParameter(hub, "hub");
        this.hub = hub;
    }

    /* compiled from: SentryContext.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0082\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lio/sentry/kotlin/SentryContext$Key;", "Lkotlin/coroutines/CoroutineContext$Key;", "Lio/sentry/kotlin/SentryContext;", "()V", "sentry-kotlin-extensions"}, k = 1, mv = {1, 4, 3})
    /* loaded from: classes3.dex */
    private static final class Key implements CoroutineContext.Key<SentryContext> {
        private Key() {
        }

        public /* synthetic */ Key(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Override // kotlinx.coroutines.CopyableThreadContextElement
    public CopyableThreadContextElement<IHub> copyForChild() {
        IHub m5623clone = this.hub.m5623clone();
        Intrinsics.checkNotNullExpressionValue(m5623clone, "hub.clone()");
        return new SentryContext(m5623clone);
    }

    @Override // kotlinx.coroutines.CopyableThreadContextElement
    public CoroutineContext mergeForChild(CoroutineContext.Element overwritingElement) {
        Intrinsics.checkNotNullParameter(overwritingElement, "overwritingElement");
        SentryContext sentryContext = (SentryContext) overwritingElement.get(Key);
        if (sentryContext == null) {
            IHub m5623clone = this.hub.m5623clone();
            Intrinsics.checkNotNullExpressionValue(m5623clone, "hub.clone()");
            sentryContext = new SentryContext(m5623clone);
        }
        return sentryContext;
    }

    @Override // kotlinx.coroutines.ThreadContextElement
    public IHub updateThreadContext(CoroutineContext context) {
        Intrinsics.checkNotNullParameter(context, "context");
        IHub currentHub = Sentry.getCurrentHub();
        Intrinsics.checkNotNullExpressionValue(currentHub, "Sentry.getCurrentHub()");
        Sentry.setCurrentHub(this.hub);
        return currentHub;
    }

    @Override // kotlinx.coroutines.ThreadContextElement
    public void restoreThreadContext(CoroutineContext context, IHub oldState) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(oldState, "oldState");
        Sentry.setCurrentHub(oldState);
    }
}
