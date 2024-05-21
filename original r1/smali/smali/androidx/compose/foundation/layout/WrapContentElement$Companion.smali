.class public final Landroidx/compose/foundation/layout/WrapContentElement$Companion;
.super Ljava/lang/Object;
.source "Size.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/layout/WrapContentElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J\u0018\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J\u0018\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0008H\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Landroidx/compose/foundation/layout/WrapContentElement$Companion;",
        "",
        "()V",
        "height",
        "Landroidx/compose/foundation/layout/WrapContentElement;",
        "align",
        "Landroidx/compose/ui/Alignment$Vertical;",
        "unbounded",
        "",
        "size",
        "Landroidx/compose/ui/Alignment;",
        "width",
        "Landroidx/compose/ui/Alignment$Horizontal;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 937
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/foundation/layout/WrapContentElement$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final height(Landroidx/compose/ui/Alignment$Vertical;Z)Landroidx/compose/foundation/layout/WrapContentElement;
    .locals 6

    const-string p0, "align"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 957
    new-instance p0, Landroidx/compose/foundation/layout/WrapContentElement;

    .line 958
    sget-object v1, Landroidx/compose/foundation/layout/Direction;->Vertical:Landroidx/compose/foundation/layout/Direction;

    .line 960
    new-instance v0, Landroidx/compose/foundation/layout/WrapContentElement$Companion$height$1;

    invoke-direct {v0, p1}, Landroidx/compose/foundation/layout/WrapContentElement$Companion$height$1;-><init>(Landroidx/compose/ui/Alignment$Vertical;)V

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const-string/jumbo v5, "wrapContentHeight"

    move-object v0, p0

    move v2, p2

    move-object v4, p1

    .line 957
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/layout/WrapContentElement;-><init>(Landroidx/compose/foundation/layout/Direction;ZLkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final size(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/foundation/layout/WrapContentElement;
    .locals 6

    const-string p0, "align"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 971
    new-instance p0, Landroidx/compose/foundation/layout/WrapContentElement;

    .line 972
    sget-object v1, Landroidx/compose/foundation/layout/Direction;->Both:Landroidx/compose/foundation/layout/Direction;

    .line 974
    new-instance v0, Landroidx/compose/foundation/layout/WrapContentElement$Companion$size$1;

    invoke-direct {v0, p1}, Landroidx/compose/foundation/layout/WrapContentElement$Companion$size$1;-><init>(Landroidx/compose/ui/Alignment;)V

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const-string/jumbo v5, "wrapContentSize"

    move-object v0, p0

    move v2, p2

    move-object v4, p1

    .line 971
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/layout/WrapContentElement;-><init>(Landroidx/compose/foundation/layout/Direction;ZLkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final width(Landroidx/compose/ui/Alignment$Horizontal;Z)Landroidx/compose/foundation/layout/WrapContentElement;
    .locals 6

    const-string p0, "align"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 943
    new-instance p0, Landroidx/compose/foundation/layout/WrapContentElement;

    .line 944
    sget-object v1, Landroidx/compose/foundation/layout/Direction;->Horizontal:Landroidx/compose/foundation/layout/Direction;

    .line 946
    new-instance v0, Landroidx/compose/foundation/layout/WrapContentElement$Companion$width$1;

    invoke-direct {v0, p1}, Landroidx/compose/foundation/layout/WrapContentElement$Companion$width$1;-><init>(Landroidx/compose/ui/Alignment$Horizontal;)V

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const-string/jumbo v5, "wrapContentWidth"

    move-object v0, p0

    move v2, p2

    move-object v4, p1

    .line 943
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/layout/WrapContentElement;-><init>(Landroidx/compose/foundation/layout/Direction;ZLkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
