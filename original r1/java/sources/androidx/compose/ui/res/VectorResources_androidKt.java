package androidx.compose.ui.res;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.graphics.vector.compat.AndroidVectorParser;
import androidx.compose.ui.graphics.vector.compat.XmlVectorParser_androidKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.ImageVectorCache;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: VectorResources.android.kt */
@Metadata(d1 = {"\u0000,\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a0\u0010\u0000\u001a\u00020\u00012\u000e\b\u0002\u0010\u0002\u001a\b\u0018\u00010\u0003R\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0000\u001a*\u0010\n\u001a\u00020\u000b*\u00020\f2\u000e\b\u0002\u0010\u0002\u001a\b\u0018\u00010\u0003R\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\t\u001a\u001b\u0010\n\u001a\u00020\u000b*\u00020\f2\b\b\u0001\u0010\u000e\u001a\u00020\tH\u0007¢\u0006\u0002\u0010\u000f¨\u0006\u0010"}, d2 = {"loadVectorResourceInner", "Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;", "theme", "Landroid/content/res/Resources$Theme;", "Landroid/content/res/Resources;", "res", "parser", "Landroid/content/res/XmlResourceParser;", "changingConfigurations", "", "vectorResource", "Landroidx/compose/ui/graphics/vector/ImageVector;", "Landroidx/compose/ui/graphics/vector/ImageVector$Companion;", "resId", "id", "(Landroidx/compose/ui/graphics/vector/ImageVector$Companion;ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/vector/ImageVector;", "ui_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class VectorResources_androidKt {
    public static final ImageVector vectorResource(ImageVector.Companion companion, int i, Composer composer, int i2) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        composer.startReplaceableGroup(44534090);
        ComposerKt.sourceInformation(composer, "C(vectorResource)48@1967L7,49@1989L11,52@2043L90:VectorResources.android.kt#ccshc7");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(44534090, i2, -1, "androidx.compose.ui.res.vectorResource (VectorResources.android.kt:47)");
        }
        ProvidableCompositionLocal<Context> localContext = AndroidCompositionLocals_androidKt.getLocalContext();
        ComposerKt.sourceInformationMarkerStart(composer, 2023513938, "CC:CompositionLocal.kt#9igjgp");
        Object consume = composer.consume(localContext);
        ComposerKt.sourceInformationMarkerEnd(composer);
        Resources resources = Resources_androidKt.resources(composer, 0);
        Resources.Theme theme = ((Context) consume).getTheme();
        Object[] objArr = {Integer.valueOf(i), resources, theme, resources.getConfiguration()};
        composer.startReplaceableGroup(-568225417);
        ComposerKt.sourceInformation(composer, "CC(remember)P(1):Composables.kt#9igjgp");
        boolean z = false;
        for (int i3 = 0; i3 < 4; i3++) {
            z |= composer.changed(objArr[i3]);
        }
        Object rememberedValue = composer.rememberedValue();
        if (z || rememberedValue == Composer.INSTANCE.getEmpty()) {
            rememberedValue = vectorResource(companion, theme, resources, i);
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        ImageVector imageVector = (ImageVector) rememberedValue;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return imageVector;
    }

    public static /* synthetic */ ImageVector vectorResource$default(ImageVector.Companion companion, Resources.Theme theme, Resources resources, int i, int i2, Object obj) throws XmlPullParserException {
        if ((i2 & 1) != 0) {
            theme = null;
        }
        return vectorResource(companion, theme, resources, i);
    }

    public static final ImageVector vectorResource(ImageVector.Companion companion, Resources.Theme theme, Resources res, int i) throws XmlPullParserException {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        Intrinsics.checkNotNullParameter(res, "res");
        TypedValue typedValue = new TypedValue();
        res.getValue(i, typedValue, true);
        XmlResourceParser vectorResource$lambda$1 = res.getXml(i);
        Intrinsics.checkNotNullExpressionValue(vectorResource$lambda$1, "vectorResource$lambda$1");
        XmlVectorParser_androidKt.seekToStartTag(vectorResource$lambda$1);
        Unit unit = Unit.INSTANCE;
        Intrinsics.checkNotNullExpressionValue(vectorResource$lambda$1, "res.getXml(resId).apply { seekToStartTag() }");
        return loadVectorResourceInner(theme, res, vectorResource$lambda$1, typedValue.changingConfigurations).getImageVector();
    }

    public static /* synthetic */ ImageVectorCache.ImageVectorEntry loadVectorResourceInner$default(Resources.Theme theme, Resources resources, XmlResourceParser xmlResourceParser, int i, int i2, Object obj) throws XmlPullParserException {
        if ((i2 & 1) != 0) {
            theme = null;
        }
        return loadVectorResourceInner(theme, resources, xmlResourceParser, i);
    }

    public static final ImageVectorCache.ImageVectorEntry loadVectorResourceInner(Resources.Theme theme, Resources res, XmlResourceParser parser, int i) throws XmlPullParserException {
        Intrinsics.checkNotNullParameter(res, "res");
        Intrinsics.checkNotNullParameter(parser, "parser");
        XmlResourceParser xmlResourceParser = parser;
        AttributeSet attrs = Xml.asAttributeSet(xmlResourceParser);
        AndroidVectorParser androidVectorParser = new AndroidVectorParser(xmlResourceParser, 0, 2, null);
        Intrinsics.checkNotNullExpressionValue(attrs, "attrs");
        ImageVector.Builder createVectorImageBuilder = XmlVectorParser_androidKt.createVectorImageBuilder(androidVectorParser, res, theme, attrs);
        int i2 = 0;
        while (!XmlVectorParser_androidKt.isAtEnd(xmlResourceParser)) {
            i2 = XmlVectorParser_androidKt.parseCurrentVectorNode(androidVectorParser, res, attrs, theme, createVectorImageBuilder, i2);
            parser.next();
        }
        return new ImageVectorCache.ImageVectorEntry(createVectorImageBuilder.build(), i);
    }
}
