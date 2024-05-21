.class public final Landroidx/activity/Api34Impl;
.super Ljava/lang/Object;
.source "BackEventCompat.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J(\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\nH\u0007J\u0010\u0010\u0008\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0004H\u0007J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004H\u0007J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0004H\u0007J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0004H\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "Landroidx/activity/Api34Impl;",
        "",
        "()V",
        "createOnBackEvent",
        "Landroid/window/BackEvent;",
        "touchX",
        "",
        "touchY",
        "progress",
        "swipeEdge",
        "",
        "backEvent",
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
.field public static final INSTANCE:Landroidx/activity/Api34Impl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/activity/Api34Impl;

    invoke-direct {v0}, Landroidx/activity/Api34Impl;-><init>()V

    sput-object v0, Landroidx/activity/Api34Impl;->INSTANCE:Landroidx/activity/Api34Impl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createOnBackEvent(FFFI)Landroid/window/BackEvent;
    .locals 0

    .line 103
    new-instance p0, Landroid/window/BackEvent;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/window/BackEvent;-><init>(FFFI)V

    return-object p0
.end method

.method public final progress(Landroid/window/BackEvent;)F
    .locals 0

    const-string p0, "backEvent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1}, Landroid/window/BackEvent;->getProgress()F

    move-result p0

    return p0
.end method

.method public final swipeEdge(Landroid/window/BackEvent;)I
    .locals 0

    const-string p0, "backEvent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Landroid/window/BackEvent;->getSwipeEdge()I

    move-result p0

    return p0
.end method

.method public final touchX(Landroid/window/BackEvent;)F
    .locals 0

    const-string p0, "backEvent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Landroid/window/BackEvent;->getTouchX()F

    move-result p0

    return p0
.end method

.method public final touchY(Landroid/window/BackEvent;)F
    .locals 0

    const-string p0, "backEvent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Landroid/window/BackEvent;->getTouchY()F

    move-result p0

    return p0
.end method
