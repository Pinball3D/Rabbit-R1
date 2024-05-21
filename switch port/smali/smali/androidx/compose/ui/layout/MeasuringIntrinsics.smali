.class final Landroidx/compose/ui/layout/MeasuringIntrinsics;
.super Ljava/lang/Object;
.source "LayoutModifier.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/layout/MeasuringIntrinsics$DefaultIntrinsicMeasurable;,
        Landroidx/compose/ui/layout/MeasuringIntrinsics$EmptyPlaceable;,
        Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicMinMax;,
        Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicWidthHeight;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u00c2\u0002\u0018\u00002\u00020\u0001:\u0004\u0010\u0011\u0012\u0013B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J&\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004J&\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u0004J&\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004J&\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u0004\u00a8\u0006\u0014"
    }
    d2 = {
        "Landroidx/compose/ui/layout/MeasuringIntrinsics;",
        "",
        "()V",
        "maxHeight",
        "",
        "modifier",
        "Landroidx/compose/ui/layout/LayoutModifier;",
        "intrinsicMeasureScope",
        "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
        "intrinsicMeasurable",
        "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
        "w",
        "maxWidth",
        "h",
        "minHeight",
        "minWidth",
        "DefaultIntrinsicMeasurable",
        "EmptyPlaceable",
        "IntrinsicMinMax",
        "IntrinsicWidthHeight",
        "ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/layout/MeasuringIntrinsics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/layout/MeasuringIntrinsics;

    invoke-direct {v0}, Landroidx/compose/ui/layout/MeasuringIntrinsics;-><init>()V

    sput-object v0, Landroidx/compose/ui/layout/MeasuringIntrinsics;->INSTANCE:Landroidx/compose/ui/layout/MeasuringIntrinsics;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final maxHeight(Landroidx/compose/ui/layout/LayoutModifier;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 8

    const-string p0, "modifier"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "intrinsicMeasureScope"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "intrinsicMeasurable"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    new-instance p0, Landroidx/compose/ui/layout/MeasuringIntrinsics$DefaultIntrinsicMeasurable;

    .line 182
    sget-object v0, Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicMinMax;->Max:Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicMinMax;

    .line 183
    sget-object v1, Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicWidthHeight;->Height:Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicWidthHeight;

    .line 180
    invoke-direct {p0, p3, v0, v1}, Landroidx/compose/ui/layout/MeasuringIntrinsics$DefaultIntrinsicMeasurable;-><init>(Landroidx/compose/ui/layout/IntrinsicMeasurable;Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicMinMax;Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicWidthHeight;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xd

    const/4 v7, 0x0

    move v3, p4

    .line 185
    invoke-static/range {v2 .. v7}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIIILjava/lang/Object;)J

    move-result-wide p3

    .line 187
    new-instance v0, Landroidx/compose/ui/layout/IntrinsicsMeasureScope;

    invoke-interface {p2}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Landroidx/compose/ui/layout/IntrinsicsMeasureScope;-><init>(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/unit/LayoutDirection;)V

    check-cast v0, Landroidx/compose/ui/layout/MeasureScope;

    .line 188
    check-cast p0, Landroidx/compose/ui/layout/Measurable;

    invoke-interface {p1, v0, p0, p3, p4}, Landroidx/compose/ui/layout/LayoutModifier;->measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    .line 190
    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->getHeight()I

    move-result p0

    return p0
.end method

.method public final maxWidth(Landroidx/compose/ui/layout/LayoutModifier;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 8

    const-string p0, "modifier"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "intrinsicMeasureScope"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "intrinsicMeasurable"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    new-instance p0, Landroidx/compose/ui/layout/MeasuringIntrinsics$DefaultIntrinsicMeasurable;

    .line 163
    sget-object v0, Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicMinMax;->Max:Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicMinMax;

    .line 164
    sget-object v1, Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicWidthHeight;->Width:Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicWidthHeight;

    .line 161
    invoke-direct {p0, p3, v0, v1}, Landroidx/compose/ui/layout/MeasuringIntrinsics$DefaultIntrinsicMeasurable;-><init>(Landroidx/compose/ui/layout/IntrinsicMeasurable;Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicMinMax;Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicWidthHeight;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    move v5, p4

    .line 166
    invoke-static/range {v2 .. v7}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIIILjava/lang/Object;)J

    move-result-wide p3

    .line 168
    new-instance v0, Landroidx/compose/ui/layout/IntrinsicsMeasureScope;

    invoke-interface {p2}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Landroidx/compose/ui/layout/IntrinsicsMeasureScope;-><init>(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/unit/LayoutDirection;)V

    check-cast v0, Landroidx/compose/ui/layout/MeasureScope;

    .line 169
    check-cast p0, Landroidx/compose/ui/layout/Measurable;

    invoke-interface {p1, v0, p0, p3, p4}, Landroidx/compose/ui/layout/LayoutModifier;->measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    .line 171
    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->getWidth()I

    move-result p0

    return p0
.end method

.method public final minHeight(Landroidx/compose/ui/layout/LayoutModifier;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 8

    const-string p0, "modifier"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "intrinsicMeasureScope"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "intrinsicMeasurable"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    new-instance p0, Landroidx/compose/ui/layout/MeasuringIntrinsics$DefaultIntrinsicMeasurable;

    .line 144
    sget-object v0, Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicMinMax;->Min:Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicMinMax;

    .line 145
    sget-object v1, Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicWidthHeight;->Height:Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicWidthHeight;

    .line 142
    invoke-direct {p0, p3, v0, v1}, Landroidx/compose/ui/layout/MeasuringIntrinsics$DefaultIntrinsicMeasurable;-><init>(Landroidx/compose/ui/layout/IntrinsicMeasurable;Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicMinMax;Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicWidthHeight;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xd

    const/4 v7, 0x0

    move v3, p4

    .line 147
    invoke-static/range {v2 .. v7}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIIILjava/lang/Object;)J

    move-result-wide p3

    .line 149
    new-instance v0, Landroidx/compose/ui/layout/IntrinsicsMeasureScope;

    invoke-interface {p2}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Landroidx/compose/ui/layout/IntrinsicsMeasureScope;-><init>(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/unit/LayoutDirection;)V

    check-cast v0, Landroidx/compose/ui/layout/MeasureScope;

    .line 150
    check-cast p0, Landroidx/compose/ui/layout/Measurable;

    invoke-interface {p1, v0, p0, p3, p4}, Landroidx/compose/ui/layout/LayoutModifier;->measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    .line 152
    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->getHeight()I

    move-result p0

    return p0
.end method

.method public final minWidth(Landroidx/compose/ui/layout/LayoutModifier;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 8

    const-string p0, "modifier"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "intrinsicMeasureScope"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "intrinsicMeasurable"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    new-instance p0, Landroidx/compose/ui/layout/MeasuringIntrinsics$DefaultIntrinsicMeasurable;

    .line 125
    sget-object v0, Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicMinMax;->Min:Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicMinMax;

    .line 126
    sget-object v1, Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicWidthHeight;->Width:Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicWidthHeight;

    .line 123
    invoke-direct {p0, p3, v0, v1}, Landroidx/compose/ui/layout/MeasuringIntrinsics$DefaultIntrinsicMeasurable;-><init>(Landroidx/compose/ui/layout/IntrinsicMeasurable;Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicMinMax;Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicWidthHeight;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    move v5, p4

    .line 128
    invoke-static/range {v2 .. v7}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIIILjava/lang/Object;)J

    move-result-wide p3

    .line 130
    new-instance v0, Landroidx/compose/ui/layout/IntrinsicsMeasureScope;

    invoke-interface {p2}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Landroidx/compose/ui/layout/IntrinsicsMeasureScope;-><init>(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/unit/LayoutDirection;)V

    check-cast v0, Landroidx/compose/ui/layout/MeasureScope;

    .line 131
    check-cast p0, Landroidx/compose/ui/layout/Measurable;

    invoke-interface {p1, v0, p0, p3, p4}, Landroidx/compose/ui/layout/LayoutModifier;->measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    .line 133
    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->getWidth()I

    move-result p0

    return p0
.end method
