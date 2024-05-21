.class public abstract Landroidx/compose/ui/graphics/Outline;
.super Ljava/lang/Object;
.source "Outline.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/Outline$Generic;,
        Landroidx/compose/ui/graphics/Outline$Rectangle;,
        Landroidx/compose/ui/graphics/Outline$Rounded;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0003\u0007\u0008\tB\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0002R\u0012\u0010\u0003\u001a\u00020\u0004X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u0082\u0001\u0003\n\u000b\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/Outline;",
        "",
        "()V",
        "bounds",
        "Landroidx/compose/ui/geometry/Rect;",
        "getBounds",
        "()Landroidx/compose/ui/geometry/Rect;",
        "Generic",
        "Rectangle",
        "Rounded",
        "Landroidx/compose/ui/graphics/Outline$Generic;",
        "Landroidx/compose/ui/graphics/Outline$Rectangle;",
        "Landroidx/compose/ui/graphics/Outline$Rounded;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/graphics/Outline;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getBounds()Landroidx/compose/ui/geometry/Rect;
.end method
