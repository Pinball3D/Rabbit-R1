.class final Landroidx/compose/foundation/layout/MinIntrinsicWidthModifier;
.super Ljava/lang/Object;
.source "Intrinsic.kt"

# interfaces
.implements Landroidx/compose/foundation/layout/IntrinsicSizeModifier;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J)\u0010\u0003\u001a\u00020\u0004*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0004H\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001c\u0010\u000b\u001a\u00020\u000c*\u00020\r2\u0006\u0010\u0006\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000cH\u0016\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u0010"
    }
    d2 = {
        "Landroidx/compose/foundation/layout/MinIntrinsicWidthModifier;",
        "Landroidx/compose/foundation/layout/IntrinsicSizeModifier;",
        "()V",
        "calculateContentConstraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "measurable",
        "Landroidx/compose/ui/layout/Measurable;",
        "constraints",
        "calculateContentConstraints-l58MMJ0",
        "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)J",
        "maxIntrinsicWidth",
        "",
        "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
        "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
        "height",
        "foundation-layout_release"
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
.field public static final INSTANCE:Landroidx/compose/foundation/layout/MinIntrinsicWidthModifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/layout/MinIntrinsicWidthModifier;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/MinIntrinsicWidthModifier;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/MinIntrinsicWidthModifier;->INSTANCE:Landroidx/compose/foundation/layout/MinIntrinsicWidthModifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateContentConstraints-l58MMJ0(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)J
    .locals 0

    const-string p0, "$this$calculateContentConstraints"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "measurable"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result p0

    invoke-interface {p2, p0}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicWidth(I)I

    move-result p0

    .line 118
    sget-object p1, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    invoke-virtual {p1, p0}, Landroidx/compose/ui/unit/Constraints$Companion;->fixedWidth-OenEA2s(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public maxIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "measurable"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicWidth(I)I

    move-result p0

    return p0
.end method
