package tech.rabbit.r1launcher;

import android.content.Context;
import android.view.OrientationEventListener;
import io.sentry.protocol.Device;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MainActivity.kt */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0002\u0018\u00002\u00020\u0001B'\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0016\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005j\u0002`\b¢\u0006\u0002\u0010\tJ\u0010\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0006H\u0016R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR!\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005j\u0002`\b¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u000e\u0010\u000e\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Ltech/rabbit/r1launcher/RBOrientationListener;", "Landroid/view/OrientationEventListener;", "context", "Landroid/content/Context;", "handler", "Lkotlin/Function1;", "", "", "Ltech/rabbit/r1launcher/OrientationHandler;", "(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V", "getContext", "()Landroid/content/Context;", "getHandler", "()Lkotlin/jvm/functions/Function1;", Device.JsonKeys.ORIENTATION, "onOrientationChanged", "orientationValue", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
final class RBOrientationListener extends OrientationEventListener {
    private final Context context;
    private final Function1<Integer, Unit> handler;
    private int orientation;

    public final Context getContext() {
        return this.context;
    }

    public final Function1<Integer, Unit> getHandler() {
        return this.handler;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public RBOrientationListener(Context context, Function1<? super Integer, Unit> handler) {
        super(context);
        Intrinsics.checkNotNullParameter(handler, "handler");
        this.context = context;
        this.handler = handler;
    }

    @Override // android.view.OrientationEventListener
    public void onOrientationChanged(int orientationValue) {
        if (orientationValue == -1) {
            return;
        }
        int i = this.orientation;
        if (i != 1 && (orientationValue < 5 || orientationValue > 355)) {
            this.orientation = 1;
        } else if (85 <= orientationValue && orientationValue < 96 && i != 8) {
            this.orientation = 8;
        }
        int i2 = this.orientation;
        if (i != i2) {
            this.handler.invoke(Integer.valueOf(i2));
        }
    }
}
