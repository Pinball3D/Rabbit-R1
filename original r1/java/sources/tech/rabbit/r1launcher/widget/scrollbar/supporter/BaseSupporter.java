package tech.rabbit.r1launcher.widget.scrollbar.supporter;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.widget.scrollbar.ScrollBarExtView;
import tech.rabbit.r1launcher.widget.scrollbar.ScrollBarExtViewUpdater;

/* compiled from: BaseSupporter.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b'\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\b\u0010\f\u001a\u00020\tH&J\u000e\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\b\u0010\u000e\u001a\u00020\tH&R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u000f"}, d2 = {"Ltech/rabbit/r1launcher/widget/scrollbar/supporter/BaseSupporter;", "Ltech/rabbit/r1launcher/widget/scrollbar/supporter/ScrollBarExtViewSupporter;", "()V", "_updater", "Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtViewUpdater;", "updater", "getUpdater", "()Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtViewUpdater;", "attach", "", "scrollBarExtView", "Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;", "attachExt", "detach", "detachExt", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public abstract class BaseSupporter implements ScrollBarExtViewSupporter {
    public static final int $stable = 8;
    private ScrollBarExtViewUpdater _updater;

    public abstract void attachExt();

    public abstract void detachExt();

    public final ScrollBarExtViewUpdater getUpdater() {
        ScrollBarExtViewUpdater scrollBarExtViewUpdater = this._updater;
        Intrinsics.checkNotNull(scrollBarExtViewUpdater);
        return scrollBarExtViewUpdater;
    }

    @Override // tech.rabbit.r1launcher.widget.scrollbar.supporter.ScrollBarExtViewSupporter
    public final void attach(ScrollBarExtView scrollBarExtView) {
        Intrinsics.checkNotNullParameter(scrollBarExtView, "scrollBarExtView");
        this._updater = scrollBarExtView;
        attachExt();
    }

    @Override // tech.rabbit.r1launcher.widget.scrollbar.supporter.ScrollBarExtViewSupporter
    public final void detach(ScrollBarExtView scrollBarExtView) {
        Intrinsics.checkNotNullParameter(scrollBarExtView, "scrollBarExtView");
        detachExt();
        this._updater = null;
    }
}
