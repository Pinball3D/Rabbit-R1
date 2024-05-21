package androidx.compose.ui.res;

import android.content.Context;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PrimitiveResources.android.kt */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0002\b\u0004\u001a\u0017\u0010\u0000\u001a\u00020\u00012\b\b\u0001\u0010\u0002\u001a\u00020\u0003H\u0007¢\u0006\u0002\u0010\u0004\u001a\u001a\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u0002\u001a\u00020\u0003H\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u0007\u001a\u0017\u0010\b\u001a\u00020\t2\b\b\u0001\u0010\u0002\u001a\u00020\u0003H\u0007¢\u0006\u0002\u0010\n\u001a\u0017\u0010\u000b\u001a\u00020\u00032\b\b\u0001\u0010\u0002\u001a\u00020\u0003H\u0007¢\u0006\u0002\u0010\f\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\r"}, d2 = {"booleanResource", "", "id", "", "(ILandroidx/compose/runtime/Composer;I)Z", "dimensionResource", "Landroidx/compose/ui/unit/Dp;", "(ILandroidx/compose/runtime/Composer;I)F", "integerArrayResource", "", "(ILandroidx/compose/runtime/Composer;I)[I", "integerResource", "(ILandroidx/compose/runtime/Composer;I)I", "ui_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PrimitiveResources_androidKt {
    public static final int integerResource(int i, Composer composer, int i2) {
        ComposerKt.sourceInformationMarkerStart(composer, 916701108, "C(integerResource)37@1263L7:PrimitiveResources.android.kt#ccshc7");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(916701108, i2, -1, "androidx.compose.ui.res.integerResource (PrimitiveResources.android.kt:36)");
        }
        ProvidableCompositionLocal<Context> localContext = AndroidCompositionLocals_androidKt.getLocalContext();
        ComposerKt.sourceInformationMarkerStart(composer, 2023513938, "CC:CompositionLocal.kt#9igjgp");
        Object consume = composer.consume(localContext);
        ComposerKt.sourceInformationMarkerEnd(composer);
        int integer = ((Context) consume).getResources().getInteger(i);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ComposerKt.sourceInformationMarkerEnd(composer);
        return integer;
    }

    public static final int[] integerArrayResource(int i, Composer composer, int i2) {
        ComposerKt.sourceInformationMarkerStart(composer, -93991766, "C(integerArrayResource)50@1581L7:PrimitiveResources.android.kt#ccshc7");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-93991766, i2, -1, "androidx.compose.ui.res.integerArrayResource (PrimitiveResources.android.kt:49)");
        }
        ProvidableCompositionLocal<Context> localContext = AndroidCompositionLocals_androidKt.getLocalContext();
        ComposerKt.sourceInformationMarkerStart(composer, 2023513938, "CC:CompositionLocal.kt#9igjgp");
        Object consume = composer.consume(localContext);
        ComposerKt.sourceInformationMarkerEnd(composer);
        int[] intArray = ((Context) consume).getResources().getIntArray(i);
        Intrinsics.checkNotNullExpressionValue(intArray, "context.resources.getIntArray(id)");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ComposerKt.sourceInformationMarkerEnd(composer);
        return intArray;
    }

    public static final boolean booleanResource(int i, Composer composer, int i2) {
        ComposerKt.sourceInformationMarkerStart(composer, -432394447, "C(booleanResource)63@1877L7:PrimitiveResources.android.kt#ccshc7");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-432394447, i2, -1, "androidx.compose.ui.res.booleanResource (PrimitiveResources.android.kt:62)");
        }
        ProvidableCompositionLocal<Context> localContext = AndroidCompositionLocals_androidKt.getLocalContext();
        ComposerKt.sourceInformationMarkerStart(composer, 2023513938, "CC:CompositionLocal.kt#9igjgp");
        Object consume = composer.consume(localContext);
        ComposerKt.sourceInformationMarkerEnd(composer);
        boolean z = ((Context) consume).getResources().getBoolean(i);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ComposerKt.sourceInformationMarkerEnd(composer);
        return z;
    }

    public static final float dimensionResource(int i, Composer composer, int i2) {
        ComposerKt.sourceInformationMarkerStart(composer, 804324951, "C(dimensionResource)76@2180L7,77@2219L7:PrimitiveResources.android.kt#ccshc7");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(804324951, i2, -1, "androidx.compose.ui.res.dimensionResource (PrimitiveResources.android.kt:75)");
        }
        ProvidableCompositionLocal<Context> localContext = AndroidCompositionLocals_androidKt.getLocalContext();
        ComposerKt.sourceInformationMarkerStart(composer, 2023513938, "CC:CompositionLocal.kt#9igjgp");
        Object consume = composer.consume(localContext);
        ComposerKt.sourceInformationMarkerEnd(composer);
        ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
        ComposerKt.sourceInformationMarkerStart(composer, 2023513938, "CC:CompositionLocal.kt#9igjgp");
        Object consume2 = composer.consume(localDensity);
        ComposerKt.sourceInformationMarkerEnd(composer);
        float m4883constructorimpl = Dp.m4883constructorimpl(((Context) consume).getResources().getDimension(i) / ((Density) consume2).getDensity());
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ComposerKt.sourceInformationMarkerEnd(composer);
        return m4883constructorimpl;
    }
}
