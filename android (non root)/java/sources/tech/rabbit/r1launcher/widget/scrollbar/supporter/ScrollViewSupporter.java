package tech.rabbit.r1launcher.widget.scrollbar.supporter;

import android.view.View;
import android.widget.ScrollView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ScrollViewSupporter.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Ltech/rabbit/r1launcher/widget/scrollbar/supporter/ScrollViewSupporter;", "Ltech/rabbit/r1launcher/widget/scrollbar/supporter/BaseSupporter;", "scrollView", "Landroid/widget/ScrollView;", "(Landroid/widget/ScrollView;)V", "attachExt", "", "detachExt", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class ScrollViewSupporter extends BaseSupporter {
    public static final int $stable = 8;
    private final ScrollView scrollView;

    @Override // tech.rabbit.r1launcher.widget.scrollbar.supporter.BaseSupporter
    public void detachExt() {
    }

    public ScrollViewSupporter(ScrollView scrollView) {
        Intrinsics.checkNotNullParameter(scrollView, "scrollView");
        this.scrollView = scrollView;
    }

    @Override // tech.rabbit.r1launcher.widget.scrollbar.supporter.BaseSupporter
    public void attachExt() {
        this.scrollView.setOnScrollChangeListener(new View.OnScrollChangeListener() { // from class: tech.rabbit.r1launcher.widget.scrollbar.supporter.ScrollViewSupporter$$ExternalSyntheticLambda0
            @Override // android.view.View.OnScrollChangeListener
            public final void onScrollChange(View view, int i, int i2, int i3, int i4) {
                ScrollViewSupporter.attachExt$lambda$0(ScrollViewSupporter.this, view, i, i2, i3, i4);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void attachExt$lambda$0(ScrollViewSupporter this$0, View view, int i, int i2, int i3, int i4) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getUpdater().updateScrollPercentage(i2 / (this$0.scrollView.getChildAt(0).getMeasuredHeight() - this$0.scrollView.getMeasuredHeight()));
    }
}
