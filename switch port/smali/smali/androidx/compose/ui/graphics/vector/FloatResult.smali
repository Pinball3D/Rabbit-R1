.class public final Landroidx/compose/ui/graphics/vector/FloatResult;
.super Ljava/lang/Object;
.source "FastFloatParser.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/vector/FloatResult;",
        "",
        "value",
        "",
        "isValid",
        "",
        "(FZ)V",
        "()Z",
        "setValid",
        "(Z)V",
        "getValue",
        "()F",
        "setValue",
        "(F)V",
        "ui-graphics_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private isValid:Z

.field private value:F


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v0, v1}, Landroidx/compose/ui/graphics/vector/FloatResult;-><init>(FZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FZ)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/graphics/vector/FloatResult;->value:F

    iput-boolean p2, p0, Landroidx/compose/ui/graphics/vector/FloatResult;->isValid:Z

    return-void
.end method

.method public synthetic constructor <init>(FZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/high16 p1, 0x7fc00000    # Float.NaN

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 29
    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/graphics/vector/FloatResult;-><init>(FZ)V

    return-void
.end method


# virtual methods
.method public final getValue()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/graphics/vector/FloatResult;->value:F

    return p0
.end method

.method public final isValid()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/ui/graphics/vector/FloatResult;->isValid:Z

    return p0
.end method

.method public final setValid(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/FloatResult;->isValid:Z

    return-void
.end method

.method public final setValue(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/graphics/vector/FloatResult;->value:F

    return-void
.end method
