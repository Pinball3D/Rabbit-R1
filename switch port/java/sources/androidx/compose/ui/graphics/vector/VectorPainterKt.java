package androidx.compose.ui.graphics.vector;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.BlendMode;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.vector.VectorProperty;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: VectorPainter.kt */
@Metadata(d1 = {"\u0000v\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a+\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0014\b\u0002\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\b0\u0007H\u0007¢\u0006\u0002\u0010\t\u001a\u0015\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0007¢\u0006\u0002\u0010\u000e\u001a\u0099\u0001\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\b\b\u0002\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u00132\b\b\u0002\u0010\u0015\u001a\u00020\u00012\b\b\u0002\u0010\u0016\u001a\u00020\u00172\b\b\u0002\u0010\u0018\u001a\u00020\u00192@\u0010\u001a\u001a<\u0012\u0013\u0012\u00110\u0013¢\u0006\f\b\u001c\u0012\b\b\u0015\u0012\u0004\b\b(\u0012\u0012\u0013\u0012\u00110\u0013¢\u0006\f\b\u001c\u0012\b\b\u0015\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\u00030\u001b¢\u0006\u0002\b\u001d¢\u0006\u0002\b\u001eH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001f\u0010 \u001a£\u0001\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\b\b\u0002\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u00132\b\b\u0002\u0010\u0015\u001a\u00020\u00012\b\b\u0002\u0010\u0016\u001a\u00020\u00172\b\b\u0002\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010!\u001a\u00020\"2@\u0010\u001a\u001a<\u0012\u0013\u0012\u00110\u0013¢\u0006\f\b\u001c\u0012\b\b\u0015\u0012\u0004\b\b(\u0012\u0012\u0013\u0012\u00110\u0013¢\u0006\f\b\u001c\u0012\b\b\u0015\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\u00030\u001b¢\u0006\u0002\b\u001d¢\u0006\u0002\b\u001eH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b#\u0010$\u001a&\u0010%\u001a\u00020\u0003*\u00020&2\u0017\u0010'\u001a\u0013\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020\u00030(¢\u0006\u0002\b)H\u0082\b\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006*"}, d2 = {"RootGroupName", "", "RenderVectorGroup", "", "group", "Landroidx/compose/ui/graphics/vector/VectorGroup;", "configs", "", "Landroidx/compose/ui/graphics/vector/VectorConfig;", "(Landroidx/compose/ui/graphics/vector/VectorGroup;Ljava/util/Map;Landroidx/compose/runtime/Composer;II)V", "rememberVectorPainter", "Landroidx/compose/ui/graphics/vector/VectorPainter;", "image", "Landroidx/compose/ui/graphics/vector/ImageVector;", "(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/vector/VectorPainter;", "defaultWidth", "Landroidx/compose/ui/unit/Dp;", "defaultHeight", "viewportWidth", "", "viewportHeight", "name", "tintColor", "Landroidx/compose/ui/graphics/Color;", "tintBlendMode", "Landroidx/compose/ui/graphics/BlendMode;", "content", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "Landroidx/compose/runtime/Composable;", "Landroidx/compose/ui/graphics/vector/VectorComposable;", "rememberVectorPainter-mlNsNFs", "(FFFFLjava/lang/String;JILkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)Landroidx/compose/ui/graphics/vector/VectorPainter;", "autoMirror", "", "rememberVectorPainter-vIP8VLU", "(FFFFLjava/lang/String;JIZLkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)Landroidx/compose/ui/graphics/vector/VectorPainter;", "mirror", "Landroidx/compose/ui/graphics/drawscope/DrawScope;", "block", "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "ui_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class VectorPainterKt {
    public static final String RootGroupName = "VectorRootGroup";

    @Deprecated(message = "Replace rememberVectorPainter graphicsLayer that consumes the auto mirror flag", replaceWith = @ReplaceWith(expression = "rememberVectorPainter(defaultWidth, defaultHeight, viewportWidth, viewportHeight, name, tintColor, tintBlendMode, false, content)", imports = {"androidx.compose.ui.graphics.vector"}))
    /* renamed from: rememberVectorPainter-mlNsNFs, reason: not valid java name */
    public static final VectorPainter m3279rememberVectorPaintermlNsNFs(float f, float f2, float f3, float f4, String str, long j, int i, Function4<? super Float, ? super Float, ? super Composer, ? super Integer, Unit> content, Composer composer, int i2, int i3) {
        Intrinsics.checkNotNullParameter(content, "content");
        composer.startReplaceableGroup(-964365210);
        ComposerKt.sourceInformation(composer, "C(rememberVectorPainter)P(2:c#ui.unit.Dp,1:c#ui.unit.Dp,7,6,3,5:c#ui.graphics.Color,4:c#ui.graphics.BlendMode)83@3597L207:VectorPainter.kt#huu6hf");
        float f5 = (i3 & 4) != 0 ? Float.NaN : f3;
        float f6 = (i3 & 8) == 0 ? f4 : Float.NaN;
        String str2 = (i3 & 16) != 0 ? RootGroupName : str;
        long m2675getUnspecified0d7_KjU = (i3 & 32) != 0 ? Color.INSTANCE.m2675getUnspecified0d7_KjU() : j;
        int m2581getSrcIn0nO6VwU = (i3 & 64) != 0 ? BlendMode.INSTANCE.m2581getSrcIn0nO6VwU() : i;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-964365210, i2, -1, "androidx.compose.ui.graphics.vector.rememberVectorPainter (VectorPainter.kt:73)");
        }
        VectorPainter m3280rememberVectorPaintervIP8VLU = m3280rememberVectorPaintervIP8VLU(f, f2, f5, f6, str2, m2675getUnspecified0d7_KjU, m2581getSrcIn0nO6VwU, false, content, composer, (i2 & 14) | 12582912 | (i2 & 112) | (i2 & 896) | (i2 & 7168) | (57344 & i2) | (458752 & i2) | (3670016 & i2) | ((i2 << 3) & 234881024), 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return m3280rememberVectorPaintervIP8VLU;
    }

    /* renamed from: rememberVectorPainter-vIP8VLU, reason: not valid java name */
    public static final VectorPainter m3280rememberVectorPaintervIP8VLU(float f, float f2, float f3, float f4, String str, long j, int i, boolean z, Function4<? super Float, ? super Float, ? super Composer, ? super Integer, Unit> content, Composer composer, int i2, int i3) {
        Intrinsics.checkNotNullParameter(content, "content");
        composer.startReplaceableGroup(1068590786);
        ComposerKt.sourceInformation(composer, "C(rememberVectorPainter)P(3:c#ui.unit.Dp,2:c#ui.unit.Dp,8,7,4,6:c#ui.graphics.Color,5:c#ui.graphics.BlendMode)126@5382L7,133@5685L187,*141@5885L28,146@6158L46:VectorPainter.kt#huu6hf");
        float f5 = (i3 & 4) != 0 ? Float.NaN : f3;
        float f6 = (i3 & 8) == 0 ? f4 : Float.NaN;
        String str2 = (i3 & 16) != 0 ? RootGroupName : str;
        long m2675getUnspecified0d7_KjU = (i3 & 32) != 0 ? Color.INSTANCE.m2675getUnspecified0d7_KjU() : j;
        int m2581getSrcIn0nO6VwU = (i3 & 64) != 0 ? BlendMode.INSTANCE.m2581getSrcIn0nO6VwU() : i;
        boolean z2 = (i3 & 128) != 0 ? false : z;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1068590786, i2, -1, "androidx.compose.ui.graphics.vector.rememberVectorPainter (VectorPainter.kt:115)");
        }
        ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
        ComposerKt.sourceInformationMarkerStart(composer, 2023513938, "CC:CompositionLocal.kt#9igjgp");
        Object consume = composer.consume(localDensity);
        ComposerKt.sourceInformationMarkerEnd(composer);
        Density density = (Density) consume;
        float mo335toPx0680j_4 = density.mo335toPx0680j_4(f);
        float mo335toPx0680j_42 = density.mo335toPx0680j_4(f2);
        if (Float.isNaN(f5)) {
            f5 = mo335toPx0680j_4;
        }
        if (Float.isNaN(f6)) {
            f6 = mo335toPx0680j_42;
        }
        Color m2629boximpl = Color.m2629boximpl(m2675getUnspecified0d7_KjU);
        BlendMode m2549boximpl = BlendMode.m2549boximpl(m2581getSrcIn0nO6VwU);
        int i4 = i2 >> 15;
        composer.startReplaceableGroup(511388516);
        ComposerKt.sourceInformation(composer, "CC(remember)P(1,2):Composables.kt#9igjgp");
        boolean changed = composer.changed(m2629boximpl) | composer.changed(m2549boximpl);
        Object rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.INSTANCE.getEmpty()) {
            rememberedValue = !Color.m2640equalsimpl0(m2675getUnspecified0d7_KjU, Color.INSTANCE.m2675getUnspecified0d7_KjU()) ? ColorFilter.INSTANCE.m2683tintxETnrds(m2675getUnspecified0d7_KjU, m2581getSrcIn0nO6VwU) : null;
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        ColorFilter colorFilter = (ColorFilter) rememberedValue;
        composer.startReplaceableGroup(-492369756);
        ComposerKt.sourceInformation(composer, "CC(remember):Composables.kt#9igjgp");
        Object rememberedValue2 = composer.rememberedValue();
        if (rememberedValue2 == Composer.INSTANCE.getEmpty()) {
            rememberedValue2 = new VectorPainter();
            composer.updateRememberedValue(rememberedValue2);
        }
        composer.endReplaceableGroup();
        VectorPainter vectorPainter = (VectorPainter) rememberedValue2;
        vectorPainter.m3278setSizeuvyYCjk$ui_release(SizeKt.Size(mo335toPx0680j_4, mo335toPx0680j_42));
        vectorPainter.setAutoMirror$ui_release(z2);
        vectorPainter.setIntrinsicColorFilter$ui_release(colorFilter);
        vectorPainter.RenderVector$ui_release(str2, f5, f6, content, composer, ((i2 >> 12) & 14) | 32768 | (i4 & 7168));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return vectorPainter;
    }

    public static final VectorPainter rememberVectorPainter(final ImageVector image, Composer composer, int i) {
        Intrinsics.checkNotNullParameter(image, "image");
        composer.startReplaceableGroup(1413834416);
        ComposerKt.sourceInformation(composer, "C(rememberVectorPainter)158@6529L424:VectorPainter.kt#huu6hf");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1413834416, i, -1, "androidx.compose.ui.graphics.vector.rememberVectorPainter (VectorPainter.kt:157)");
        }
        VectorPainter m3280rememberVectorPaintervIP8VLU = m3280rememberVectorPaintervIP8VLU(image.getDefaultWidth(), image.getDefaultHeight(), image.getViewportWidth(), image.getViewportHeight(), image.getName(), image.getTintColor(), image.getTintBlendMode(), image.getAutoMirror(), ComposableLambdaKt.composableLambda(composer, 1873274766, true, new Function4<Float, Float, Composer, Integer, Unit>() { // from class: androidx.compose.ui.graphics.vector.VectorPainterKt$rememberVectorPainter$3
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(4);
            }

            @Override // kotlin.jvm.functions.Function4
            public /* bridge */ /* synthetic */ Unit invoke(Float f, Float f2, Composer composer2, Integer num) {
                invoke(f.floatValue(), f2.floatValue(), composer2, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(float f, float f2, Composer composer2, int i2) {
                ComposerKt.sourceInformation(composer2, "C167@6908L37:VectorPainter.kt#huu6hf");
                if ((i2 & 11) == 2 && composer2.getSkipping()) {
                    composer2.skipToGroupEnd();
                    return;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1873274766, i2, -1, "androidx.compose.ui.graphics.vector.rememberVectorPainter.<anonymous> (VectorPainter.kt:167)");
                }
                VectorPainterKt.RenderVectorGroup(ImageVector.this.getRoot(), null, composer2, 0, 2);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
        }), composer, 100663296, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return m3280rememberVectorPaintervIP8VLU;
    }

    public static final void RenderVectorGroup(final VectorGroup group, Map<String, ? extends VectorConfig> map, Composer composer, final int i, final int i2) {
        int i3;
        final Map<String, ? extends VectorConfig> map2;
        Composer composer2;
        final Map<String, ? extends VectorConfig> map3;
        Intrinsics.checkNotNullParameter(group, "group");
        Composer startRestartGroup = composer.startRestartGroup(-446179233);
        ComposerKt.sourceInformation(startRestartGroup, "C(RenderVectorGroup)P(1):VectorPainter.kt#huu6hf");
        if ((i2 & 1) != 0) {
            i3 = i | 6;
        } else if ((i & 14) == 0) {
            i3 = (startRestartGroup.changed(group) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        int i4 = i2 & 2;
        if (i4 != 0) {
            i3 |= 16;
        }
        if (i4 != 2 || (i3 & 91) != 18 || !startRestartGroup.getSkipping()) {
            Map<String, ? extends VectorConfig> emptyMap = i4 != 0 ? MapsKt.emptyMap() : map;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-446179233, i, -1, "androidx.compose.ui.graphics.vector.RenderVectorGroup (VectorPainter.kt:327)");
            }
            Iterator<VectorNode> it = group.iterator();
            while (it.hasNext()) {
                final VectorNode next = it.next();
                if (next instanceof VectorPath) {
                    startRestartGroup.startReplaceableGroup(-326285735);
                    ComposerKt.sourceInformation(startRestartGroup, "334@12154L1719");
                    VectorPath vectorPath = (VectorPath) next;
                    VectorConfig vectorConfig = emptyMap.get(vectorPath.getName());
                    if (vectorConfig == null) {
                        vectorConfig = new VectorConfig() { // from class: androidx.compose.ui.graphics.vector.VectorPainterKt$RenderVectorGroup$config$1
                        };
                    }
                    VectorConfig vectorConfig2 = vectorConfig;
                    Composer composer3 = startRestartGroup;
                    VectorComposeKt.m3273Path9cdaXJ4((List) vectorConfig2.getOrDefault(VectorProperty.PathData.INSTANCE, vectorPath.getPathData()), vectorPath.getPathFillType(), vectorPath.getName(), (Brush) vectorConfig2.getOrDefault(VectorProperty.Fill.INSTANCE, vectorPath.getFill()), ((Number) vectorConfig2.getOrDefault(VectorProperty.FillAlpha.INSTANCE, Float.valueOf(vectorPath.getFillAlpha()))).floatValue(), (Brush) vectorConfig2.getOrDefault(VectorProperty.Stroke.INSTANCE, vectorPath.getStroke()), ((Number) vectorConfig2.getOrDefault(VectorProperty.StrokeAlpha.INSTANCE, Float.valueOf(vectorPath.getStrokeAlpha()))).floatValue(), ((Number) vectorConfig2.getOrDefault(VectorProperty.StrokeLineWidth.INSTANCE, Float.valueOf(vectorPath.getStrokeLineWidth()))).floatValue(), vectorPath.getStrokeLineCap(), vectorPath.getStrokeLineJoin(), vectorPath.getStrokeLineMiter(), ((Number) vectorConfig2.getOrDefault(VectorProperty.TrimPathStart.INSTANCE, Float.valueOf(vectorPath.getTrimPathStart()))).floatValue(), ((Number) vectorConfig2.getOrDefault(VectorProperty.TrimPathEnd.INSTANCE, Float.valueOf(vectorPath.getTrimPathEnd()))).floatValue(), ((Number) vectorConfig2.getOrDefault(VectorProperty.TrimPathOffset.INSTANCE, Float.valueOf(vectorPath.getTrimPathOffset()))).floatValue(), composer3, 8, 0, 0);
                    composer3.endReplaceableGroup();
                    it = it;
                    emptyMap = emptyMap;
                    startRestartGroup = composer3;
                } else {
                    Iterator<VectorNode> it2 = it;
                    Map<String, ? extends VectorConfig> map4 = emptyMap;
                    Composer composer4 = startRestartGroup;
                    if (next instanceof VectorGroup) {
                        composer4.startReplaceableGroup(-326283877);
                        ComposerKt.sourceInformation(composer4, "379@14012L1368");
                        VectorGroup vectorGroup = (VectorGroup) next;
                        map3 = map4;
                        VectorConfig vectorConfig3 = map3.get(vectorGroup.getName());
                        if (vectorConfig3 == null) {
                            vectorConfig3 = new VectorConfig() { // from class: androidx.compose.ui.graphics.vector.VectorPainterKt$RenderVectorGroup$config$2
                            };
                        }
                        VectorComposeKt.Group(vectorGroup.getName(), ((Number) vectorConfig3.getOrDefault(VectorProperty.Rotation.INSTANCE, Float.valueOf(vectorGroup.getRotation()))).floatValue(), ((Number) vectorConfig3.getOrDefault(VectorProperty.PivotX.INSTANCE, Float.valueOf(vectorGroup.getPivotX()))).floatValue(), ((Number) vectorConfig3.getOrDefault(VectorProperty.PivotY.INSTANCE, Float.valueOf(vectorGroup.getPivotY()))).floatValue(), ((Number) vectorConfig3.getOrDefault(VectorProperty.ScaleX.INSTANCE, Float.valueOf(vectorGroup.getScaleX()))).floatValue(), ((Number) vectorConfig3.getOrDefault(VectorProperty.ScaleY.INSTANCE, Float.valueOf(vectorGroup.getScaleY()))).floatValue(), ((Number) vectorConfig3.getOrDefault(VectorProperty.TranslateX.INSTANCE, Float.valueOf(vectorGroup.getTranslationX()))).floatValue(), ((Number) vectorConfig3.getOrDefault(VectorProperty.TranslateY.INSTANCE, Float.valueOf(vectorGroup.getTranslationY()))).floatValue(), (List) vectorConfig3.getOrDefault(VectorProperty.PathData.INSTANCE, vectorGroup.getClipPathData()), ComposableLambdaKt.composableLambda(composer4, 1450046638, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.graphics.vector.VectorPainterKt$RenderVectorGroup$1
                            /* JADX INFO: Access modifiers changed from: package-private */
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
                            {
                                super(2);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public /* bridge */ /* synthetic */ Unit invoke(Composer composer5, Integer num) {
                                invoke(composer5, num.intValue());
                                return Unit.INSTANCE;
                            }

                            public final void invoke(Composer composer5, int i5) {
                                ComposerKt.sourceInformation(composer5, "C414@15310L56:VectorPainter.kt#huu6hf");
                                if ((i5 & 11) == 2 && composer5.getSkipping()) {
                                    composer5.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1450046638, i5, -1, "androidx.compose.ui.graphics.vector.RenderVectorGroup.<anonymous> (VectorPainter.kt:413)");
                                }
                                VectorPainterKt.RenderVectorGroup((VectorGroup) VectorNode.this, map3, composer5, 64, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }
                        }), composer4, 939524096, 0);
                        composer4.endReplaceableGroup();
                    } else {
                        map3 = map4;
                        composer4.startReplaceableGroup(-326282407);
                        composer4.endReplaceableGroup();
                    }
                    startRestartGroup = composer4;
                    emptyMap = map3;
                    it = it2;
                }
            }
            map2 = emptyMap;
            composer2 = startRestartGroup;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
            map2 = map;
            composer2 = startRestartGroup;
        }
        ScopeUpdateScope endRestartGroup = composer2.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.graphics.vector.VectorPainterKt$RenderVectorGroup$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer5, Integer num) {
                invoke(composer5, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Composer composer5, int i5) {
                VectorPainterKt.RenderVectorGroup(VectorGroup.this, map2, composer5, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
            }
        });
    }

    private static final void mirror(DrawScope drawScope, Function1<? super DrawScope, Unit> function1) {
        long mo3181getCenterF1C5BW0 = drawScope.mo3181getCenterF1C5BW0();
        DrawContext drawContext = drawScope.getDrawContext();
        long mo3107getSizeNHjbRc = drawContext.mo3107getSizeNHjbRc();
        drawContext.getCanvas().save();
        drawContext.getTransform().mo3114scale0AR0LA0(-1.0f, 1.0f, mo3181getCenterF1C5BW0);
        function1.invoke(drawScope);
        drawContext.getCanvas().restore();
        drawContext.mo3108setSizeuvyYCjk(mo3107getSizeNHjbRc);
    }
}
