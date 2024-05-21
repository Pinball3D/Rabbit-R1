package androidx.compose.material.ripple;

import android.content.Context;
import android.view.ViewGroup;
import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RippleContainer.android.kt */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J0\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0006H\u0014J\u0018\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0006H\u0014J\n\u0010\u0019\u001a\u00020\u000f*\u00020\u001aJ\n\u0010\u001b\u001a\u00020\f*\u00020\u001aR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Landroidx/compose/material/ripple/RippleContainer;", "Landroid/view/ViewGroup;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "MaxRippleHosts", "", "nextHostIndex", "rippleHostMap", "Landroidx/compose/material/ripple/RippleHostMap;", "rippleHosts", "", "Landroidx/compose/material/ripple/RippleHostView;", "unusedRippleHosts", "onLayout", "", "changed", "", CmcdHeadersFactory.STREAM_TYPE_LIVE, "t", "r", "b", "onMeasure", "widthMeasureSpec", "heightMeasureSpec", "disposeRippleIfNeeded", "Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;", "getRippleHostView", "material-ripple_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class RippleContainer extends ViewGroup {
    private final int MaxRippleHosts;
    private int nextHostIndex;
    private final RippleHostMap rippleHostMap;
    private final List<RippleHostView> rippleHosts;
    private final List<RippleHostView> unusedRippleHosts;

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int l, int t, int r, int b) {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RippleContainer(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.MaxRippleHosts = 5;
        ArrayList arrayList = new ArrayList();
        this.rippleHosts = arrayList;
        ArrayList arrayList2 = new ArrayList();
        this.unusedRippleHosts = arrayList2;
        this.rippleHostMap = new RippleHostMap();
        setClipChildren(false);
        RippleHostView rippleHostView = new RippleHostView(context);
        addView(rippleHostView);
        arrayList.add(rippleHostView);
        arrayList2.add(rippleHostView);
        this.nextHostIndex = 1;
        setTag(androidx.compose.ui.R.id.hide_in_inspector_tag, true);
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        setMeasuredDimension(0, 0);
    }

    public final RippleHostView getRippleHostView(AndroidRippleIndicationInstance androidRippleIndicationInstance) {
        Intrinsics.checkNotNullParameter(androidRippleIndicationInstance, "<this>");
        RippleHostView rippleHostView = this.rippleHostMap.get(androidRippleIndicationInstance);
        if (rippleHostView != null) {
            return rippleHostView;
        }
        RippleHostView rippleHostView2 = (RippleHostView) CollectionsKt.removeFirstOrNull(this.unusedRippleHosts);
        if (rippleHostView2 == null) {
            if (this.nextHostIndex > CollectionsKt.getLastIndex(this.rippleHosts)) {
                Context context = getContext();
                Intrinsics.checkNotNullExpressionValue(context, "context");
                rippleHostView2 = new RippleHostView(context);
                addView(rippleHostView2);
                this.rippleHosts.add(rippleHostView2);
            } else {
                rippleHostView2 = this.rippleHosts.get(this.nextHostIndex);
                AndroidRippleIndicationInstance androidRippleIndicationInstance2 = this.rippleHostMap.get(rippleHostView2);
                if (androidRippleIndicationInstance2 != null) {
                    androidRippleIndicationInstance2.resetHostView();
                    this.rippleHostMap.remove(androidRippleIndicationInstance2);
                    rippleHostView2.disposeRipple();
                }
            }
            int i = this.nextHostIndex;
            if (i < this.MaxRippleHosts - 1) {
                this.nextHostIndex = i + 1;
            } else {
                this.nextHostIndex = 0;
            }
        }
        this.rippleHostMap.set(androidRippleIndicationInstance, rippleHostView2);
        return rippleHostView2;
    }

    public final void disposeRippleIfNeeded(AndroidRippleIndicationInstance androidRippleIndicationInstance) {
        Intrinsics.checkNotNullParameter(androidRippleIndicationInstance, "<this>");
        androidRippleIndicationInstance.resetHostView();
        RippleHostView rippleHostView = this.rippleHostMap.get(androidRippleIndicationInstance);
        if (rippleHostView != null) {
            rippleHostView.disposeRipple();
            this.rippleHostMap.remove(androidRippleIndicationInstance);
            this.unusedRippleHosts.add(rippleHostView);
        }
    }
}
