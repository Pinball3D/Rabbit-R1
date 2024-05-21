package androidx.compose.ui.text.android;

import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.Log;
import io.sentry.protocol.Message;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StaticLayoutFactory.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0002\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0017J\u0018\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\bH\u0016¨\u0006\f"}, d2 = {"Landroidx/compose/ui/text/android/StaticLayoutFactoryDefault;", "Landroidx/compose/ui/text/android/StaticLayoutFactoryImpl;", "()V", "create", "Landroid/text/StaticLayout;", Message.JsonKeys.PARAMS, "Landroidx/compose/ui/text/android/StaticLayoutParams;", "isFallbackLineSpacingEnabled", "", "layout", "useFallbackLineSpacing", "Companion", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class StaticLayoutFactoryDefault implements StaticLayoutFactoryImpl {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static boolean isInitialized;
    private static Constructor<StaticLayout> staticLayoutConstructor;

    @Override // androidx.compose.ui.text.android.StaticLayoutFactoryImpl
    public boolean isFallbackLineSpacingEnabled(StaticLayout layout, boolean useFallbackLineSpacing) {
        Intrinsics.checkNotNullParameter(layout, "layout");
        return false;
    }

    /* compiled from: StaticLayoutFactory.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Landroidx/compose/ui/text/android/StaticLayoutFactoryDefault$Companion;", "", "()V", "isInitialized", "", "staticLayoutConstructor", "Ljava/lang/reflect/Constructor;", "Landroid/text/StaticLayout;", "getStaticLayoutConstructor", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Constructor<StaticLayout> getStaticLayoutConstructor() {
            if (StaticLayoutFactoryDefault.isInitialized) {
                return StaticLayoutFactoryDefault.staticLayoutConstructor;
            }
            StaticLayoutFactoryDefault.isInitialized = true;
            try {
                StaticLayoutFactoryDefault.staticLayoutConstructor = StaticLayout.class.getConstructor(CharSequence.class, Integer.TYPE, Integer.TYPE, TextPaint.class, Integer.TYPE, Layout.Alignment.class, TextDirectionHeuristic.class, Float.TYPE, Float.TYPE, Boolean.TYPE, TextUtils.TruncateAt.class, Integer.TYPE, Integer.TYPE);
            } catch (NoSuchMethodException unused) {
                StaticLayoutFactoryDefault.staticLayoutConstructor = null;
                Log.e("StaticLayoutFactory", "unable to collect necessary constructor.");
            }
            return StaticLayoutFactoryDefault.staticLayoutConstructor;
        }
    }

    @Override // androidx.compose.ui.text.android.StaticLayoutFactoryImpl
    public StaticLayout create(StaticLayoutParams params) {
        Intrinsics.checkNotNullParameter(params, "params");
        Constructor staticLayoutConstructor2 = INSTANCE.getStaticLayoutConstructor();
        StaticLayout staticLayout = null;
        if (staticLayoutConstructor2 != null) {
            try {
                staticLayout = (StaticLayout) staticLayoutConstructor2.newInstance(params.getText(), Integer.valueOf(params.getStart()), Integer.valueOf(params.getEnd()), params.getPaint(), Integer.valueOf(params.getWidth()), params.getAlignment(), params.getTextDir(), Float.valueOf(params.getLineSpacingMultiplier()), Float.valueOf(params.getLineSpacingExtra()), Boolean.valueOf(params.getIncludePadding()), params.getEllipsize(), Integer.valueOf(params.getEllipsizedWidth()), Integer.valueOf(params.getMaxLines()));
            } catch (IllegalAccessException unused) {
                staticLayoutConstructor = null;
                Log.e("StaticLayoutFactory", "unable to call constructor");
            } catch (InstantiationException unused2) {
                staticLayoutConstructor = null;
                Log.e("StaticLayoutFactory", "unable to call constructor");
            } catch (InvocationTargetException unused3) {
                staticLayoutConstructor = null;
                Log.e("StaticLayoutFactory", "unable to call constructor");
            }
        }
        return staticLayout != null ? staticLayout : new StaticLayout(params.getText(), params.getStart(), params.getEnd(), params.getPaint(), params.getWidth(), params.getAlignment(), params.getLineSpacingMultiplier(), params.getLineSpacingExtra(), params.getIncludePadding(), params.getEllipsize(), params.getEllipsizedWidth());
    }
}
