package io.sentry.android.fragment;

import io.sentry.Session;
import kotlin.Metadata;
import kotlinx.coroutines.debug.internal.DebugCoroutineInfoImplKt;

/* compiled from: FragmentLifecycleState.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011¨\u0006\u0012"}, d2 = {"Lio/sentry/android/fragment/FragmentLifecycleState;", "", "breadcrumbName", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getBreadcrumbName$sentry_android_fragment_release", "()Ljava/lang/String;", "ATTACHED", "SAVE_INSTANCE_STATE", DebugCoroutineInfoImplKt.CREATED, "VIEW_CREATED", "STARTED", "RESUMED", "PAUSED", "STOPPED", "VIEW_DESTROYED", "DESTROYED", "DETACHED", "sentry-android-fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public enum FragmentLifecycleState {
    ATTACHED("attached"),
    SAVE_INSTANCE_STATE("save instance state"),
    CREATED("created"),
    VIEW_CREATED("view created"),
    STARTED(Session.JsonKeys.STARTED),
    RESUMED("resumed"),
    PAUSED("paused"),
    STOPPED("stopped"),
    VIEW_DESTROYED("view destroyed"),
    DESTROYED("destroyed"),
    DETACHED("detached");

    private final String breadcrumbName;

    /* renamed from: getBreadcrumbName$sentry_android_fragment_release, reason: from getter */
    public final String getBreadcrumbName() {
        return this.breadcrumbName;
    }

    FragmentLifecycleState(String str) {
        this.breadcrumbName = str;
    }
}
