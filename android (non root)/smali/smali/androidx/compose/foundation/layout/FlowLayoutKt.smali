.class public final Landroidx/compose/foundation/layout/FlowLayoutKt;
.super Ljava/lang/Object;
.source "FlowLayout.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFlowLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FlowLayout.kt\nandroidx/compose/foundation/layout/FlowLayoutKt\n+ 2 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/Updater\n+ 5 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 6 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 7 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 8 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 9 RowColumnImpl.kt\nandroidx/compose/foundation/layout/OrientationIndependentConstraints\n*L\n1#1,755:1\n78#2,11:756\n91#2:787\n78#2,11:788\n91#2:819\n456#3,8:767\n464#3,6:781\n456#3,8:799\n464#3,6:813\n67#3,3:820\n66#3:823\n67#3,3:830\n66#3:833\n4144#4,6:775\n4144#4,6:807\n1097#5,6:824\n1097#5,6:834\n69#6,6:840\n69#6,6:847\n1#7:846\n1182#8:853\n1161#8,2:854\n321#9:856\n320#9:857\n323#9:858\n322#9:859\n320#9:860\n*S KotlinDebug\n*F\n+ 1 FlowLayout.kt\nandroidx/compose/foundation/layout/FlowLayoutKt\n*L\n67#1:756,11\n67#1:787\n117#1:788,11\n117#1:819\n67#1:767,8\n67#1:781,6\n117#1:799,8\n117#1:813,6\n169#1:820,3\n169#1:823\n190#1:830,3\n190#1:833\n67#1:775,6\n117#1:807,6\n169#1:824,6\n190#1:834,6\n446#1:840,6\n567#1:847,6\n607#1:853\n607#1:854,2\n608#1:856\n609#1:857\n610#1:858\n687#1:859\n688#1:860\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a8\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0015\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u001aW\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u001c\u0010\r\u001a\u0018\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00040\u000e\u00a2\u0006\u0002\u0008\u0010\u00a2\u0006\u0002\u0008\u0011H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0012\u001aW\u0010\u0013\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u000c2\u001c\u0010\r\u001a\u0018\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00040\u000e\u00a2\u0006\u0002\u0008\u0010\u00a2\u0006\u0002\u0008\u0011H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0016\u001a%\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u000cH\u0001\u00a2\u0006\u0002\u0010\u001a\u001a\u009d\u0001\u0010\u001b\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u001d2*\u0010\u001e\u001a&\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020\u00040\u001f2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u00012*\u0010(\u001a&\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020\u00040\u001f2\u0006\u0010)\u001a\u00020$2\u0006\u0010\u0019\u001a\u00020\u000cH\u0002\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008*\u0010+\u001a4\u0010,\u001a&\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020\u00040\u001f2\u0006\u0010\t\u001a\u00020\nH\u0002\u001a4\u0010-\u001a&\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020\u00040\u001f2\u0006\u0010\u0007\u001a\u00020\u0008H\u0002\u001a\u0080\u0001\u0010.\u001a\u00020\u000c2\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u000201002#\u00102\u001a\u001f\u0012\u0004\u0012\u000201\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000c03\u00a2\u0006\u0002\u0008\u00112#\u0010%\u001a\u001f\u0012\u0004\u0012\u000201\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000c03\u00a2\u0006\u0002\u0008\u00112\u0006\u00104\u001a\u00020\u000c2\u0006\u00105\u001a\u00020\u000c2\u0006\u00106\u001a\u00020\u000c2\u0006\u0010\u0019\u001a\u00020\u000cH\u0002\u001aF\u0010.\u001a\u00020\u000c2\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u000201002\u0006\u00107\u001a\u00020 2\u0006\u00108\u001a\u00020 2\u0006\u00104\u001a\u00020\u000c2\u0006\u00105\u001a\u00020\u000c2\u0006\u00106\u001a\u00020\u000c2\u0006\u0010\u0019\u001a\u00020\u000cH\u0002\u001aS\u00109\u001a\u00020\u000c2\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u000201002#\u00102\u001a\u001f\u0012\u0004\u0012\u000201\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000c03\u00a2\u0006\u0002\u0008\u00112\u0006\u0010:\u001a\u00020\u000c2\u0006\u00105\u001a\u00020\u000c2\u0006\u0010\u0019\u001a\u00020\u000cH\u0002\u001a\u0080\u0001\u0010;\u001a\u00020\u000c2\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u000201002#\u00102\u001a\u001f\u0012\u0004\u0012\u000201\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000c03\u00a2\u0006\u0002\u0008\u00112#\u0010%\u001a\u001f\u0012\u0004\u0012\u000201\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000c03\u00a2\u0006\u0002\u0008\u00112\u0006\u0010:\u001a\u00020\u000c2\u0006\u00105\u001a\u00020\u000c2\u0006\u00106\u001a\u00020\u000c2\u0006\u0010\u0019\u001a\u00020\u000cH\u0002\u001a%\u0010<\u001a\u00020\u00182\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u000cH\u0001\u00a2\u0006\u0002\u0010=\u001a9\u0010>\u001a\u00020?*\u00020@2\u0006\u0010A\u001a\u00020B2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010C\u001a\u00020D2\u0006\u0010\u0019\u001a\u00020\u000cH\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008E\u0010F\u001a\u001c\u0010G\u001a\u00020\u000c*\u00020H2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u00102\u001a\u00020\u000cH\u0000\u001a\u0014\u0010%\u001a\u00020\u000c*\u00020I2\u0006\u0010\u001c\u001a\u00020\u001dH\u0000\u001a\u001c\u0010J\u001a\u00020\u000c*\u00020H2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010%\u001a\u00020\u000cH\u0000\u001a\u0014\u00102\u001a\u00020\u000c*\u00020I2\u0006\u0010\u001c\u001a\u00020\u001dH\u0000\u001a?\u0010K\u001a\u00020\u000c*\u00020H2\u0006\u0010C\u001a\u00020D2\u0006\u0010\u001c\u001a\u00020\u001d2\u0014\u0010L\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010I\u0012\u0004\u0012\u00020\u00040\u000eH\u0002\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008M\u0010N\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0012\n\u0005\u0008\u009920\u0001\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006O"
    }
    d2 = {
        "CROSS_AXIS_ALIGNMENT_START",
        "Landroidx/compose/foundation/layout/CrossAxisAlignment;",
        "CROSS_AXIS_ALIGNMENT_TOP",
        "FlowColumn",
        "",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "verticalArrangement",
        "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
        "horizontalArrangement",
        "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
        "maxItemsInEachColumn",
        "",
        "content",
        "Lkotlin/Function1;",
        "Landroidx/compose/foundation/layout/FlowColumnScope;",
        "Landroidx/compose/runtime/Composable;",
        "Lkotlin/ExtensionFunctionType;",
        "(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ILkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
        "FlowRow",
        "maxItemsInEachRow",
        "Landroidx/compose/foundation/layout/FlowRowScope;",
        "(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;ILkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
        "columnMeasurementHelper",
        "Landroidx/compose/ui/layout/MeasurePolicy;",
        "maxItemsInMainAxis",
        "(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;",
        "flowMeasurePolicy",
        "orientation",
        "Landroidx/compose/foundation/layout/LayoutOrientation;",
        "mainAxisArrangement",
        "Lkotlin/Function5;",
        "",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "Landroidx/compose/ui/unit/Density;",
        "mainAxisArrangementSpacing",
        "Landroidx/compose/ui/unit/Dp;",
        "crossAxisSize",
        "Landroidx/compose/foundation/layout/SizeMode;",
        "crossAxisAlignment",
        "crossAxisArrangement",
        "crossAxisArrangementSpacing",
        "flowMeasurePolicy-bs7tm-s",
        "(Landroidx/compose/foundation/layout/LayoutOrientation;Lkotlin/jvm/functions/Function5;FLandroidx/compose/foundation/layout/SizeMode;Landroidx/compose/foundation/layout/CrossAxisAlignment;Lkotlin/jvm/functions/Function5;FI)Landroidx/compose/ui/layout/MeasurePolicy;",
        "getHorizontalArrangement",
        "getVerticalArrangement",
        "intrinsicCrossAxisSize",
        "children",
        "",
        "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
        "mainAxisSize",
        "Lkotlin/Function3;",
        "mainAxisAvailable",
        "mainAxisSpacing",
        "crossAxisSpacing",
        "mainAxisSizes",
        "crossAxisSizes",
        "maxIntrinsicMainAxisSize",
        "crossAxisAvailable",
        "minIntrinsicMainAxisSize",
        "rowMeasurementHelper",
        "(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;",
        "breakDownItems",
        "Landroidx/compose/foundation/layout/FlowResult;",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "measureHelper",
        "Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;",
        "constraints",
        "Landroidx/compose/foundation/layout/OrientationIndependentConstraints;",
        "breakDownItems-w1Onq5I",
        "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;Landroidx/compose/foundation/layout/LayoutOrientation;JI)Landroidx/compose/foundation/layout/FlowResult;",
        "crossAxisMin",
        "Landroidx/compose/ui/layout/Measurable;",
        "Landroidx/compose/ui/layout/Placeable;",
        "mainAxisMin",
        "measureAndCache",
        "storePlaceable",
        "measureAndCache-6m2dt9o",
        "(Landroidx/compose/ui/layout/Measurable;JLandroidx/compose/foundation/layout/LayoutOrientation;Lkotlin/jvm/functions/Function1;)I",
        "foundation-layout_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final CROSS_AXIS_ALIGNMENT_START:Landroidx/compose/foundation/layout/CrossAxisAlignment;

.field private static final CROSS_AXIS_ALIGNMENT_TOP:Landroidx/compose/foundation/layout/CrossAxisAlignment;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 716
    sget-object v0, Landroidx/compose/foundation/layout/CrossAxisAlignment;->Companion:Landroidx/compose/foundation/layout/CrossAxisAlignment$Companion;

    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getTop()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/layout/CrossAxisAlignment$Companion;->vertical$foundation_layout_release(Landroidx/compose/ui/Alignment$Vertical;)Landroidx/compose/foundation/layout/CrossAxisAlignment;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/layout/FlowLayoutKt;->CROSS_AXIS_ALIGNMENT_TOP:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    .line 717
    sget-object v0, Landroidx/compose/foundation/layout/CrossAxisAlignment;->Companion:Landroidx/compose/foundation/layout/CrossAxisAlignment$Companion;

    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/layout/CrossAxisAlignment$Companion;->horizontal$foundation_layout_release(Landroidx/compose/ui/Alignment$Horizontal;)Landroidx/compose/foundation/layout/CrossAxisAlignment;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/layout/FlowLayoutKt;->CROSS_AXIS_ALIGNMENT_START:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    return-void
.end method

.method public static final FlowColumn(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ILkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "I",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/FlowColumnScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    const-string v0, "content"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x127ea9d5

    invoke-interface {p5, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(FlowColumn)P(3,4,1,2)111@4318L119,116@4442L137:FlowLayout.kt#2w3rfo"

    invoke-static {p5, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, p7, 0x1

    if-eqz v0, :cond_0

    .line 106
    sget-object p0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast p0, Landroidx/compose/ui/Modifier;

    :cond_0
    and-int/lit8 v0, p7, 0x2

    if-eqz v0, :cond_1

    .line 107
    sget-object p1, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {p1}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object p1

    :cond_1
    and-int/lit8 v0, p7, 0x4

    if-eqz v0, :cond_2

    .line 108
    sget-object p2, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {p2}, Landroidx/compose/foundation/layout/Arrangement;->getStart()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-result-object p2

    :cond_2
    and-int/lit8 p7, p7, 0x8

    if-eqz p7, :cond_3

    const p3, 0x7fffffff

    :cond_3
    shr-int/lit8 p7, p6, 0x3

    and-int/lit8 v0, p7, 0xe

    and-int/lit8 v1, p7, 0x70

    or-int/2addr v0, v1

    and-int/lit16 p7, p7, 0x380

    or-int/2addr p7, v0

    .line 112
    invoke-static {p1, p2, p3, p5, p7}, Landroidx/compose/foundation/layout/FlowLayoutKt;->columnMeasurementHelper(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object p1

    shl-int/lit8 p2, p6, 0x3

    and-int/lit8 p2, p2, 0x70

    const p3, -0x4ee9b9da

    .line 117
    invoke-interface {p5, p3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string p3, "CC(Layout)P(!1,2)77@3132L23,79@3222L420:Layout.kt#80mrfh"

    invoke-static {p5, p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 788
    invoke-static {p5, p3}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result p3

    .line 789
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object p7

    .line 791
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    .line 798
    invoke-static {p0}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object p0

    shl-int/lit8 p2, p2, 0x9

    and-int/lit16 p2, p2, 0x1c00

    or-int/lit8 p2, p2, 0x6

    .line 799
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v1

    instance-of v1, v1, Landroidx/compose/runtime/Applier;

    if-nez v1, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 800
    :cond_4
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 801
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 802
    invoke-interface {p5, v0}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 804
    :cond_5
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 806
    :goto_0
    invoke-static {p5}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v0

    .line 793
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 794
    sget-object p1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object p1

    invoke-static {v0, p7, p1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 796
    sget-object p1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object p1

    .line 808
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result p7

    if-nez p7, :cond_6

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object p7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p7, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p7

    if-nez p7, :cond_7

    .line 809
    :cond_6
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    invoke-interface {v0, p7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 810
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v0, p3, p1}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 813
    :cond_7
    invoke-static {p5}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object p1

    shr-int/lit8 p2, p2, 0x3

    and-int/lit8 p2, p2, 0x70

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p5, p2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p0, 0x7ab4aae9

    .line 814
    invoke-interface {p5, p0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const p0, -0x28a58a77

    const-string p1, "C117@4494L9:FlowLayout.kt#2w3rfo"

    .line 118
    invoke-static {p5, p0, p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object p0, Landroidx/compose/foundation/layout/FlowColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/FlowColumnScopeInstance;

    shr-int/lit8 p1, p6, 0x9

    and-int/lit8 p1, p1, 0x70

    or-int/lit8 p1, p1, 0x6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p4, p0, p5, p1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 816
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 817
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 818
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 819
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-void
.end method

.method public static final FlowRow(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;ILkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "I",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/FlowRowScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    const-string v0, "content"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x417969d3

    invoke-interface {p5, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(FlowRow)P(3,1,4,2)61@2468L113,66@2586L134:FlowLayout.kt#2w3rfo"

    invoke-static {p5, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, p7, 0x1

    if-eqz v0, :cond_0

    .line 56
    sget-object p0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast p0, Landroidx/compose/ui/Modifier;

    :cond_0
    and-int/lit8 v0, p7, 0x2

    if-eqz v0, :cond_1

    .line 57
    sget-object p1, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {p1}, Landroidx/compose/foundation/layout/Arrangement;->getStart()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-result-object p1

    :cond_1
    and-int/lit8 v0, p7, 0x4

    if-eqz v0, :cond_2

    .line 58
    sget-object p2, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {p2}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object p2

    :cond_2
    and-int/lit8 p7, p7, 0x8

    if-eqz p7, :cond_3

    const p3, 0x7fffffff

    :cond_3
    shr-int/lit8 p7, p6, 0x3

    and-int/lit8 v0, p7, 0xe

    and-int/lit8 v1, p7, 0x70

    or-int/2addr v0, v1

    and-int/lit16 p7, p7, 0x380

    or-int/2addr p7, v0

    .line 62
    invoke-static {p1, p2, p3, p5, p7}, Landroidx/compose/foundation/layout/FlowLayoutKt;->rowMeasurementHelper(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object p1

    shl-int/lit8 p2, p6, 0x3

    and-int/lit8 p2, p2, 0x70

    const p3, -0x4ee9b9da

    .line 67
    invoke-interface {p5, p3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string p3, "CC(Layout)P(!1,2)77@3132L23,79@3222L420:Layout.kt#80mrfh"

    invoke-static {p5, p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 756
    invoke-static {p5, p3}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result p3

    .line 757
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object p7

    .line 759
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    .line 766
    invoke-static {p0}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object p0

    shl-int/lit8 p2, p2, 0x9

    and-int/lit16 p2, p2, 0x1c00

    or-int/lit8 p2, p2, 0x6

    .line 767
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v1

    instance-of v1, v1, Landroidx/compose/runtime/Applier;

    if-nez v1, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 768
    :cond_4
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 769
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 770
    invoke-interface {p5, v0}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 772
    :cond_5
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 774
    :goto_0
    invoke-static {p5}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v0

    .line 761
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 762
    sget-object p1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object p1

    invoke-static {v0, p7, p1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 764
    sget-object p1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object p1

    .line 776
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result p7

    if-nez p7, :cond_6

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object p7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p7, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p7

    if-nez p7, :cond_7

    .line 777
    :cond_6
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    invoke-interface {v0, p7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 778
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v0, p3, p1}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 781
    :cond_7
    invoke-static {p5}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object p1

    shr-int/lit8 p2, p2, 0x3

    and-int/lit8 p2, p2, 0x70

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p5, p2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p0, 0x7ab4aae9

    .line 782
    invoke-interface {p5, p0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const p0, 0x1ccfb835

    const-string p1, "C67@2635L9:FlowLayout.kt#2w3rfo"

    .line 68
    invoke-static {p5, p0, p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object p0, Landroidx/compose/foundation/layout/FlowRowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/FlowRowScopeInstance;

    shr-int/lit8 p1, p6, 0x9

    and-int/lit8 p1, p1, 0x70

    or-int/lit8 p1, p1, 0x6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p4, p0, p5, p1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 784
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 785
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 786
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 787
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-void
.end method

.method public static final synthetic access$flowMeasurePolicy-bs7tm-s(Landroidx/compose/foundation/layout/LayoutOrientation;Lkotlin/jvm/functions/Function5;FLandroidx/compose/foundation/layout/SizeMode;Landroidx/compose/foundation/layout/CrossAxisAlignment;Lkotlin/jvm/functions/Function5;FI)Landroidx/compose/ui/layout/MeasurePolicy;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p7}, Landroidx/compose/foundation/layout/FlowLayoutKt;->flowMeasurePolicy-bs7tm-s(Landroidx/compose/foundation/layout/LayoutOrientation;Lkotlin/jvm/functions/Function5;FLandroidx/compose/foundation/layout/SizeMode;Landroidx/compose/foundation/layout/CrossAxisAlignment;Lkotlin/jvm/functions/Function5;FI)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCROSS_AXIS_ALIGNMENT_START$p()Landroidx/compose/foundation/layout/CrossAxisAlignment;
    .locals 1

    sget-object v0, Landroidx/compose/foundation/layout/FlowLayoutKt;->CROSS_AXIS_ALIGNMENT_START:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    return-object v0
.end method

.method public static final synthetic access$getCROSS_AXIS_ALIGNMENT_TOP$p()Landroidx/compose/foundation/layout/CrossAxisAlignment;
    .locals 1

    sget-object v0, Landroidx/compose/foundation/layout/FlowLayoutKt;->CROSS_AXIS_ALIGNMENT_TOP:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    return-object v0
.end method

.method public static final synthetic access$getHorizontalArrangement(Landroidx/compose/foundation/layout/Arrangement$Horizontal;)Lkotlin/jvm/functions/Function5;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/foundation/layout/FlowLayoutKt;->getHorizontalArrangement(Landroidx/compose/foundation/layout/Arrangement$Horizontal;)Lkotlin/jvm/functions/Function5;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getVerticalArrangement(Landroidx/compose/foundation/layout/Arrangement$Vertical;)Lkotlin/jvm/functions/Function5;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/foundation/layout/FlowLayoutKt;->getVerticalArrangement(Landroidx/compose/foundation/layout/Arrangement$Vertical;)Lkotlin/jvm/functions/Function5;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$intrinsicCrossAxisSize(Ljava/util/List;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;IIII)I
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Landroidx/compose/foundation/layout/FlowLayoutKt;->intrinsicCrossAxisSize(Ljava/util/List;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;IIII)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$maxIntrinsicMainAxisSize(Ljava/util/List;Lkotlin/jvm/functions/Function3;III)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/layout/FlowLayoutKt;->maxIntrinsicMainAxisSize(Ljava/util/List;Lkotlin/jvm/functions/Function3;III)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$minIntrinsicMainAxisSize(Ljava/util/List;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;IIII)I
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Landroidx/compose/foundation/layout/FlowLayoutKt;->minIntrinsicMainAxisSize(Ljava/util/List;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;IIII)I

    move-result p0

    return p0
.end method

.method public static final breakDownItems-w1Onq5I(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;Landroidx/compose/foundation/layout/LayoutOrientation;JI)Landroidx/compose/foundation/layout/FlowResult;
    .locals 21

    move-object/from16 v6, p0

    move-object/from16 v0, p2

    const-string v1, "$this$breakDownItems"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "measureHelper"

    move-object/from16 v7, p1

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "orientation"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 855
    new-instance v8, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v1, 0x10

    new-array v1, v1, [Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;

    const/4 v2, 0x0

    invoke-direct {v8, v1, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 856
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v1

    .line 857
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v3

    .line 858
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v4

    .line 611
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->getMeasurables()Ljava/util/List;

    move-result-object v5

    .line 612
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->getPlaceables()[Landroidx/compose/ui/layout/Placeable;

    move-result-object v9

    .line 614
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->getArrangementSpacing-D9Ej5fM()F

    move-result v10

    invoke-interface {v6, v10}, Landroidx/compose/ui/layout/MeasureScope;->toPx-0680j_4(F)F

    move-result v10

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-float v10, v10

    float-to-int v10, v10

    .line 615
    invoke-static {v3, v1, v2, v4}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->constructor-impl(IIII)J

    move-result-wide v11

    .line 622
    invoke-static {v5, v2}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/layout/Measurable;

    if-eqz v4, :cond_0

    new-instance v14, Landroidx/compose/foundation/layout/FlowLayoutKt$breakDownItems$nextSize$1;

    invoke-direct {v14, v9}, Landroidx/compose/foundation/layout/FlowLayoutKt$breakDownItems$nextSize$1;-><init>([Landroidx/compose/ui/layout/Placeable;)V

    check-cast v14, Lkotlin/jvm/functions/Function1;

    invoke-static {v4, v11, v12, v0, v14}, Landroidx/compose/foundation/layout/FlowLayoutKt;->measureAndCache-6m2dt9o(Landroidx/compose/ui/layout/Measurable;JLandroidx/compose/foundation/layout/LayoutOrientation;Lkotlin/jvm/functions/Function1;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 629
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    new-array v15, v14, [Ljava/lang/Integer;

    .line 636
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    move/from16 v18, v1

    move v13, v2

    move/from16 v17, v13

    move/from16 v19, v17

    move/from16 v20, v19

    :goto_1
    if-ge v13, v14, :cond_7

    .line 637
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int v2, v17, v4

    sub-int v18, v18, v4

    add-int/lit8 v4, v13, 0x1

    .line 640
    invoke-static {v5, v4}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v6, v17

    check-cast v6, Landroidx/compose/ui/layout/Measurable;

    if-eqz v6, :cond_1

    new-instance v7, Landroidx/compose/foundation/layout/FlowLayoutKt$breakDownItems$1;

    invoke-direct {v7, v9, v13}, Landroidx/compose/foundation/layout/FlowLayoutKt$breakDownItems$1;-><init>([Landroidx/compose/ui/layout/Placeable;I)V

    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-static {v6, v11, v12, v0, v7}, Landroidx/compose/foundation/layout/FlowLayoutKt;->measureAndCache-6m2dt9o(Landroidx/compose/ui/layout/Measurable;JLandroidx/compose/foundation/layout/LayoutOrientation;Lkotlin/jvm/functions/Function1;)I

    move-result v6

    add-int/2addr v6, v10

    .line 644
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    .line 645
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_4

    sub-int v7, v4, v19

    move/from16 v13, p5

    if-ge v7, v13, :cond_5

    if-eqz v6, :cond_2

    .line 647
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_3

    :cond_2
    const/4 v7, 0x0

    :goto_3
    sub-int v7, v18, v7

    if-gez v7, :cond_3

    goto :goto_4

    :cond_3
    move/from16 v17, v2

    goto :goto_6

    :cond_4
    move/from16 v13, p5

    .line 649
    :cond_5
    :goto_4
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 650
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 654
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v15, v20

    add-int/lit8 v20, v20, 0x1

    if-eqz v6, :cond_6

    .line 657
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v3, v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_5

    :cond_6
    const/4 v3, 0x0

    :goto_5
    move/from16 v18, v1

    move-object v6, v3

    move/from16 v19, v4

    const/16 v17, 0x0

    move v3, v2

    :goto_6
    const/4 v2, 0x0

    move-object/from16 v7, p1

    move v13, v4

    move-object v4, v6

    move-object/from16 v6, p0

    goto :goto_1

    :cond_7
    const/4 v14, 0x0

    const/4 v1, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xe

    const/16 v18, 0x0

    move v13, v3

    move-object v6, v15

    move v15, v1

    .line 661
    invoke-static/range {v11 .. v18}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->copy-yUG9Ft0$default(JIIIIILjava/lang/Object;)J

    move-result-wide v1

    .line 663
    invoke-static {v1, v2, v0}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->toBoxConstraints-OenEA2s(JLandroidx/compose/foundation/layout/LayoutOrientation;)J

    move-result-wide v9

    const/4 v0, 0x0

    .line 669
    invoke-static {v6, v0}, Lkotlin/collections/ArraysKt;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    move v4, v0

    move v11, v4

    move v12, v11

    move-object v7, v1

    :goto_7
    if-eqz v7, :cond_8

    .line 675
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-wide v2, v9

    .line 671
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->measureWithoutPlacing-_EkL_-Y(Landroidx/compose/ui/layout/MeasureScope;JII)Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;

    move-result-object v0

    .line 677
    invoke-virtual {v0}, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->getCrossAxisSize()I

    move-result v1

    add-int/2addr v11, v1

    .line 678
    invoke-virtual {v0}, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->getMainAxisSize()I

    move-result v1

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 679
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 682
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v12, v12, 0x1

    .line 684
    invoke-static {v6, v12}, Lkotlin/collections/ArraysKt;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/Integer;

    goto :goto_7

    .line 859
    :cond_8
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v0

    .line 687
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 860
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v1

    .line 688
    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 689
    new-instance v2, Landroidx/compose/foundation/layout/FlowResult;

    invoke-direct {v2, v1, v0, v8}, Landroidx/compose/foundation/layout/FlowResult;-><init>(IILandroidx/compose/runtime/collection/MutableVector;)V

    return-object v2
.end method

.method public static final columnMeasurementHelper(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;
    .locals 9

    const-string/jumbo v0, "verticalArrangement"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "horizontalArrangement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x77fd7175

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(columnMeasurementHelper)P(2)189@6875L634:FlowLayout.kt#2w3rfo"

    invoke-static {p3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.foundation.layout.columnMeasurementHelper (FlowLayout.kt:184)"

    .line 189
    invoke-static {v0, p4, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const v0, 0x607fb4c4

    .line 190
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(remember)P(1,2,3):Composables.kt#9igjgp"

    invoke-static {p3, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 830
    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    .line 831
    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 832
    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p4

    or-int/2addr p4, v0

    .line 834
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez p4, :cond_1

    .line 835
    sget-object p4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p4

    if-ne v0, p4, :cond_2

    .line 192
    :cond_1
    sget-object v1, Landroidx/compose/foundation/layout/LayoutOrientation;->Vertical:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 193
    invoke-static {p0}, Landroidx/compose/foundation/layout/FlowLayoutKt;->access$getVerticalArrangement(Landroidx/compose/foundation/layout/Arrangement$Vertical;)Lkotlin/jvm/functions/Function5;

    move-result-object v2

    .line 194
    invoke-interface {p0}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->getSpacing-D9Ej5fM()F

    move-result v3

    .line 195
    sget-object v4, Landroidx/compose/foundation/layout/SizeMode;->Wrap:Landroidx/compose/foundation/layout/SizeMode;

    .line 196
    invoke-static {}, Landroidx/compose/foundation/layout/FlowLayoutKt;->access$getCROSS_AXIS_ALIGNMENT_START$p()Landroidx/compose/foundation/layout/CrossAxisAlignment;

    move-result-object v5

    .line 197
    invoke-static {p1}, Landroidx/compose/foundation/layout/FlowLayoutKt;->access$getHorizontalArrangement(Landroidx/compose/foundation/layout/Arrangement$Horizontal;)Lkotlin/jvm/functions/Function5;

    move-result-object v6

    .line 198
    invoke-interface {p1}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->getSpacing-D9Ej5fM()F

    move-result v7

    move v8, p2

    .line 191
    invoke-static/range {v1 .. v8}, Landroidx/compose/foundation/layout/FlowLayoutKt;->access$flowMeasurePolicy-bs7tm-s(Landroidx/compose/foundation/layout/LayoutOrientation;Lkotlin/jvm/functions/Function5;FLandroidx/compose/foundation/layout/SizeMode;Landroidx/compose/foundation/layout/CrossAxisAlignment;Lkotlin/jvm/functions/Function5;FI)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v0

    .line 837
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 833
    :cond_2
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 190
    check-cast v0, Landroidx/compose/ui/layout/MeasurePolicy;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v0
.end method

.method public static final crossAxisMin(Landroidx/compose/ui/layout/Measurable;Landroidx/compose/foundation/layout/LayoutOrientation;I)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orientation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 704
    sget-object v0, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    if-ne p1, v0, :cond_0

    .line 705
    invoke-interface {p0, p2}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicHeight(I)I

    move-result p0

    goto :goto_0

    .line 707
    :cond_0
    invoke-interface {p0, p2}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicWidth(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static final crossAxisSize(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/layout/LayoutOrientation;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orientation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 714
    sget-object v0, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result p0

    :goto_0
    return p0
.end method

.method private static final flowMeasurePolicy-bs7tm-s(Landroidx/compose/foundation/layout/LayoutOrientation;Lkotlin/jvm/functions/Function5;FLandroidx/compose/foundation/layout/SizeMode;Landroidx/compose/foundation/layout/CrossAxisAlignment;Lkotlin/jvm/functions/Function5;FI)Landroidx/compose/ui/layout/MeasurePolicy;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/LayoutOrientation;",
            "Lkotlin/jvm/functions/Function5<",
            "-",
            "Ljava/lang/Integer;",
            "-[I-",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "-[I",
            "Lkotlin/Unit;",
            ">;F",
            "Landroidx/compose/foundation/layout/SizeMode;",
            "Landroidx/compose/foundation/layout/CrossAxisAlignment;",
            "Lkotlin/jvm/functions/Function5<",
            "-",
            "Ljava/lang/Integer;",
            "-[I-",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "-[I",
            "Lkotlin/Unit;",
            ">;FI)",
            "Landroidx/compose/ui/layout/MeasurePolicy;"
        }
    .end annotation

    .line 218
    new-instance v9, Landroidx/compose/foundation/layout/FlowLayoutKt$flowMeasurePolicy$1;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p7

    move/from16 v7, p6

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/layout/FlowLayoutKt$flowMeasurePolicy$1;-><init>(Landroidx/compose/foundation/layout/LayoutOrientation;Lkotlin/jvm/functions/Function5;FLandroidx/compose/foundation/layout/SizeMode;Landroidx/compose/foundation/layout/CrossAxisAlignment;IFLkotlin/jvm/functions/Function5;)V

    check-cast v9, Landroidx/compose/ui/layout/MeasurePolicy;

    return-object v9
.end method

.method private static final getHorizontalArrangement(Landroidx/compose/foundation/layout/Arrangement$Horizontal;)Lkotlin/jvm/functions/Function5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            ")",
            "Lkotlin/jvm/functions/Function5<",
            "Ljava/lang/Integer;",
            "[I",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            "Landroidx/compose/ui/unit/Density;",
            "[I",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 155
    new-instance v0, Landroidx/compose/foundation/layout/FlowLayoutKt$getHorizontalArrangement$1;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/layout/FlowLayoutKt$getHorizontalArrangement$1;-><init>(Landroidx/compose/foundation/layout/Arrangement$Horizontal;)V

    check-cast v0, Lkotlin/jvm/functions/Function5;

    return-object v0
.end method

.method private static final getVerticalArrangement(Landroidx/compose/foundation/layout/Arrangement$Vertical;)Lkotlin/jvm/functions/Function5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            ")",
            "Lkotlin/jvm/functions/Function5<",
            "Ljava/lang/Integer;",
            "[I",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            "Landroidx/compose/ui/unit/Density;",
            "[I",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 148
    new-instance v0, Landroidx/compose/foundation/layout/FlowLayoutKt$getVerticalArrangement$1;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/layout/FlowLayoutKt$getVerticalArrangement$1;-><init>(Landroidx/compose/foundation/layout/Arrangement$Vertical;)V

    check-cast v0, Lkotlin/jvm/functions/Function5;

    return-object v0
.end method

.method private static final intrinsicCrossAxisSize(Ljava/util/List;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;IIII)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;IIII)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 555
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    .line 559
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v3, :cond_0

    return v4

    .line 558
    :cond_0
    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v3

    .line 559
    move-object v6, v3

    check-cast v6, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v6, :cond_1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v6, v5, v7}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    goto :goto_0

    :cond_1
    move v7, v4

    :goto_0
    if-eqz v6, :cond_2

    .line 560
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v6, v5, v8}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    goto :goto_1

    :cond_2
    move v5, v4

    .line 848
    :goto_1
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v6

    move/from16 v10, p3

    move v8, v4

    move v9, v8

    move v11, v9

    move v12, v11

    :goto_2
    if-ge v8, v6, :cond_8

    .line 849
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 850
    check-cast v13, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 568
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sub-int/2addr v10, v5

    .line 572
    invoke-static {v11, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v8, v8, 0x1

    .line 575
    invoke-static {v0, v8}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v5

    .line 576
    move-object v7, v5

    check-cast v7, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v7, :cond_3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v2, v7, v11, v13}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    goto :goto_3

    :cond_3
    move v11, v4

    :goto_3
    if-eqz v7, :cond_4

    .line 577
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v1, v7, v13, v14}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    add-int v7, v7, p4

    goto :goto_4

    :cond_4
    move v7, v4

    :goto_4
    if-ltz v10, :cond_5

    .line 580
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v13

    if-eq v8, v13, :cond_5

    sub-int v13, v8, v12

    move/from16 v14, p6

    if-eq v13, v14, :cond_6

    sub-int v13, v10, v7

    if-gez v13, :cond_7

    goto :goto_5

    :cond_5
    move/from16 v14, p6

    :cond_6
    :goto_5
    add-int v3, v3, p5

    add-int/2addr v9, v3

    sub-int v7, v7, p4

    move/from16 v10, p3

    move v3, v4

    move v12, v8

    :cond_7
    move v15, v11

    move v11, v3

    move-object v3, v5

    move v5, v7

    move v7, v15

    goto :goto_2

    :cond_8
    sub-int v9, v9, p5

    return v9
.end method

.method private static final intrinsicCrossAxisSize(Ljava/util/List;[I[IIIII)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;[I[IIIII)I"
        }
    .end annotation

    .line 532
    new-instance v0, Landroidx/compose/foundation/layout/FlowLayoutKt$intrinsicCrossAxisSize$1;

    invoke-direct {v0, p1}, Landroidx/compose/foundation/layout/FlowLayoutKt$intrinsicCrossAxisSize$1;-><init>([I)V

    move-object v2, v0

    check-cast v2, Lkotlin/jvm/functions/Function3;

    new-instance p1, Landroidx/compose/foundation/layout/FlowLayoutKt$intrinsicCrossAxisSize$2;

    invoke-direct {p1, p2}, Landroidx/compose/foundation/layout/FlowLayoutKt$intrinsicCrossAxisSize$2;-><init>([I)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function3;

    move-object v1, p0

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v1 .. v7}, Landroidx/compose/foundation/layout/FlowLayoutKt;->intrinsicCrossAxisSize(Ljava/util/List;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;IIII)I

    move-result p0

    return p0
.end method

.method public static final mainAxisMin(Landroidx/compose/ui/layout/Measurable;Landroidx/compose/foundation/layout/LayoutOrientation;I)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orientation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 697
    sget-object v0, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    if-ne p1, v0, :cond_0

    .line 698
    invoke-interface {p0, p2}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicWidth(I)I

    move-result p0

    goto :goto_0

    .line 700
    :cond_0
    invoke-interface {p0, p2}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicHeight(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static final mainAxisSize(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/layout/LayoutOrientation;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orientation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 711
    sget-object v0, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result p0

    :goto_0
    return p0
.end method

.method private static final maxIntrinsicMainAxisSize(Ljava/util/List;Lkotlin/jvm/functions/Function3;III)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;III)I"
        }
    .end annotation

    .line 841
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v2, v0, :cond_2

    .line 842
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 843
    check-cast v6, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 447
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {p1, v6, v7, v8}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    add-int/2addr v6, p3

    add-int/lit8 v7, v2, 0x1

    sub-int v8, v7, v4

    if-eq v8, p4, :cond_1

    .line 448
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    if-ne v7, v8, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v5, v6

    goto :goto_2

    :cond_1
    :goto_1
    add-int/2addr v5, v6

    sub-int/2addr v5, p3

    .line 452
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v5, v1

    move v4, v2

    :goto_2
    move v2, v7

    goto :goto_0

    :cond_2
    return v3
.end method

.method private static final measureAndCache-6m2dt9o(Landroidx/compose/ui/layout/Measurable;JLandroidx/compose/foundation/layout/LayoutOrientation;Lkotlin/jvm/functions/Function1;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/Measurable;",
            "J",
            "Landroidx/compose/foundation/layout/LayoutOrientation;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/layout/Placeable;",
            "Lkotlin/Unit;",
            ">;)I"
        }
    .end annotation

    .line 729
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-static {v0}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getRowColumnParentData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    move-wide v1, p1

    .line 732
    invoke-static/range {v1 .. v8}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->copy-yUG9Ft0$default(JIIIIILjava/lang/Object;)J

    move-result-wide p1

    .line 734
    invoke-static {p1, p2, p3}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->toBoxConstraints-OenEA2s(JLandroidx/compose/foundation/layout/LayoutOrientation;)J

    move-result-wide p1

    .line 731
    invoke-interface {p0, p1, p2}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p0

    .line 735
    invoke-interface {p4, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    invoke-static {p0, p3}, Landroidx/compose/foundation/layout/FlowLayoutKt;->mainAxisSize(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/layout/LayoutOrientation;)I

    move-result p0

    goto :goto_0

    :cond_0
    const p1, 0x7fffffff

    .line 738
    invoke-static {p0, p3, p1}, Landroidx/compose/foundation/layout/FlowLayoutKt;->mainAxisMin(Landroidx/compose/ui/layout/Measurable;Landroidx/compose/foundation/layout/LayoutOrientation;I)I

    move-result p0

    :goto_0
    return p0
.end method

.method private static final minIntrinsicMainAxisSize(Ljava/util/List;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;IIII)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;IIII)I"
        }
    .end annotation

    move/from16 v0, p3

    .line 474
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v9, v1, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aput v2, v9, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 475
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    new-array v10, v3, [I

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_1

    aput v2, v10, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 477
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    move v5, v2

    :goto_2
    if-ge v5, v4, :cond_2

    move-object v11, p0

    .line 478
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 479
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v12, p1

    invoke-interface {p1, v6, v7, v8}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 480
    aput v7, v9, v5

    .line 481
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v13, p2

    invoke-interface {v13, v6, v8, v7}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    aput v6, v10, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    move-object v11, p0

    .line 484
    invoke-static {v9}, Lkotlin/collections/ArraysKt;->sum([I)I

    move-result v4

    if-eqz v3, :cond_c

    .line 486
    aget v3, v10, v2

    new-instance v5, Lkotlin/ranges/IntRange;

    invoke-static {v10}, Lkotlin/collections/ArraysKt;->getLastIndex([I)I

    move-result v6

    const/4 v7, 0x1

    invoke-direct {v5, v7, v6}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-virtual {v5}, Lkotlin/ranges/IntRange;->iterator()Lkotlin/collections/IntIterator;

    move-result-object v5

    :cond_3
    :goto_3
    invoke-virtual {v5}, Lkotlin/collections/IntIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v6

    aget v6, v10, v6

    if-ge v3, v6, :cond_3

    move v3, v6

    goto :goto_3

    :cond_4
    if-eqz v1, :cond_b

    .line 488
    aget v1, v9, v2

    new-instance v2, Lkotlin/ranges/IntRange;

    invoke-static {v9}, Lkotlin/collections/ArraysKt;->getLastIndex([I)I

    move-result v5

    invoke-direct {v2, v7, v5}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-virtual {v2}, Lkotlin/ranges/IntRange;->iterator()Lkotlin/collections/IntIterator;

    move-result-object v2

    :cond_5
    :goto_4
    invoke-virtual {v2}, Lkotlin/collections/IntIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v2}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v5

    aget v5, v9, v5

    if-ge v1, v5, :cond_5

    move v1, v5

    goto :goto_4

    :cond_6
    move v12, v4

    :goto_5
    if-ge v1, v12, :cond_a

    if-ne v3, v0, :cond_7

    return v4

    :cond_7
    add-int v2, v1, v12

    .line 495
    div-int/lit8 v13, v2, 0x2

    move-object v2, p0

    move-object v3, v9

    move-object v4, v10

    move v5, v13

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    .line 497
    invoke-static/range {v2 .. v8}, Landroidx/compose/foundation/layout/FlowLayoutKt;->intrinsicCrossAxisSize(Ljava/util/List;[I[IIIII)I

    move-result v3

    if-ne v3, v0, :cond_8

    return v13

    :cond_8
    if-le v3, v0, :cond_9

    add-int/lit8 v1, v13, 0x1

    goto :goto_6

    :cond_9
    add-int/lit8 v12, v13, -0x1

    :goto_6
    move v4, v13

    goto :goto_5

    :cond_a
    return v4

    .line 488
    :cond_b
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 486
    :cond_c
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public static final rowMeasurementHelper(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;
    .locals 9

    const-string v0, "horizontalArrangement"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "verticalArrangement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x582ba447

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(rowMeasurementHelper)P(!1,2)168@6017L633:FlowLayout.kt#2w3rfo"

    invoke-static {p3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.foundation.layout.rowMeasurementHelper (FlowLayout.kt:163)"

    .line 168
    invoke-static {v0, p4, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const v0, 0x607fb4c4

    .line 169
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(remember)P(1,2,3):Composables.kt#9igjgp"

    invoke-static {p3, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 820
    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    .line 821
    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 822
    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p4

    or-int/2addr p4, v0

    .line 824
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez p4, :cond_1

    .line 825
    sget-object p4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p4

    if-ne v0, p4, :cond_2

    .line 171
    :cond_1
    sget-object v1, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 172
    invoke-static {p0}, Landroidx/compose/foundation/layout/FlowLayoutKt;->access$getHorizontalArrangement(Landroidx/compose/foundation/layout/Arrangement$Horizontal;)Lkotlin/jvm/functions/Function5;

    move-result-object v2

    .line 173
    invoke-interface {p0}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->getSpacing-D9Ej5fM()F

    move-result v3

    .line 174
    sget-object v4, Landroidx/compose/foundation/layout/SizeMode;->Wrap:Landroidx/compose/foundation/layout/SizeMode;

    .line 175
    invoke-static {}, Landroidx/compose/foundation/layout/FlowLayoutKt;->access$getCROSS_AXIS_ALIGNMENT_TOP$p()Landroidx/compose/foundation/layout/CrossAxisAlignment;

    move-result-object v5

    .line 176
    invoke-static {p1}, Landroidx/compose/foundation/layout/FlowLayoutKt;->access$getVerticalArrangement(Landroidx/compose/foundation/layout/Arrangement$Vertical;)Lkotlin/jvm/functions/Function5;

    move-result-object v6

    .line 177
    invoke-interface {p1}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->getSpacing-D9Ej5fM()F

    move-result v7

    move v8, p2

    .line 170
    invoke-static/range {v1 .. v8}, Landroidx/compose/foundation/layout/FlowLayoutKt;->access$flowMeasurePolicy-bs7tm-s(Landroidx/compose/foundation/layout/LayoutOrientation;Lkotlin/jvm/functions/Function5;FLandroidx/compose/foundation/layout/SizeMode;Landroidx/compose/foundation/layout/CrossAxisAlignment;Lkotlin/jvm/functions/Function5;FI)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v0

    .line 827
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 823
    :cond_2
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 169
    check-cast v0, Landroidx/compose/ui/layout/MeasurePolicy;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v0
.end method
