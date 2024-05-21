.class final Landroidx/compose/foundation/layout/Arrangement$aligned$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Arrangement.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/layout/Arrangement;->aligned(Landroidx/compose/ui/Alignment$Vertical;)Landroidx/compose/foundation/layout/Arrangement$Vertical;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Integer;",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "size",
        "<anonymous parameter 1>",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "invoke",
        "(ILandroidx/compose/ui/unit/LayoutDirection;)Ljava/lang/Integer;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $alignment:Landroidx/compose/ui/Alignment$Vertical;


# direct methods
.method constructor <init>(Landroidx/compose/ui/Alignment$Vertical;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/layout/Arrangement$aligned$2;->$alignment:Landroidx/compose/ui/Alignment$Vertical;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(ILandroidx/compose/ui/unit/LayoutDirection;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "<anonymous parameter 1>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/foundation/layout/Arrangement$aligned$2;->$alignment:Landroidx/compose/ui/Alignment$Vertical;

    const/4 p2, 0x0

    .line 367
    invoke-interface {p0, p2, p1}, Landroidx/compose/ui/Alignment$Vertical;->align(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 367
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Landroidx/compose/ui/unit/LayoutDirection;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/layout/Arrangement$aligned$2;->invoke(ILandroidx/compose/ui/unit/LayoutDirection;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
