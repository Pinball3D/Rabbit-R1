package tech.rabbit.r1launcher.widget;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.RectF;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.app.NotificationCompat;
import io.sentry.Session;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.BuildConfig;
import tech.rabbit.r1launcher.initstep.utils.UiExtensionsKt;

/* compiled from: FactoryModeVerifyView.kt */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000 \u001f2\u00020\u0001:\u0002\u001f B%\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0017J\u000e\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0015\u001a\u00020\u0016J\u0006\u0010\u001d\u001a\u00020\u001cJ\u0006\u0010\u001e\u001a\u00020\u001cR\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000R!\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;", "Landroid/view/View;", "context", "Landroid/content/Context;", Session.JsonKeys.ATTRS, "Landroid/util/AttributeSet;", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "clickedLocations", "", "Landroid/graphics/PointF;", "fixedLocations", "", "Landroid/graphics/RectF;", "getFixedLocations", "()Ljava/util/List;", "fixedLocations$delegate", "Lkotlin/Lazy;", "handler", "Landroid/os/Handler;", "listener", "Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView$OnVerifySucceedListener;", "onTouchEvent", "", NotificationCompat.CATEGORY_EVENT, "Landroid/view/MotionEvent;", "setOnVerifySucceed", "", "startChecker", "stopChecker", "Companion", "OnVerifySucceedListener", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class FactoryModeVerifyView extends View {
    private final List<PointF> clickedLocations;

    /* renamed from: fixedLocations$delegate, reason: from kotlin metadata */
    private final Lazy fixedLocations;
    private final Handler handler;
    private OnVerifySucceedListener listener;
    public static final int $stable = 8;
    private static final float areaSize = UiExtensionsKt.getDp(80.0f);

    /* compiled from: FactoryModeVerifyView.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&¨\u0006\u0004"}, d2 = {"Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView$OnVerifySucceedListener;", "", "onVerifySucceed", "", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public interface OnVerifySucceedListener {
        void onVerifySucceed();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FactoryModeVerifyView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FactoryModeVerifyView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public final void setOnVerifySucceed(OnVerifySucceedListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listener = listener;
    }

    public /* synthetic */ FactoryModeVerifyView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FactoryModeVerifyView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.handler = new Handler(Looper.getMainLooper());
        this.fixedLocations = LazyKt.lazy(new Function0<List<? extends RectF>>() { // from class: tech.rabbit.r1launcher.widget.FactoryModeVerifyView$fixedLocations$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final List<? extends RectF> invoke() {
                float f;
                float f2;
                float f3;
                float f4;
                float f5;
                float f6;
                float f7;
                float f8;
                float f9;
                float f10;
                float f11;
                float f12;
                float f13;
                float f14;
                float f15;
                float f16;
                f = FactoryModeVerifyView.areaSize;
                f2 = FactoryModeVerifyView.areaSize;
                float measuredWidth = FactoryModeVerifyView.this.getMeasuredWidth();
                f3 = FactoryModeVerifyView.areaSize;
                float f17 = measuredWidth - f3;
                float measuredHeight = FactoryModeVerifyView.this.getMeasuredHeight();
                f4 = FactoryModeVerifyView.areaSize;
                float measuredWidth2 = FactoryModeVerifyView.this.getMeasuredWidth();
                f5 = FactoryModeVerifyView.areaSize;
                float f18 = measuredWidth2 - f5;
                float measuredWidth3 = FactoryModeVerifyView.this.getMeasuredWidth();
                f6 = FactoryModeVerifyView.areaSize;
                float measuredHeight2 = FactoryModeVerifyView.this.getMeasuredHeight();
                f7 = FactoryModeVerifyView.areaSize;
                float f19 = measuredHeight2 - f7;
                f8 = FactoryModeVerifyView.areaSize;
                float measuredHeight3 = FactoryModeVerifyView.this.getMeasuredHeight();
                f9 = FactoryModeVerifyView.areaSize;
                float f20 = measuredHeight3 - f9;
                f10 = FactoryModeVerifyView.areaSize;
                float measuredWidth4 = FactoryModeVerifyView.this.getMeasuredWidth();
                f11 = FactoryModeVerifyView.areaSize;
                float f21 = measuredWidth4 - f11;
                float measuredWidth5 = FactoryModeVerifyView.this.getMeasuredWidth();
                f12 = FactoryModeVerifyView.areaSize;
                float measuredWidth6 = FactoryModeVerifyView.this.getMeasuredWidth();
                f13 = FactoryModeVerifyView.areaSize;
                float f22 = measuredWidth6 - f13;
                float measuredHeight4 = FactoryModeVerifyView.this.getMeasuredHeight();
                f14 = FactoryModeVerifyView.areaSize;
                f15 = FactoryModeVerifyView.areaSize;
                f16 = FactoryModeVerifyView.areaSize;
                return CollectionsKt.listOf((Object[]) new RectF[]{new RectF(0.0f, 0.0f, f, f2), new RectF(f17, measuredHeight - f4, FactoryModeVerifyView.this.getMeasuredWidth(), FactoryModeVerifyView.this.getMeasuredHeight()), new RectF(f18, 0.0f, measuredWidth3, f6), new RectF(0.0f, f19, f8, FactoryModeVerifyView.this.getMeasuredHeight()), new RectF(0.0f, f20, f10, FactoryModeVerifyView.this.getMeasuredHeight()), new RectF(f21, 0.0f, measuredWidth5, f12), new RectF(f22, measuredHeight4 - f14, FactoryModeVerifyView.this.getMeasuredWidth(), FactoryModeVerifyView.this.getMeasuredHeight()), new RectF(0.0f, 0.0f, f15, f16)});
            }
        });
        this.clickedLocations = new ArrayList();
    }

    private final List<RectF> getFixedLocations() {
        return (List) this.fixedLocations.getValue();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        OnVerifySucceedListener onVerifySucceedListener;
        Intrinsics.checkNotNullParameter(event, "event");
        int i = 0;
        if (!BuildConfig.FACTORY_MODE_ENABLE.booleanValue()) {
            return false;
        }
        if (event.getActionMasked() != 1) {
            return true;
        }
        this.clickedLocations.add(new PointF(event.getX(), event.getY()));
        if (this.clickedLocations.size() != getFixedLocations().size()) {
            return true;
        }
        List<Pair> zip = CollectionsKt.zip(this.clickedLocations, getFixedLocations());
        if (!(zip instanceof Collection) || !zip.isEmpty()) {
            for (Pair pair : zip) {
                if (((RectF) pair.getSecond()).contains(((PointF) pair.getFirst()).x, ((PointF) pair.getFirst()).y) && (i = i + 1) < 0) {
                    CollectionsKt.throwCountOverflow();
                }
            }
        }
        this.clickedLocations.clear();
        if (i == getFixedLocations().size() && (onVerifySucceedListener = this.listener) != null) {
            onVerifySucceedListener.onVerifySucceed();
        }
        return true;
    }

    public final void startChecker() {
        if (BuildConfig.FACTORY_MODE_ENABLE.booleanValue()) {
            this.handler.postDelayed(new Runnable() { // from class: tech.rabbit.r1launcher.widget.FactoryModeVerifyView$startChecker$$inlined$postDelayed$default$1
                @Override // java.lang.Runnable
                public final void run() {
                    List list;
                    list = FactoryModeVerifyView.this.clickedLocations;
                    list.clear();
                    FactoryModeVerifyView.this.startChecker();
                }
            }, 15000L);
        }
    }

    public final void stopChecker() {
        if (BuildConfig.FACTORY_MODE_ENABLE.booleanValue()) {
            this.handler.removeCallbacksAndMessages(null);
        }
    }
}
