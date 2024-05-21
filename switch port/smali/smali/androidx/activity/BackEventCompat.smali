.class public final Landroidx/activity/BackEventCompat;
.super Ljava/lang/Object;
.source "BackEventCompat.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/activity/BackEventCompat$Companion;,
        Landroidx/activity/BackEventCompat$SwipeEdge;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 \u00152\u00020\u0001:\u0002\u0015\u0016B\u000f\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B)\u0008\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\u0008\u0010\u0012\u001a\u00020\u0003H\u0007J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016R\u0011\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\r\u00a8\u0006\u0017"
    }
    d2 = {
        "Landroidx/activity/BackEventCompat;",
        "",
        "backEvent",
        "Landroid/window/BackEvent;",
        "(Landroid/window/BackEvent;)V",
        "touchX",
        "",
        "touchY",
        "progress",
        "swipeEdge",
        "",
        "(FFFI)V",
        "getProgress",
        "()F",
        "getSwipeEdge",
        "()I",
        "getTouchX",
        "getTouchY",
        "toBackEvent",
        "toString",
        "",
        "Companion",
        "SwipeEdge",
        "activity_release"
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
.field public static final Companion:Landroidx/activity/BackEventCompat$Companion;

.field public static final EDGE_LEFT:I = 0x0

.field public static final EDGE_RIGHT:I = 0x1


# instance fields
.field private final progress:F

.field private final swipeEdge:I

.field private final touchX:F

.field private final touchY:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/activity/BackEventCompat$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/activity/BackEventCompat$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/activity/BackEventCompat;->Companion:Landroidx/activity/BackEventCompat$Companion;

    return-void
.end method

.method public constructor <init>(FFFI)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/activity/BackEventCompat;->touchX:F

    iput p2, p0, Landroidx/activity/BackEventCompat;->touchY:F

    iput p3, p0, Landroidx/activity/BackEventCompat;->progress:F

    iput p4, p0, Landroidx/activity/BackEventCompat;->swipeEdge:I

    return-void
.end method

.method public constructor <init>(Landroid/window/BackEvent;)V
    .locals 4

    const-string v0, "backEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    sget-object v0, Landroidx/activity/Api34Impl;->INSTANCE:Landroidx/activity/Api34Impl;

    invoke-virtual {v0, p1}, Landroidx/activity/Api34Impl;->touchX(Landroid/window/BackEvent;)F

    move-result v0

    .line 56
    sget-object v1, Landroidx/activity/Api34Impl;->INSTANCE:Landroidx/activity/Api34Impl;

    invoke-virtual {v1, p1}, Landroidx/activity/Api34Impl;->touchY(Landroid/window/BackEvent;)F

    move-result v1

    .line 57
    sget-object v2, Landroidx/activity/Api34Impl;->INSTANCE:Landroidx/activity/Api34Impl;

    invoke-virtual {v2, p1}, Landroidx/activity/Api34Impl;->progress(Landroid/window/BackEvent;)F

    move-result v2

    .line 58
    sget-object v3, Landroidx/activity/Api34Impl;->INSTANCE:Landroidx/activity/Api34Impl;

    invoke-virtual {v3, p1}, Landroidx/activity/Api34Impl;->swipeEdge(Landroid/window/BackEvent;)I

    move-result p1

    .line 54
    invoke-direct {p0, v0, v1, v2, p1}, Landroidx/activity/BackEventCompat;-><init>(FFFI)V

    return-void
.end method


# virtual methods
.method public final getProgress()F
    .locals 0

    iget p0, p0, Landroidx/activity/BackEventCompat;->progress:F

    return p0
.end method

.method public final getSwipeEdge()I
    .locals 0

    iget p0, p0, Landroidx/activity/BackEventCompat;->swipeEdge:I

    return p0
.end method

.method public final getTouchX()F
    .locals 0

    iget p0, p0, Landroidx/activity/BackEventCompat;->touchX:F

    return p0
.end method

.method public final getTouchY()F
    .locals 0

    iget p0, p0, Landroidx/activity/BackEventCompat;->touchY:F

    return p0
.end method

.method public final toBackEvent()Landroid/window/BackEvent;
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    .line 79
    sget-object v0, Landroidx/activity/Api34Impl;->INSTANCE:Landroidx/activity/Api34Impl;

    iget v1, p0, Landroidx/activity/BackEventCompat;->touchX:F

    iget v2, p0, Landroidx/activity/BackEventCompat;->touchY:F

    iget v3, p0, Landroidx/activity/BackEventCompat;->progress:F

    iget p0, p0, Landroidx/activity/BackEventCompat;->swipeEdge:I

    invoke-virtual {v0, v1, v2, v3, p0}, Landroidx/activity/Api34Impl;->createOnBackEvent(FFFI)Landroid/window/BackEvent;

    move-result-object p0

    return-object p0

    .line 81
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This method is only supported on API level 34+"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BackEventCompat{touchX="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/activity/BackEventCompat;->touchX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", touchY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/activity/BackEventCompat;->touchY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/activity/BackEventCompat;->progress:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", swipeEdge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Landroidx/activity/BackEventCompat;->swipeEdge:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
