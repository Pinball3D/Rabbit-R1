.class public abstract Landroidx/compose/ui/graphics/Brush;
.super Ljava/lang/Object;
.source "Brush.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/Brush$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00087\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0002J-\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH&\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u001f\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u0007\u001a\u0004\u0008\u0005\u0010\u0006\u0082\u0001\u0002\u0012\u0013\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u0014"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/Brush;",
        "",
        "()V",
        "intrinsicSize",
        "Landroidx/compose/ui/geometry/Size;",
        "getIntrinsicSize-NH-jbRc",
        "()J",
        "J",
        "applyTo",
        "",
        "size",
        "p",
        "Landroidx/compose/ui/graphics/Paint;",
        "alpha",
        "",
        "applyTo-Pq9zytI",
        "(JLandroidx/compose/ui/graphics/Paint;F)V",
        "Companion",
        "Landroidx/compose/ui/graphics/ShaderBrush;",
        "Landroidx/compose/ui/graphics/SolidColor;",
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
.field public static final Companion:Landroidx/compose/ui/graphics/Brush$Companion;


# instance fields
.field private final intrinsicSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/graphics/Brush$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/Brush$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/graphics/Brush;->Companion:Landroidx/compose/ui/graphics/Brush$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object v0, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Size$Companion;->getUnspecified-NH-jbRc()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/graphics/Brush;->intrinsicSize:J

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/graphics/Brush;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract applyTo-Pq9zytI(JLandroidx/compose/ui/graphics/Paint;F)V
.end method

.method public getIntrinsicSize-NH-jbRc()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/graphics/Brush;->intrinsicSize:J

    return-wide v0
.end method
