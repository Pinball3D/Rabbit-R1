.class public final Landroidx/compose/ui/platform/RenderNodeLayer;
.super Ljava/lang/Object;
.source "RenderNodeLayer.android.kt"

# interfaces
.implements Landroidx/compose/ui/node/OwnedLayer;
.implements Landroidx/compose/ui/layout/GraphicLayerInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/platform/RenderNodeLayer$Companion;,
        Landroidx/compose/ui/platform/RenderNodeLayer$UniqueDrawingIdApi29;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRenderNodeLayer.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RenderNodeLayer.android.kt\nandroidx/compose/ui/platform/RenderNodeLayer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,382:1\n1#2:383\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ba\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0007\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0001\u0018\u0000 h2\u00020\u00012\u00020\u0002:\u0002hiB/\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\n\u00a2\u0006\u0002\u0010\u000bJ\u0010\u0010(\u001a\u00020\u00082\u0006\u0010)\u001a\u00020\u0007H\u0002J\u0008\u0010*\u001a\u00020\u0008H\u0016J\u0010\u0010+\u001a\u00020\u00082\u0006\u0010)\u001a\u00020\u0007H\u0016J\u0008\u0010,\u001a\u00020\u0008H\u0016J\u001d\u0010-\u001a\u00020\u00082\u0006\u0010.\u001a\u00020/H\u0016\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u00080\u00101J\u001d\u00102\u001a\u00020\u000f2\u0006\u00103\u001a\u000204H\u0016\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u00085\u00106J\u0018\u00107\u001a\u00020\u00082\u0006\u00108\u001a\u0002092\u0006\u0010:\u001a\u00020\u000fH\u0016J%\u0010;\u001a\u0002042\u0006\u0010<\u001a\u0002042\u0006\u0010:\u001a\u00020\u000fH\u0016\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008=\u0010>J\u001d\u0010?\u001a\u00020\u00082\u0006\u00103\u001a\u00020@H\u0016\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008A\u0010BJ\u001d\u0010C\u001a\u00020\u00082\u0006\u0010D\u001a\u00020EH\u0016\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008F\u0010BJ*\u0010G\u001a\u00020\u00082\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00062\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\nH\u0016J\u001d\u0010H\u001a\u00020\u00082\u0006\u0010.\u001a\u00020/H\u0016\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008I\u00101J\u0008\u0010J\u001a\u00020\u0008H\u0002J\u0008\u0010K\u001a\u00020\u0008H\u0016J\u00af\u0001\u0010L\u001a\u00020\u00082\u0006\u0010M\u001a\u00020N2\u0006\u0010O\u001a\u00020N2\u0006\u0010P\u001a\u00020N2\u0006\u0010Q\u001a\u00020N2\u0006\u0010R\u001a\u00020N2\u0006\u0010S\u001a\u00020N2\u0006\u0010T\u001a\u00020N2\u0006\u0010U\u001a\u00020N2\u0006\u0010V\u001a\u00020N2\u0006\u0010W\u001a\u00020N2\u0006\u0010%\u001a\u00020&2\u0006\u0010X\u001a\u00020Y2\u0006\u0010Z\u001a\u00020\u000f2\u0008\u0010[\u001a\u0004\u0018\u00010\\2\u0006\u0010]\u001a\u00020^2\u0006\u0010_\u001a\u00020^2\u0006\u0010`\u001a\u00020a2\u0006\u0010b\u001a\u00020c2\u0006\u0010d\u001a\u00020eH\u0016\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008f\u0010gR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f@BX\u0082\u000e\u00a2\u0006\u0008\n\u0000\"\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u00020\u00168VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u0014\u0010 \u001a\u00020\u00168VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\u0018R\u000e\u0010\"\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010#\u001a\u0004\u0018\u00010$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0019\u0010%\u001a\u00020&X\u0082\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\n\u0002\u0010\'\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006j"
    }
    d2 = {
        "Landroidx/compose/ui/platform/RenderNodeLayer;",
        "Landroidx/compose/ui/node/OwnedLayer;",
        "Landroidx/compose/ui/layout/GraphicLayerInfo;",
        "ownerView",
        "Landroidx/compose/ui/platform/AndroidComposeView;",
        "drawBlock",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/graphics/Canvas;",
        "",
        "invalidateParentLayer",
        "Lkotlin/Function0;",
        "(Landroidx/compose/ui/platform/AndroidComposeView;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V",
        "canvasHolder",
        "Landroidx/compose/ui/graphics/CanvasHolder;",
        "drawnWithZ",
        "",
        "isDestroyed",
        "value",
        "isDirty",
        "setDirty",
        "(Z)V",
        "layerId",
        "",
        "getLayerId",
        "()J",
        "matrixCache",
        "Landroidx/compose/ui/platform/LayerMatrixCache;",
        "Landroidx/compose/ui/platform/DeviceRenderNode;",
        "outlineResolver",
        "Landroidx/compose/ui/platform/OutlineResolver;",
        "getOwnerView",
        "()Landroidx/compose/ui/platform/AndroidComposeView;",
        "ownerViewId",
        "getOwnerViewId",
        "renderNode",
        "softwareLayerPaint",
        "Landroidx/compose/ui/graphics/Paint;",
        "transformOrigin",
        "Landroidx/compose/ui/graphics/TransformOrigin;",
        "J",
        "clipRenderNode",
        "canvas",
        "destroy",
        "drawLayer",
        "invalidate",
        "inverseTransform",
        "matrix",
        "Landroidx/compose/ui/graphics/Matrix;",
        "inverseTransform-58bKbWc",
        "([F)V",
        "isInLayer",
        "position",
        "Landroidx/compose/ui/geometry/Offset;",
        "isInLayer-k-4lQ0M",
        "(J)Z",
        "mapBounds",
        "rect",
        "Landroidx/compose/ui/geometry/MutableRect;",
        "inverse",
        "mapOffset",
        "point",
        "mapOffset-8S9VItk",
        "(JZ)J",
        "move",
        "Landroidx/compose/ui/unit/IntOffset;",
        "move--gyyYBs",
        "(J)V",
        "resize",
        "size",
        "Landroidx/compose/ui/unit/IntSize;",
        "resize-ozmzZPI",
        "reuseLayer",
        "transform",
        "transform-58bKbWc",
        "triggerRepaint",
        "updateDisplayList",
        "updateLayerProperties",
        "scaleX",
        "",
        "scaleY",
        "alpha",
        "translationX",
        "translationY",
        "shadowElevation",
        "rotationX",
        "rotationY",
        "rotationZ",
        "cameraDistance",
        "shape",
        "Landroidx/compose/ui/graphics/Shape;",
        "clip",
        "renderEffect",
        "Landroidx/compose/ui/graphics/RenderEffect;",
        "ambientShadowColor",
        "Landroidx/compose/ui/graphics/Color;",
        "spotShadowColor",
        "compositingStrategy",
        "Landroidx/compose/ui/graphics/CompositingStrategy;",
        "layoutDirection",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "updateLayerProperties-dDxr-wY",
        "(FFFFFFFFFFJLandroidx/compose/ui/graphics/Shape;ZLandroidx/compose/ui/graphics/RenderEffect;JJILandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)V",
        "Companion",
        "UniqueDrawingIdApi29",
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
.field public static final Companion:Landroidx/compose/ui/platform/RenderNodeLayer$Companion;

.field private static final getMatrix:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/ui/platform/DeviceRenderNode;",
            "Landroid/graphics/Matrix;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final canvasHolder:Landroidx/compose/ui/graphics/CanvasHolder;

.field private drawBlock:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/Canvas;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private drawnWithZ:Z

.field private invalidateParentLayer:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private isDestroyed:Z

.field private isDirty:Z

.field private final matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/ui/platform/LayerMatrixCache<",
            "Landroidx/compose/ui/platform/DeviceRenderNode;",
            ">;"
        }
    .end annotation
.end field

.field private final outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

.field private final ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

.field private final renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

.field private softwareLayerPaint:Landroidx/compose/ui/graphics/Paint;

.field private transformOrigin:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/platform/RenderNodeLayer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/platform/RenderNodeLayer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/platform/RenderNodeLayer;->Companion:Landroidx/compose/ui/platform/RenderNodeLayer$Companion;

    .line 364
    sget-object v0, Landroidx/compose/ui/platform/RenderNodeLayer$Companion$getMatrix$1;->INSTANCE:Landroidx/compose/ui/platform/RenderNodeLayer$Companion$getMatrix$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    sput-object v0, Landroidx/compose/ui/platform/RenderNodeLayer;->getMatrix:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/platform/AndroidComposeView;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/platform/AndroidComposeView;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/Canvas;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ownerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "drawBlock"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "invalidateParentLayer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    iput-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->drawBlock:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->invalidateParentLayer:Lkotlin/jvm/functions/Function0;

    .line 66
    new-instance p2, Landroidx/compose/ui/platform/OutlineResolver;

    invoke-virtual {p1}, Landroidx/compose/ui/platform/AndroidComposeView;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object p3

    invoke-direct {p2, p3}, Landroidx/compose/ui/platform/OutlineResolver;-><init>(Landroidx/compose/ui/unit/Density;)V

    iput-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    .line 76
    new-instance p2, Landroidx/compose/ui/platform/LayerMatrixCache;

    sget-object p3, Landroidx/compose/ui/platform/RenderNodeLayer;->getMatrix:Lkotlin/jvm/functions/Function2;

    invoke-direct {p2, p3}, Landroidx/compose/ui/platform/LayerMatrixCache;-><init>(Lkotlin/jvm/functions/Function2;)V

    iput-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    .line 78
    new-instance p2, Landroidx/compose/ui/graphics/CanvasHolder;

    invoke-direct {p2}, Landroidx/compose/ui/graphics/CanvasHolder;-><init>()V

    iput-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->canvasHolder:Landroidx/compose/ui/graphics/CanvasHolder;

    .line 85
    sget-object p2, Landroidx/compose/ui/graphics/TransformOrigin;->Companion:Landroidx/compose/ui/graphics/TransformOrigin$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/graphics/TransformOrigin$Companion;->getCenter-SzJe1aQ()J

    move-result-wide p2

    iput-wide p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->transformOrigin:J

    .line 88
    new-instance p2, Landroidx/compose/ui/platform/RenderNodeApi29;

    invoke-direct {p2, p1}, Landroidx/compose/ui/platform/RenderNodeApi29;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;)V

    check-cast p2, Landroidx/compose/ui/platform/DeviceRenderNode;

    const/4 p1, 0x1

    .line 91
    invoke-interface {p2, p1}, Landroidx/compose/ui/platform/DeviceRenderNode;->setHasOverlappingRendering(Z)Z

    iput-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    return-void
.end method

.method private final clipRenderNode(Landroidx/compose/ui/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 291
    invoke-interface {v0}, Landroidx/compose/ui/platform/DeviceRenderNode;->getClipToOutline()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-interface {v0}, Landroidx/compose/ui/platform/DeviceRenderNode;->getClipToBounds()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    .line 292
    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/OutlineResolver;->clipToOutline(Landroidx/compose/ui/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method private final setDirty(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->isDirty:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->isDirty:Z

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 63
    check-cast p0, Landroidx/compose/ui/node/OwnedLayer;

    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->notifyLayerIsDirty$ui_release(Landroidx/compose/ui/node/OwnedLayer;Z)V

    :cond_0
    return-void
.end method

.method private final triggerRepaint()V
    .locals 1

    .line 237
    sget-object v0, Landroidx/compose/ui/platform/WrapperRenderNodeLayerHelperMethods;->INSTANCE:Landroidx/compose/ui/platform/WrapperRenderNodeLayerHelperMethods;

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0, p0}, Landroidx/compose/ui/platform/WrapperRenderNodeLayerHelperMethods;->onDescendantInvalidated(Landroidx/compose/ui/platform/AndroidComposeView;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 311
    invoke-interface {v0}, Landroidx/compose/ui/platform/DeviceRenderNode;->getHasDisplayList()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 312
    invoke-interface {v0}, Landroidx/compose/ui/platform/DeviceRenderNode;->discardDisplayList()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->drawBlock:Lkotlin/jvm/functions/Function1;

    iput-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->invalidateParentLayer:Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->isDestroyed:Z

    const/4 v0, 0x0

    .line 317
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/RenderNodeLayer;->setDirty(Z)V

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 318
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->requestClearInvalidObservations()V

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 319
    check-cast p0, Landroidx/compose/ui/node/OwnedLayer;

    invoke-virtual {v0, p0}, Landroidx/compose/ui/platform/AndroidComposeView;->recycle$ui_release(Landroidx/compose/ui/node/OwnedLayer;)Z

    return-void
.end method

.method public drawLayer(Landroidx/compose/ui/graphics/Canvas;)V
    .locals 9

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    invoke-static {p1}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->getNativeCanvas(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;

    move-result-object v1

    .line 245
    invoke-virtual {v1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_2

    .line 246
    invoke-virtual {p0}, Landroidx/compose/ui/platform/RenderNodeLayer;->updateDisplayList()V

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 247
    invoke-interface {v0}, Landroidx/compose/ui/platform/DeviceRenderNode;->getElevation()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    const/4 v7, 0x1

    :cond_0
    iput-boolean v7, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->drawnWithZ:Z

    if-eqz v7, :cond_1

    .line 249
    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->enableZ()V

    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 251
    invoke-interface {v0, v1}, Landroidx/compose/ui/platform/DeviceRenderNode;->drawInto(Landroid/graphics/Canvas;)V

    iget-boolean p0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->drawnWithZ:Z

    if-eqz p0, :cond_6

    .line 253
    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->disableZ()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 256
    invoke-interface {v0}, Landroidx/compose/ui/platform/DeviceRenderNode;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 257
    invoke-interface {v2}, Landroidx/compose/ui/platform/DeviceRenderNode;->getTop()I

    move-result v2

    int-to-float v8, v2

    iget-object v2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 258
    invoke-interface {v2}, Landroidx/compose/ui/platform/DeviceRenderNode;->getRight()I

    move-result v2

    int-to-float v4, v2

    iget-object v2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 259
    invoke-interface {v2}, Landroidx/compose/ui/platform/DeviceRenderNode;->getBottom()I

    move-result v2

    int-to-float v5, v2

    iget-object v2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 262
    invoke-interface {v2}, Landroidx/compose/ui/platform/DeviceRenderNode;->getAlpha()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    iget-object v2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->softwareLayerPaint:Landroidx/compose/ui/graphics/Paint;

    if-nez v2, :cond_3

    .line 263
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->Paint()Landroidx/compose/ui/graphics/Paint;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->softwareLayerPaint:Landroidx/compose/ui/graphics/Paint;

    :cond_3
    iget-object v3, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 264
    invoke-interface {v3}, Landroidx/compose/ui/platform/DeviceRenderNode;->getAlpha()F

    move-result v3

    invoke-interface {v2, v3}, Landroidx/compose/ui/graphics/Paint;->setAlpha(F)V

    .line 270
    invoke-interface {v2}, Landroidx/compose/ui/graphics/Paint;->asFrameworkPaint()Landroid/graphics/Paint;

    move-result-object v6

    move v2, v0

    move v3, v8

    .line 265
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    goto :goto_0

    .line 273
    :cond_4
    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 277
    :goto_0
    invoke-interface {p1, v0, v8}, Landroidx/compose/ui/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    iget-object v1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 278
    invoke-virtual {v0, v1}, Landroidx/compose/ui/platform/LayerMatrixCache;->calculateMatrix-GrdbGEg(Ljava/lang/Object;)[F

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/compose/ui/graphics/Canvas;->concat-58bKbWc([F)V

    .line 279
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/RenderNodeLayer;->clipRenderNode(Landroidx/compose/ui/graphics/Canvas;)V

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->drawBlock:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_5

    .line 280
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    :cond_5
    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 282
    invoke-direct {p0, v7}, Landroidx/compose/ui/platform/RenderNodeLayer;->setDirty(Z)V

    :cond_6
    :goto_1
    return-void
.end method

.method public getLayerId()J
    .locals 2

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 94
    invoke-interface {p0}, Landroidx/compose/ui/platform/DeviceRenderNode;->getUniqueId()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getOwnerView()Landroidx/compose/ui/platform/AndroidComposeView;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    return-object p0
.end method

.method public getOwnerViewId()J
    .locals 2

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 98
    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Landroidx/compose/ui/platform/RenderNodeLayer$UniqueDrawingIdApi29;->getUniqueDrawingId(Landroid/view/View;)J

    move-result-wide v0

    return-wide v0
.end method

.method public invalidate()V
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->isDirty:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->isDestroyed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 224
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->invalidate()V

    const/4 v0, 0x1

    .line 225
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/RenderNodeLayer;->setDirty(Z)V

    :cond_0
    return-void
.end method

.method public inverseTransform-58bKbWc([F)V
    .locals 1

    const-string v0, "matrix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 357
    invoke-virtual {v0, p0}, Landroidx/compose/ui/platform/LayerMatrixCache;->calculateInverseMatrix-bWbORWo(Ljava/lang/Object;)[F

    move-result-object p0

    if-eqz p0, :cond_0

    .line 359
    invoke-static {p1, p0}, Landroidx/compose/ui/graphics/Matrix;->timesAssign-58bKbWc([F[F)V

    :cond_0
    return-void
.end method

.method public isInLayer-k-4lQ0M(J)Z
    .locals 4

    .line 173
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    .line 174
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v1

    iget-object v2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 175
    invoke-interface {v2}, Landroidx/compose/ui/platform/DeviceRenderNode;->getClipToBounds()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/4 p1, 0x0

    cmpg-float p2, p1, v0

    if-gtz p2, :cond_0

    iget-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 176
    invoke-interface {p2}, Landroidx/compose/ui/platform/DeviceRenderNode;->getWidth()I

    move-result p2

    int-to-float p2, p2

    cmpg-float p2, v0, p2

    if-gez p2, :cond_0

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_0

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-interface {p0}, Landroidx/compose/ui/platform/DeviceRenderNode;->getHeight()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, v1, p0

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 179
    invoke-interface {v0}, Landroidx/compose/ui/platform/DeviceRenderNode;->getClipToOutline()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    .line 180
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/platform/OutlineResolver;->isInOutline-k-4lQ0M(J)Z

    move-result p0

    return p0

    :cond_2
    return v3
.end method

.method public mapBounds(Landroidx/compose/ui/geometry/MutableRect;Z)V
    .locals 1

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 332
    invoke-virtual {p2, p0}, Landroidx/compose/ui/platform/LayerMatrixCache;->calculateInverseMatrix-bWbORWo(Ljava/lang/Object;)[F

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 334
    invoke-virtual {p1, p0, p0, p0, p0}, Landroidx/compose/ui/geometry/MutableRect;->set(FFFF)V

    goto :goto_0

    .line 336
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Matrix;->map-impl([FLandroidx/compose/ui/geometry/MutableRect;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 339
    invoke-virtual {p2, p0}, Landroidx/compose/ui/platform/LayerMatrixCache;->calculateMatrix-GrdbGEg(Ljava/lang/Object;)[F

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Matrix;->map-impl([FLandroidx/compose/ui/geometry/MutableRect;)V

    :goto_0
    return-void
.end method

.method public mapOffset-8S9VItk(JZ)J
    .locals 0

    if-eqz p3, :cond_1

    iget-object p3, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 324
    invoke-virtual {p3, p0}, Landroidx/compose/ui/platform/LayerMatrixCache;->calculateInverseMatrix-bWbORWo(Ljava/lang/Object;)[F

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/Matrix;->map-MK-Hz9U([FJ)J

    move-result-wide p0

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->getInfinite-F1C5BW0()J

    move-result-wide p0

    goto :goto_0

    :cond_1
    iget-object p3, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 326
    invoke-virtual {p3, p0}, Landroidx/compose/ui/platform/LayerMatrixCache;->calculateMatrix-GrdbGEg(Ljava/lang/Object;)[F

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/Matrix;->map-MK-Hz9U([FJ)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public move--gyyYBs(J)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 206
    invoke-interface {v0}, Landroidx/compose/ui/platform/DeviceRenderNode;->getLeft()I

    move-result v0

    iget-object v1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 207
    invoke-interface {v1}, Landroidx/compose/ui/platform/DeviceRenderNode;->getTop()I

    move-result v1

    .line 208
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v2

    .line 209
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p1

    if-ne v0, v2, :cond_0

    if-eq v1, p1, :cond_3

    :cond_0
    if-eq v0, v2, :cond_1

    iget-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    sub-int/2addr v2, v0

    .line 212
    invoke-interface {p2, v2}, Landroidx/compose/ui/platform/DeviceRenderNode;->offsetLeftAndRight(I)V

    :cond_1
    if-eq v1, p1, :cond_2

    iget-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    sub-int/2addr p1, v1

    .line 215
    invoke-interface {p2, p1}, Landroidx/compose/ui/platform/DeviceRenderNode;->offsetTopAndBottom(I)V

    .line 217
    :cond_2
    invoke-direct {p0}, Landroidx/compose/ui/platform/RenderNodeLayer;->triggerRepaint()V

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    .line 218
    invoke-virtual {p0}, Landroidx/compose/ui/platform/LayerMatrixCache;->invalidate()V

    :cond_3
    return-void
.end method

.method public resize-ozmzZPI(J)V
    .locals 6

    .line 187
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result v0

    .line 188
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result p1

    iget-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    iget-wide v1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->transformOrigin:J

    .line 189
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/TransformOrigin;->getPivotFractionX-impl(J)F

    move-result v1

    int-to-float v2, v0

    mul-float/2addr v1, v2

    invoke-interface {p2, v1}, Landroidx/compose/ui/platform/DeviceRenderNode;->setPivotX(F)V

    iget-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    iget-wide v3, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->transformOrigin:J

    .line 190
    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/TransformOrigin;->getPivotFractionY-impl(J)F

    move-result v1

    int-to-float v3, p1

    mul-float/2addr v1, v3

    invoke-interface {p2, v1}, Landroidx/compose/ui/platform/DeviceRenderNode;->setPivotY(F)V

    iget-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 192
    invoke-interface {p2}, Landroidx/compose/ui/platform/DeviceRenderNode;->getLeft()I

    move-result v1

    iget-object v4, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 193
    invoke-interface {v4}, Landroidx/compose/ui/platform/DeviceRenderNode;->getTop()I

    move-result v4

    iget-object v5, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 194
    invoke-interface {v5}, Landroidx/compose/ui/platform/DeviceRenderNode;->getLeft()I

    move-result v5

    add-int/2addr v5, v0

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 195
    invoke-interface {v0}, Landroidx/compose/ui/platform/DeviceRenderNode;->getTop()I

    move-result v0

    add-int/2addr v0, p1

    .line 191
    invoke-interface {p2, v1, v4, v5, v0}, Landroidx/compose/ui/platform/DeviceRenderNode;->setPosition(IIII)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    .line 198
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/platform/OutlineResolver;->update-uvyYCjk(J)V

    iget-object p1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    iget-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    .line 199
    invoke-virtual {p2}, Landroidx/compose/ui/platform/OutlineResolver;->getOutline()Landroid/graphics/Outline;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/compose/ui/platform/DeviceRenderNode;->setOutline(Landroid/graphics/Outline;)V

    .line 200
    invoke-virtual {p0}, Landroidx/compose/ui/platform/RenderNodeLayer;->invalidate()V

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    .line 201
    invoke-virtual {p0}, Landroidx/compose/ui/platform/LayerMatrixCache;->invalidate()V

    :cond_0
    return-void
.end method

.method public reuseLayer(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/Canvas;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "drawBlock"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "invalidateParentLayer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 344
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/RenderNodeLayer;->setDirty(Z)V

    iput-boolean v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->isDestroyed:Z

    iput-boolean v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->drawnWithZ:Z

    .line 347
    sget-object v0, Landroidx/compose/ui/graphics/TransformOrigin;->Companion:Landroidx/compose/ui/graphics/TransformOrigin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/TransformOrigin$Companion;->getCenter-SzJe1aQ()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->transformOrigin:J

    iput-object p1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->drawBlock:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->invalidateParentLayer:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public transform-58bKbWc([F)V
    .locals 1

    const-string v0, "matrix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 353
    invoke-virtual {v0, p0}, Landroidx/compose/ui/platform/LayerMatrixCache;->calculateMatrix-GrdbGEg(Ljava/lang/Object;)[F

    move-result-object p0

    invoke-static {p1, p0}, Landroidx/compose/ui/graphics/Matrix;->timesAssign-58bKbWc([F[F)V

    return-void
.end method

.method public updateDisplayList()V
    .locals 3

    iget-boolean v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->isDirty:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 297
    invoke-interface {v0}, Landroidx/compose/ui/platform/DeviceRenderNode;->getHasDisplayList()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 298
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/RenderNodeLayer;->setDirty(Z)V

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 299
    invoke-interface {v0}, Landroidx/compose/ui/platform/DeviceRenderNode;->getClipToOutline()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/OutlineResolver;->getOutlineClipSupported()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    .line 300
    invoke-virtual {v0}, Landroidx/compose/ui/platform/OutlineResolver;->getClipPath()Landroidx/compose/ui/graphics/Path;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->drawBlock:Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_2

    iget-object v2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->canvasHolder:Landroidx/compose/ui/graphics/CanvasHolder;

    .line 305
    invoke-interface {v2, p0, v0, v1}, Landroidx/compose/ui/platform/DeviceRenderNode;->record(Landroidx/compose/ui/graphics/CanvasHolder;Landroidx/compose/ui/graphics/Path;Lkotlin/jvm/functions/Function1;)V

    :cond_2
    return-void
.end method

.method public updateLayerProperties-dDxr-wY(FFFFFFFFFFJLandroidx/compose/ui/graphics/Shape;ZLandroidx/compose/ui/graphics/RenderEffect;JJILandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)V
    .locals 12

    move-object v0, p0

    move-object/from16 v1, p13

    const-string/jumbo v2, "shape"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "layoutDirection"

    move-object/from16 v3, p21

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "density"

    move-object/from16 v4, p22

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-wide/from16 v5, p11

    iput-wide v5, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->transformOrigin:J

    iget-object v2, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 132
    invoke-interface {v2}, Landroidx/compose/ui/platform/DeviceRenderNode;->getClipToOutline()Z

    move-result v2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    invoke-virtual {v2}, Landroidx/compose/ui/platform/OutlineResolver;->getOutlineClipSupported()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v7

    goto :goto_0

    :cond_0
    move v2, v8

    :goto_0
    iget-object v9, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    move v10, p1

    .line 133
    invoke-interface {v9, p1}, Landroidx/compose/ui/platform/DeviceRenderNode;->setScaleX(F)V

    iget-object v9, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    move v10, p2

    .line 134
    invoke-interface {v9, p2}, Landroidx/compose/ui/platform/DeviceRenderNode;->setScaleY(F)V

    iget-object v9, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    move v10, p3

    .line 135
    invoke-interface {v9, p3}, Landroidx/compose/ui/platform/DeviceRenderNode;->setAlpha(F)V

    iget-object v9, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    move/from16 v10, p4

    .line 136
    invoke-interface {v9, v10}, Landroidx/compose/ui/platform/DeviceRenderNode;->setTranslationX(F)V

    iget-object v9, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    move/from16 v10, p5

    .line 137
    invoke-interface {v9, v10}, Landroidx/compose/ui/platform/DeviceRenderNode;->setTranslationY(F)V

    iget-object v9, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    move/from16 v10, p6

    .line 138
    invoke-interface {v9, v10}, Landroidx/compose/ui/platform/DeviceRenderNode;->setElevation(F)V

    iget-object v9, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 139
    invoke-static/range {p16 .. p17}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    move-result v10

    invoke-interface {v9, v10}, Landroidx/compose/ui/platform/DeviceRenderNode;->setAmbientShadowColor(I)V

    iget-object v9, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 140
    invoke-static/range {p18 .. p19}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    move-result v10

    invoke-interface {v9, v10}, Landroidx/compose/ui/platform/DeviceRenderNode;->setSpotShadowColor(I)V

    iget-object v9, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    move/from16 v10, p9

    .line 141
    invoke-interface {v9, v10}, Landroidx/compose/ui/platform/DeviceRenderNode;->setRotationZ(F)V

    iget-object v9, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    move/from16 v10, p7

    .line 142
    invoke-interface {v9, v10}, Landroidx/compose/ui/platform/DeviceRenderNode;->setRotationX(F)V

    iget-object v9, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    move/from16 v10, p8

    .line 143
    invoke-interface {v9, v10}, Landroidx/compose/ui/platform/DeviceRenderNode;->setRotationY(F)V

    iget-object v9, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    move/from16 v10, p10

    .line 144
    invoke-interface {v9, v10}, Landroidx/compose/ui/platform/DeviceRenderNode;->setCameraDistance(F)V

    iget-object v9, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 145
    invoke-static/range {p11 .. p12}, Landroidx/compose/ui/graphics/TransformOrigin;->getPivotFractionX-impl(J)F

    move-result v10

    iget-object v11, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-interface {v11}, Landroidx/compose/ui/platform/DeviceRenderNode;->getWidth()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v10, v11

    invoke-interface {v9, v10}, Landroidx/compose/ui/platform/DeviceRenderNode;->setPivotX(F)V

    iget-object v9, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 146
    invoke-static/range {p11 .. p12}, Landroidx/compose/ui/graphics/TransformOrigin;->getPivotFractionY-impl(J)F

    move-result v5

    iget-object v6, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-interface {v6}, Landroidx/compose/ui/platform/DeviceRenderNode;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    invoke-interface {v9, v5}, Landroidx/compose/ui/platform/DeviceRenderNode;->setPivotY(F)V

    iget-object v5, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    if-eqz p14, :cond_1

    .line 147
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->getRectangleShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v6

    if-eq v1, v6, :cond_1

    move v6, v7

    goto :goto_1

    :cond_1
    move v6, v8

    :goto_1
    invoke-interface {v5, v6}, Landroidx/compose/ui/platform/DeviceRenderNode;->setClipToOutline(Z)V

    iget-object v5, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    if-eqz p14, :cond_2

    .line 148
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->getRectangleShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v6

    if-ne v1, v6, :cond_2

    move v6, v7

    goto :goto_2

    :cond_2
    move v6, v8

    :goto_2
    invoke-interface {v5, v6}, Landroidx/compose/ui/platform/DeviceRenderNode;->setClipToBounds(Z)V

    iget-object v5, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    move-object/from16 v6, p15

    .line 149
    invoke-interface {v5, v6}, Landroidx/compose/ui/platform/DeviceRenderNode;->setRenderEffect(Landroidx/compose/ui/graphics/RenderEffect;)V

    iget-object v5, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    move/from16 v6, p20

    .line 150
    invoke-interface {v5, v6}, Landroidx/compose/ui/platform/DeviceRenderNode;->setCompositingStrategy-aDBOjCE(I)V

    iget-object v5, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    iget-object v6, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 153
    invoke-interface {v6}, Landroidx/compose/ui/platform/DeviceRenderNode;->getAlpha()F

    move-result v6

    iget-object v9, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 154
    invoke-interface {v9}, Landroidx/compose/ui/platform/DeviceRenderNode;->getClipToOutline()Z

    move-result v9

    iget-object v10, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 155
    invoke-interface {v10}, Landroidx/compose/ui/platform/DeviceRenderNode;->getElevation()F

    move-result v10

    move-object p1, v5

    move-object/from16 p2, p13

    move p3, v6

    move/from16 p4, v9

    move/from16 p5, v10

    move-object/from16 p6, p21

    move-object/from16 p7, p22

    .line 151
    invoke-virtual/range {p1 .. p7}, Landroidx/compose/ui/platform/OutlineResolver;->update(Landroidx/compose/ui/graphics/Shape;FZFLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Z

    move-result v1

    iget-object v3, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    iget-object v4, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    .line 159
    invoke-virtual {v4}, Landroidx/compose/ui/platform/OutlineResolver;->getOutline()Landroid/graphics/Outline;

    move-result-object v4

    invoke-interface {v3, v4}, Landroidx/compose/ui/platform/DeviceRenderNode;->setOutline(Landroid/graphics/Outline;)V

    iget-object v3, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 160
    invoke-interface {v3}, Landroidx/compose/ui/platform/DeviceRenderNode;->getClipToOutline()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    invoke-virtual {v3}, Landroidx/compose/ui/platform/OutlineResolver;->getOutlineClipSupported()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    move v7, v8

    :goto_3
    if-ne v2, v7, :cond_5

    if-eqz v7, :cond_4

    if-eqz v1, :cond_4

    goto :goto_4

    .line 164
    :cond_4
    invoke-direct {p0}, Landroidx/compose/ui/platform/RenderNodeLayer;->triggerRepaint()V

    goto :goto_5

    .line 162
    :cond_5
    :goto_4
    invoke-virtual {p0}, Landroidx/compose/ui/platform/RenderNodeLayer;->invalidate()V

    :goto_5
    iget-boolean v1, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->drawnWithZ:Z

    if-nez v1, :cond_6

    iget-object v1, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 166
    invoke-interface {v1}, Landroidx/compose/ui/platform/DeviceRenderNode;->getElevation()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    iget-object v1, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->invalidateParentLayer:Lkotlin/jvm/functions/Function0;

    if-eqz v1, :cond_6

    .line 167
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_6
    iget-object v0, v0, Landroidx/compose/ui/platform/RenderNodeLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    .line 169
    invoke-virtual {v0}, Landroidx/compose/ui/platform/LayerMatrixCache;->invalidate()V

    return-void
.end method
