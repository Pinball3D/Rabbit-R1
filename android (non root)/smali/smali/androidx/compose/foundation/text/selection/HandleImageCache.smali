.class final Landroidx/compose/foundation/text/selection/HandleImageCache;
.super Ljava/lang/Object;
.source "AndroidSelectionHandles.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Landroidx/compose/foundation/text/selection/HandleImageCache;",
        "",
        "()V",
        "canvas",
        "Landroidx/compose/ui/graphics/Canvas;",
        "getCanvas",
        "()Landroidx/compose/ui/graphics/Canvas;",
        "setCanvas",
        "(Landroidx/compose/ui/graphics/Canvas;)V",
        "canvasDrawScope",
        "Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;",
        "getCanvasDrawScope",
        "()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;",
        "setCanvasDrawScope",
        "(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;)V",
        "imageBitmap",
        "Landroidx/compose/ui/graphics/ImageBitmap;",
        "getImageBitmap",
        "()Landroidx/compose/ui/graphics/ImageBitmap;",
        "setImageBitmap",
        "(Landroidx/compose/ui/graphics/ImageBitmap;)V",
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
.field public static final INSTANCE:Landroidx/compose/foundation/text/selection/HandleImageCache;

.field private static canvas:Landroidx/compose/ui/graphics/Canvas;

.field private static canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

.field private static imageBitmap:Landroidx/compose/ui/graphics/ImageBitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/text/selection/HandleImageCache;

    invoke-direct {v0}, Landroidx/compose/foundation/text/selection/HandleImageCache;-><init>()V

    sput-object v0, Landroidx/compose/foundation/text/selection/HandleImageCache;->INSTANCE:Landroidx/compose/foundation/text/selection/HandleImageCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCanvas()Landroidx/compose/ui/graphics/Canvas;
    .locals 0

    sget-object p0, Landroidx/compose/foundation/text/selection/HandleImageCache;->canvas:Landroidx/compose/ui/graphics/Canvas;

    return-object p0
.end method

.method public final getCanvasDrawScope()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;
    .locals 0

    sget-object p0, Landroidx/compose/foundation/text/selection/HandleImageCache;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    return-object p0
.end method

.method public final getImageBitmap()Landroidx/compose/ui/graphics/ImageBitmap;
    .locals 0

    sget-object p0, Landroidx/compose/foundation/text/selection/HandleImageCache;->imageBitmap:Landroidx/compose/ui/graphics/ImageBitmap;

    return-object p0
.end method

.method public final setCanvas(Landroidx/compose/ui/graphics/Canvas;)V
    .locals 0

    sput-object p1, Landroidx/compose/foundation/text/selection/HandleImageCache;->canvas:Landroidx/compose/ui/graphics/Canvas;

    return-void
.end method

.method public final setCanvasDrawScope(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;)V
    .locals 0

    sput-object p1, Landroidx/compose/foundation/text/selection/HandleImageCache;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    return-void
.end method

.method public final setImageBitmap(Landroidx/compose/ui/graphics/ImageBitmap;)V
    .locals 0

    sput-object p1, Landroidx/compose/foundation/text/selection/HandleImageCache;->imageBitmap:Landroidx/compose/ui/graphics/ImageBitmap;

    return-void
.end method
