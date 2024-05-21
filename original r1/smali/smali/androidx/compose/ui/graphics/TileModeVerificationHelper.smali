.class final Landroidx/compose/ui/graphics/TileModeVerificationHelper;
.super Ljava/lang/Object;
.source "AndroidTileMode.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u00c3\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u0004H\u0007\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\u0007\u0082\u0002\u000f\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\t"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/TileModeVerificationHelper;",
        "",
        "()V",
        "getComposeTileModeDecal",
        "Landroidx/compose/ui/graphics/TileMode;",
        "getComposeTileModeDecal-3opZhB0",
        "()I",
        "getFrameworkTileModeDecal",
        "Landroid/graphics/Shader$TileMode;",
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
.field public static final INSTANCE:Landroidx/compose/ui/graphics/TileModeVerificationHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/graphics/TileModeVerificationHelper;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/TileModeVerificationHelper;-><init>()V

    sput-object v0, Landroidx/compose/ui/graphics/TileModeVerificationHelper;->INSTANCE:Landroidx/compose/ui/graphics/TileModeVerificationHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getComposeTileModeDecal-3opZhB0()I
    .locals 0

    .line 69
    sget-object p0, Landroidx/compose/ui/graphics/TileMode;->Companion:Landroidx/compose/ui/graphics/TileMode$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/TileMode$Companion;->getDecal-3opZhB0()I

    move-result p0

    return p0
.end method

.method public final getFrameworkTileModeDecal()Landroid/graphics/Shader$TileMode;
    .locals 0

    .line 66
    sget-object p0, Landroid/graphics/Shader$TileMode;->DECAL:Landroid/graphics/Shader$TileMode;

    return-object p0
.end method
