.class public final Landroidx/compose/foundation/pager/PageSize$Fixed;
.super Ljava/lang/Object;
.source "Pager.kt"

# interfaces
.implements Landroidx/compose/foundation/pager/PageSize;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/pager/PageSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Fixed"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0004J\u001c\u0010\u0008\u001a\u00020\t*\u00020\n2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\tH\u0016R\u001c\u0010\u0002\u001a\u00020\u0003\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u0007\u001a\u0004\u0008\u0005\u0010\u0006\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\r"
    }
    d2 = {
        "Landroidx/compose/foundation/pager/PageSize$Fixed;",
        "Landroidx/compose/foundation/pager/PageSize;",
        "pageSize",
        "Landroidx/compose/ui/unit/Dp;",
        "(FLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "getPageSize-D9Ej5fM",
        "()F",
        "F",
        "calculateMainAxisPageSize",
        "",
        "Landroidx/compose/ui/unit/Density;",
        "availableSpace",
        "pageSpacing",
        "foundation_release"
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
.field public static final $stable:I


# instance fields
.field private final pageSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(F)V
    .locals 0

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/pager/PageSize$Fixed;->pageSize:F

    return-void
.end method

.method public synthetic constructor <init>(FLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/foundation/pager/PageSize$Fixed;-><init>(F)V

    return-void
.end method


# virtual methods
.method public calculateMainAxisPageSize(Landroidx/compose/ui/unit/Density;II)I
    .locals 0

    const-string p2, "<this>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, Landroidx/compose/foundation/pager/PageSize$Fixed;->pageSize:F

    .line 471
    invoke-interface {p1, p0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p0

    return p0
.end method

.method public final getPageSize-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/pager/PageSize$Fixed;->pageSize:F

    return p0
.end method
