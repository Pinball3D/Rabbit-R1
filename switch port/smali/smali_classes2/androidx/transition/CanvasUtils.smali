.class Landroidx/transition/CanvasUtils;
.super Ljava/lang/Object;
.source "CanvasUtils.java"


# static fields
.field private static sInorderBarrierMethod:Ljava/lang/reflect/Method;

.field private static sOrderMethodsFetched:Z

.field private static sReorderBarrierMethod:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static enableZ(Landroid/graphics/Canvas;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {p0}, Landroid/graphics/Canvas;->enableZ()V

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Canvas;->disableZ()V

    :goto_0
    return-void
.end method
