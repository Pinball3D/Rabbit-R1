.class public final Landroidx/compose/ui/node/LayoutNode$Companion;
.super Ljava/lang/Object;
.source "LayoutNode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/node/LayoutNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\tX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0080T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0011X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Landroidx/compose/ui/node/LayoutNode$Companion;",
        "",
        "()V",
        "Constructor",
        "Lkotlin/Function0;",
        "Landroidx/compose/ui/node/LayoutNode;",
        "getConstructor$ui_release",
        "()Lkotlin/jvm/functions/Function0;",
        "DummyViewConfiguration",
        "Landroidx/compose/ui/platform/ViewConfiguration;",
        "getDummyViewConfiguration$ui_release",
        "()Landroidx/compose/ui/platform/ViewConfiguration;",
        "ErrorMeasurePolicy",
        "Landroidx/compose/ui/node/LayoutNode$NoIntrinsicsMeasurePolicy;",
        "NotPlacedPlaceOrder",
        "",
        "ZComparator",
        "Ljava/util/Comparator;",
        "getZComparator$ui_release",
        "()Ljava/util/Comparator;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getConstructor$ui_release()Lkotlin/jvm/functions/Function0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/ui/node/LayoutNode;",
            ">;"
        }
    .end annotation

    .line 1370
    invoke-static {}, Landroidx/compose/ui/node/LayoutNode;->access$getConstructor$cp()Lkotlin/jvm/functions/Function0;

    move-result-object p0

    return-object p0
.end method

.method public final getDummyViewConfiguration$ui_release()Landroidx/compose/ui/platform/ViewConfiguration;
    .locals 0

    .line 1376
    invoke-static {}, Landroidx/compose/ui/node/LayoutNode;->access$getDummyViewConfiguration$cp()Landroidx/compose/ui/platform/ViewConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public final getZComparator$ui_release()Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Landroidx/compose/ui/node/LayoutNode;",
            ">;"
        }
    .end annotation

    .line 1392
    invoke-static {}, Landroidx/compose/ui/node/LayoutNode;->access$getZComparator$cp()Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method
