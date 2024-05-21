.class final Landroidx/compose/ui/draw/EmptyBuildDrawCacheParams;
.super Ljava/lang/Object;
.source "DrawModifier.kt"

# interfaces
.implements Landroidx/compose/ui/draw/BuildDrawCacheParams;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u001f\u0010\u000b\u001a\u00020\u000cX\u0096\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u000f\u001a\u0004\u0008\r\u0010\u000e\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u0010"
    }
    d2 = {
        "Landroidx/compose/ui/draw/EmptyBuildDrawCacheParams;",
        "Landroidx/compose/ui/draw/BuildDrawCacheParams;",
        "()V",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "getDensity",
        "()Landroidx/compose/ui/unit/Density;",
        "layoutDirection",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "getLayoutDirection",
        "()Landroidx/compose/ui/unit/LayoutDirection;",
        "size",
        "Landroidx/compose/ui/geometry/Size;",
        "getSize-NH-jbRc",
        "()J",
        "J",
        "ui_release"
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
.field public static final INSTANCE:Landroidx/compose/ui/draw/EmptyBuildDrawCacheParams;

.field private static final density:Landroidx/compose/ui/unit/Density;

.field private static final layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field private static final size:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/draw/EmptyBuildDrawCacheParams;

    invoke-direct {v0}, Landroidx/compose/ui/draw/EmptyBuildDrawCacheParams;-><init>()V

    sput-object v0, Landroidx/compose/ui/draw/EmptyBuildDrawCacheParams;->INSTANCE:Landroidx/compose/ui/draw/EmptyBuildDrawCacheParams;

    .line 270
    sget-object v0, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Size$Companion;->getUnspecified-NH-jbRc()J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/ui/draw/EmptyBuildDrawCacheParams;->size:J

    .line 271
    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    sput-object v0, Landroidx/compose/ui/draw/EmptyBuildDrawCacheParams;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 272
    invoke-static {v0, v0}, Landroidx/compose/ui/unit/DensityKt;->Density(FF)Landroidx/compose/ui/unit/Density;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/draw/EmptyBuildDrawCacheParams;->density:Landroidx/compose/ui/unit/Density;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDensity()Landroidx/compose/ui/unit/Density;
    .locals 0

    sget-object p0, Landroidx/compose/ui/draw/EmptyBuildDrawCacheParams;->density:Landroidx/compose/ui/unit/Density;

    return-object p0
.end method

.method public getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 0

    sget-object p0, Landroidx/compose/ui/draw/EmptyBuildDrawCacheParams;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    return-object p0
.end method

.method public getSize-NH-jbRc()J
    .locals 2

    sget-wide v0, Landroidx/compose/ui/draw/EmptyBuildDrawCacheParams;->size:J

    return-wide v0
.end method
