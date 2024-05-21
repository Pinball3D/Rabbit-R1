package androidx.compose.ui.res;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.util.TypedValue;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.painter.BitmapPainter;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.graphics.vector.VectorPainter;
import androidx.compose.ui.graphics.vector.VectorPainterKt;
import androidx.compose.ui.graphics.vector.compat.XmlVectorParser_androidKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.ImageVectorCache;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* compiled from: PainterResources.android.kt */
@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0002\u001a1\u0010\b\u001a\u00020\t2\n\u0010\n\u001a\u00060\u000bR\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u0007H\u0003¢\u0006\u0002\u0010\r\u001a\u0017\u0010\u000e\u001a\u00020\u000f2\b\b\u0001\u0010\u0006\u001a\u00020\u0007H\u0007¢\u0006\u0002\u0010\u0010\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"errorMessage", "", "loadImageBitmapResource", "Landroidx/compose/ui/graphics/ImageBitmap;", "res", "Landroid/content/res/Resources;", "id", "", "loadVectorResource", "Landroidx/compose/ui/graphics/vector/ImageVector;", "theme", "Landroid/content/res/Resources$Theme;", "changingConfigurations", "(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;IILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/vector/ImageVector;", "painterResource", "Landroidx/compose/ui/graphics/painter/Painter;", "(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;", "ui_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PainterResources_androidKt {
    private static final String errorMessage = "Only VectorDrawables and rasterized asset types are supported ex. PNG, JPG";

    public static final Painter painterResource(int i, Composer composer, int i2) {
        BitmapPainter bitmapPainter;
        composer.startReplaceableGroup(473971343);
        ComposerKt.sourceInformation(composer, "C(painterResource)57@2406L7,58@2428L11,59@2456L25:PainterResources.android.kt#ccshc7");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(473971343, i2, -1, "androidx.compose.ui.res.painterResource (PainterResources.android.kt:56)");
        }
        ProvidableCompositionLocal<Context> localContext = AndroidCompositionLocals_androidKt.getLocalContext();
        ComposerKt.sourceInformationMarkerStart(composer, 2023513938, "CC:CompositionLocal.kt#9igjgp");
        Object consume = composer.consume(localContext);
        ComposerKt.sourceInformationMarkerEnd(composer);
        Context context = (Context) consume;
        Resources resources = Resources_androidKt.resources(composer, 0);
        composer.startReplaceableGroup(-492369756);
        ComposerKt.sourceInformation(composer, "CC(remember):Composables.kt#9igjgp");
        Object rememberedValue = composer.rememberedValue();
        if (rememberedValue == Composer.INSTANCE.getEmpty()) {
            rememberedValue = new TypedValue();
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        TypedValue typedValue = (TypedValue) rememberedValue;
        resources.getValue(i, typedValue, true);
        CharSequence charSequence = typedValue.string;
        if (charSequence != null && StringsKt.endsWith$default(charSequence, (CharSequence) ".xml", false, 2, (Object) null)) {
            composer.startReplaceableGroup(-738265327);
            ComposerKt.sourceInformation(composer, "64@2687L72,65@2768L34");
            Resources.Theme theme = context.getTheme();
            Intrinsics.checkNotNullExpressionValue(theme, "context.theme");
            VectorPainter rememberVectorPainter = VectorPainterKt.rememberVectorPainter(loadVectorResource(theme, resources, i, typedValue.changingConfigurations, composer, ((i2 << 6) & 896) | 72), composer, 0);
            composer.endReplaceableGroup();
            bitmapPainter = rememberVectorPainter;
        } else {
            composer.startReplaceableGroup(-738265172);
            ComposerKt.sourceInformation(composer, "68@2888L90");
            Object valueOf = Integer.valueOf(i);
            Object theme2 = context.getTheme();
            composer.startReplaceableGroup(1618982084);
            ComposerKt.sourceInformation(composer, "CC(remember)P(1,2,3):Composables.kt#9igjgp");
            boolean changed = composer.changed(valueOf) | composer.changed(charSequence) | composer.changed(theme2);
            Object rememberedValue2 = composer.rememberedValue();
            if (changed || rememberedValue2 == Composer.INSTANCE.getEmpty()) {
                rememberedValue2 = loadImageBitmapResource(resources, i);
                composer.updateRememberedValue(rememberedValue2);
            }
            composer.endReplaceableGroup();
            BitmapPainter bitmapPainter2 = new BitmapPainter((ImageBitmap) rememberedValue2, 0L, 0L, 6, null);
            composer.endReplaceableGroup();
            bitmapPainter = bitmapPainter2;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return bitmapPainter;
    }

    private static final ImageVector loadVectorResource(Resources.Theme theme, Resources resources, int i, int i2, Composer composer, int i3) {
        composer.startReplaceableGroup(21855625);
        ComposerKt.sourceInformation(composer, "C(loadVectorResource)P(3,2,1)87@3464L7:PainterResources.android.kt#ccshc7");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(21855625, i3, -1, "androidx.compose.ui.res.loadVectorResource (PainterResources.android.kt:81)");
        }
        ProvidableCompositionLocal<ImageVectorCache> localImageVectorCache = AndroidCompositionLocals_androidKt.getLocalImageVectorCache();
        ComposerKt.sourceInformationMarkerStart(composer, 2023513938, "CC:CompositionLocal.kt#9igjgp");
        Object consume = composer.consume(localImageVectorCache);
        ComposerKt.sourceInformationMarkerEnd(composer);
        ImageVectorCache imageVectorCache = (ImageVectorCache) consume;
        ImageVectorCache.Key key = new ImageVectorCache.Key(theme, i);
        ImageVectorCache.ImageVectorEntry imageVectorEntry = imageVectorCache.get(key);
        if (imageVectorEntry == null) {
            XmlResourceParser xml = resources.getXml(i);
            Intrinsics.checkNotNullExpressionValue(xml, "res.getXml(id)");
            if (!Intrinsics.areEqual(XmlVectorParser_androidKt.seekToStartTag(xml).getName(), "vector")) {
                throw new IllegalArgumentException(errorMessage);
            }
            imageVectorEntry = VectorResources_androidKt.loadVectorResourceInner(theme, resources, xml, i2);
            imageVectorCache.set(key, imageVectorEntry);
        }
        ImageVector imageVector = imageVectorEntry.getImageVector();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return imageVector;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ImageBitmap loadImageBitmapResource(Resources resources, int i) {
        return ImageResources_androidKt.imageResource(ImageBitmap.INSTANCE, resources, i);
    }
}
