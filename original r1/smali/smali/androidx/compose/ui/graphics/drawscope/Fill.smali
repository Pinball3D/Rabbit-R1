.class public final Landroidx/compose/ui/graphics/drawscope/Fill;
.super Landroidx/compose/ui/graphics/drawscope/DrawStyle;
.source "DrawScope.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/drawscope/Fill;",
        "Landroidx/compose/ui/graphics/drawscope/DrawStyle;",
        "()V",
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


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/graphics/drawscope/Fill;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/drawscope/Fill;-><init>()V

    sput-object v0, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 901
    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/drawscope/DrawStyle;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
