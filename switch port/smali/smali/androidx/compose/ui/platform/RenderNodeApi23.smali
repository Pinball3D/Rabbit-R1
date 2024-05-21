.class public final Landroidx/compose/ui/platform/RenderNodeApi23;
.super Ljava/lang/Object;
.source "RenderNodeApi23.android.kt"

# interfaces
.implements Landroidx/compose/ui/platform/DeviceRenderNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/platform/RenderNodeApi23$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRenderNodeApi23.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RenderNodeApi23.android.kt\nandroidx/compose/ui/platform/RenderNodeApi23\n+ 2 AndroidCanvas.android.kt\nandroidx/compose/ui/graphics/CanvasHolder\n*L\n1#1,417:1\n47#2,5:418\n*S KotlinDebug\n*F\n+ 1 RenderNodeApi23.android.kt\nandroidx/compose/ui/platform/RenderNodeApi23\n*L\n275#1:418,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0018\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u001f\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u0000 \u0086\u00012\u00020\u0001:\u0002\u0086\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010e\u001a\u00020fH\u0016J\u0008\u0010g\u001a\u00020fH\u0002J\u0010\u0010h\u001a\u00020f2\u0006\u0010i\u001a\u00020jH\u0016J\u0008\u0010k\u001a\u00020lH\u0016J\u0010\u0010m\u001a\u00020f2\u0006\u0010n\u001a\u00020oH\u0016J\r\u0010p\u001a\u00020\u000cH\u0000\u00a2\u0006\u0002\u0008qJ\u0010\u0010r\u001a\u00020f2\u0006\u0010n\u001a\u00020oH\u0016J\r\u0010s\u001a\u00020\u0018H\u0000\u00a2\u0006\u0002\u0008tJ\u0010\u0010u\u001a\u00020f2\u0006\u0010v\u001a\u00020\u000cH\u0016J\u0010\u0010w\u001a\u00020f2\u0006\u0010v\u001a\u00020\u000cH\u0016J.\u0010x\u001a\u00020f2\u0006\u0010y\u001a\u00020z2\u0008\u0010{\u001a\u0004\u0018\u00010|2\u0012\u0010}\u001a\u000e\u0012\u0004\u0012\u00020\u007f\u0012\u0004\u0012\u00020f0~H\u0016J\u0011\u0010\u0080\u0001\u001a\u00020\u00182\u0006\u0010s\u001a\u00020\u0018H\u0016J\u0015\u0010\u0081\u0001\u001a\u00020f2\n\u0010\u0082\u0001\u001a\u0005\u0018\u00010\u0083\u0001H\u0016J)\u0010\u0084\u0001\u001a\u00020\u00182\u0006\u0010.\u001a\u00020\u000c2\u0006\u0010V\u001a\u00020\u000c2\u0006\u0010A\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u000cH\u0016J\u0011\u0010\u0085\u0001\u001a\u00020f2\u0006\u0010?\u001a\u00020@H\u0002R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR$\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u000c8V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u000cX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000f\"\u0004\u0008\u0014\u0010\u0011R$\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0016\u0010\t\"\u0004\u0008\u0017\u0010\u000bR$\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0005\u001a\u00020\u0018@VX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR$\u0010\u001e\u001a\u00020\u00182\u0006\u0010\u0005\u001a\u00020\u00188V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001f\u0010\u001b\"\u0004\u0008 \u0010\u001dR-\u0010\"\u001a\u00020!2\u0006\u0010\u0005\u001a\u00020!8V@VX\u0096\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u000c\u001a\u0004\u0008#\u0010\u000f\"\u0004\u0008$\u0010\u0011R$\u0010%\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008&\u0010\t\"\u0004\u0008\'\u0010\u000bR\u0014\u0010(\u001a\u00020\u00188VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010\u001bR\u0014\u0010*\u001a\u00020\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010\u000fR\u0019\u0010,\u001a\u00020!X\u0082\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\n\u0002\u0010-R\u001a\u0010.\u001a\u00020\u000cX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u0010\u000f\"\u0004\u00080\u0010\u0011R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u00102R$\u00103\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u00084\u0010\t\"\u0004\u00085\u0010\u000bR$\u00106\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u00087\u0010\t\"\u0004\u00088\u0010\u000bR\u001c\u00109\u001a\u0004\u0018\u00010:X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u0010<\"\u0004\u0008=\u0010>R\u000e\u0010?\u001a\u00020@X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010A\u001a\u00020\u000cX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008B\u0010\u000f\"\u0004\u0008C\u0010\u0011R$\u0010D\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008E\u0010\t\"\u0004\u0008F\u0010\u000bR$\u0010G\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008H\u0010\t\"\u0004\u0008I\u0010\u000bR$\u0010J\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008K\u0010\t\"\u0004\u0008L\u0010\u000bR$\u0010M\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008N\u0010\t\"\u0004\u0008O\u0010\u000bR$\u0010P\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008Q\u0010\t\"\u0004\u0008R\u0010\u000bR$\u0010S\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u000c8V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008T\u0010\u000f\"\u0004\u0008U\u0010\u0011R\u001a\u0010V\u001a\u00020\u000cX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008W\u0010\u000f\"\u0004\u0008X\u0010\u0011R$\u0010Y\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008Z\u0010\t\"\u0004\u0008[\u0010\u000bR$\u0010\\\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008]\u0010\t\"\u0004\u0008^\u0010\u000bR\u0014\u0010_\u001a\u00020`8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008a\u0010bR\u0014\u0010c\u001a\u00020\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008d\u0010\u000f\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u0087\u0001"
    }
    d2 = {
        "Landroidx/compose/ui/platform/RenderNodeApi23;",
        "Landroidx/compose/ui/platform/DeviceRenderNode;",
        "ownerView",
        "Landroidx/compose/ui/platform/AndroidComposeView;",
        "(Landroidx/compose/ui/platform/AndroidComposeView;)V",
        "value",
        "",
        "alpha",
        "getAlpha",
        "()F",
        "setAlpha",
        "(F)V",
        "",
        "ambientShadowColor",
        "getAmbientShadowColor",
        "()I",
        "setAmbientShadowColor",
        "(I)V",
        "bottom",
        "getBottom",
        "setBottom",
        "cameraDistance",
        "getCameraDistance",
        "setCameraDistance",
        "",
        "clipToBounds",
        "getClipToBounds",
        "()Z",
        "setClipToBounds",
        "(Z)V",
        "clipToOutline",
        "getClipToOutline",
        "setClipToOutline",
        "Landroidx/compose/ui/graphics/CompositingStrategy;",
        "compositingStrategy",
        "getCompositingStrategy--NrFUSI",
        "setCompositingStrategy-aDBOjCE",
        "elevation",
        "getElevation",
        "setElevation",
        "hasDisplayList",
        "getHasDisplayList",
        "height",
        "getHeight",
        "internalCompositingStrategy",
        "I",
        "left",
        "getLeft",
        "setLeft",
        "getOwnerView",
        "()Landroidx/compose/ui/platform/AndroidComposeView;",
        "pivotX",
        "getPivotX",
        "setPivotX",
        "pivotY",
        "getPivotY",
        "setPivotY",
        "renderEffect",
        "Landroidx/compose/ui/graphics/RenderEffect;",
        "getRenderEffect",
        "()Landroidx/compose/ui/graphics/RenderEffect;",
        "setRenderEffect",
        "(Landroidx/compose/ui/graphics/RenderEffect;)V",
        "renderNode",
        "Landroid/view/RenderNode;",
        "right",
        "getRight",
        "setRight",
        "rotationX",
        "getRotationX",
        "setRotationX",
        "rotationY",
        "getRotationY",
        "setRotationY",
        "rotationZ",
        "getRotationZ",
        "setRotationZ",
        "scaleX",
        "getScaleX",
        "setScaleX",
        "scaleY",
        "getScaleY",
        "setScaleY",
        "spotShadowColor",
        "getSpotShadowColor",
        "setSpotShadowColor",
        "top",
        "getTop",
        "setTop",
        "translationX",
        "getTranslationX",
        "setTranslationX",
        "translationY",
        "getTranslationY",
        "setTranslationY",
        "uniqueId",
        "",
        "getUniqueId",
        "()J",
        "width",
        "getWidth",
        "discardDisplayList",
        "",
        "discardDisplayListInternal",
        "drawInto",
        "canvas",
        "Landroid/graphics/Canvas;",
        "dumpRenderNodeData",
        "Landroidx/compose/ui/platform/DeviceRenderNodeData;",
        "getInverseMatrix",
        "matrix",
        "Landroid/graphics/Matrix;",
        "getLayerType",
        "getLayerType$ui_release",
        "getMatrix",
        "hasOverlappingRendering",
        "hasOverlappingRendering$ui_release",
        "offsetLeftAndRight",
        "offset",
        "offsetTopAndBottom",
        "record",
        "canvasHolder",
        "Landroidx/compose/ui/graphics/CanvasHolder;",
        "clipPath",
        "Landroidx/compose/ui/graphics/Path;",
        "drawBlock",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/graphics/Canvas;",
        "setHasOverlappingRendering",
        "setOutline",
        "outline",
        "Landroid/graphics/Outline;",
        "setPosition",
        "verifyShadowColorProperties",
        "Companion",
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
.field public static final Companion:Landroidx/compose/ui/platform/RenderNodeApi23$Companion;

.field private static needToValidateAccess:Z

.field private static testFailCreateRenderNode:Z


# instance fields
.field private bottom:I

.field private clipToBounds:Z

.field private internalCompositingStrategy:I

.field private left:I

.field private final ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

.field private renderEffect:Landroidx/compose/ui/graphics/RenderEffect;

.field private final renderNode:Landroid/view/RenderNode;

.field private right:I

.field private top:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/platform/RenderNodeApi23$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/platform/RenderNodeApi23$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/platform/RenderNodeApi23;->Companion:Landroidx/compose/ui/platform/RenderNodeApi23$Companion;

    const/4 v0, 0x1

    sput-boolean v0, Landroidx/compose/ui/platform/RenderNodeApi23;->needToValidateAccess:Z

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/platform/AndroidComposeView;)V
    .locals 2

    const-string v0, "ownerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    const-string v0, "Compose"

    .line 40
    check-cast p1, Landroid/view/View;

    invoke-static {v0, p1}, Landroid/view/RenderNode;->create(Ljava/lang/String;Landroid/view/View;)Landroid/view/RenderNode;

    move-result-object p1

    const-string v0, "create(\"Compose\", ownerView)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    .line 42
    sget-object v0, Landroidx/compose/ui/graphics/CompositingStrategy;->Companion:Landroidx/compose/ui/graphics/CompositingStrategy$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/CompositingStrategy$Companion;->getAuto--NrFUSI()I

    move-result v0

    iput v0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->internalCompositingStrategy:I

    sget-boolean v0, Landroidx/compose/ui/platform/RenderNodeApi23;->needToValidateAccess:Z

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p1}, Landroid/view/RenderNode;->getScaleX()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/RenderNode;->setScaleX(F)Z

    .line 56
    invoke-virtual {p1}, Landroid/view/RenderNode;->getScaleY()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/RenderNode;->setScaleY(F)Z

    .line 57
    invoke-virtual {p1}, Landroid/view/RenderNode;->getTranslationX()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/RenderNode;->setTranslationX(F)Z

    .line 58
    invoke-virtual {p1}, Landroid/view/RenderNode;->getTranslationY()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/RenderNode;->setTranslationY(F)Z

    .line 59
    invoke-virtual {p1}, Landroid/view/RenderNode;->getElevation()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/RenderNode;->setElevation(F)Z

    .line 60
    invoke-virtual {p1}, Landroid/view/RenderNode;->getRotation()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/RenderNode;->setRotation(F)Z

    .line 61
    invoke-virtual {p1}, Landroid/view/RenderNode;->getRotationX()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/RenderNode;->setRotationX(F)Z

    .line 62
    invoke-virtual {p1}, Landroid/view/RenderNode;->getRotationY()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/RenderNode;->setRotationY(F)Z

    .line 63
    invoke-virtual {p1}, Landroid/view/RenderNode;->getCameraDistance()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/RenderNode;->setCameraDistance(F)Z

    .line 64
    invoke-virtual {p1}, Landroid/view/RenderNode;->getPivotX()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/RenderNode;->setPivotX(F)Z

    .line 65
    invoke-virtual {p1}, Landroid/view/RenderNode;->getPivotY()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/RenderNode;->setPivotY(F)Z

    .line 66
    invoke-virtual {p1}, Landroid/view/RenderNode;->getClipToOutline()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/RenderNode;->setClipToOutline(Z)Z

    const/4 v0, 0x0

    .line 67
    invoke-virtual {p1, v0}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    .line 68
    invoke-virtual {p1}, Landroid/view/RenderNode;->getAlpha()F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/RenderNode;->setAlpha(F)Z

    .line 69
    invoke-virtual {p1}, Landroid/view/RenderNode;->isValid()Z

    .line 70
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 71
    invoke-virtual {p1, v0}, Landroid/view/RenderNode;->offsetLeftAndRight(I)Z

    .line 72
    invoke-virtual {p1, v0}, Landroid/view/RenderNode;->offsetTopAndBottom(I)Z

    .line 73
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/RenderNodeApi23;->verifyShadowColorProperties(Landroid/view/RenderNode;)V

    .line 74
    invoke-direct {p0}, Landroidx/compose/ui/platform/RenderNodeApi23;->discardDisplayListInternal()V

    .line 75
    invoke-virtual {p1, v0}, Landroid/view/RenderNode;->setLayerType(I)Z

    .line 76
    invoke-virtual {p1}, Landroid/view/RenderNode;->hasOverlappingRendering()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/RenderNode;->setHasOverlappingRendering(Z)Z

    sput-boolean v0, Landroidx/compose/ui/platform/RenderNodeApi23;->needToValidateAccess:Z

    :cond_0
    sget-boolean p0, Landroidx/compose/ui/platform/RenderNodeApi23;->testFailCreateRenderNode:Z

    if-nez p0, :cond_1

    return-void

    .line 80
    :cond_1
    new-instance p0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {p0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    throw p0
.end method

.method public static final synthetic access$getTestFailCreateRenderNode$cp()Z
    .locals 1

    sget-boolean v0, Landroidx/compose/ui/platform/RenderNodeApi23;->testFailCreateRenderNode:Z

    return v0
.end method

.method public static final synthetic access$setTestFailCreateRenderNode$cp(Z)V
    .locals 0

    sput-boolean p0, Landroidx/compose/ui/platform/RenderNodeApi23;->testFailCreateRenderNode:Z

    return-void
.end method

.method private final discardDisplayListInternal()V
    .locals 1

    .line 345
    sget-object v0, Landroidx/compose/ui/platform/RenderNodeVerificationHelper24;->INSTANCE:Landroidx/compose/ui/platform/RenderNodeVerificationHelper24;

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    invoke-virtual {v0, p0}, Landroidx/compose/ui/platform/RenderNodeVerificationHelper24;->discardDisplayList(Landroid/view/RenderNode;)V

    return-void
.end method

.method private final verifyShadowColorProperties(Landroid/view/RenderNode;)V
    .locals 1

    .line 353
    sget-object p0, Landroidx/compose/ui/platform/RenderNodeVerificationHelper28;->INSTANCE:Landroidx/compose/ui/platform/RenderNodeVerificationHelper28;

    .line 355
    sget-object v0, Landroidx/compose/ui/platform/RenderNodeVerificationHelper28;->INSTANCE:Landroidx/compose/ui/platform/RenderNodeVerificationHelper28;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/platform/RenderNodeVerificationHelper28;->getAmbientShadowColor(Landroid/view/RenderNode;)I

    move-result v0

    .line 353
    invoke-virtual {p0, p1, v0}, Landroidx/compose/ui/platform/RenderNodeVerificationHelper28;->setAmbientShadowColor(Landroid/view/RenderNode;I)V

    .line 357
    sget-object p0, Landroidx/compose/ui/platform/RenderNodeVerificationHelper28;->INSTANCE:Landroidx/compose/ui/platform/RenderNodeVerificationHelper28;

    .line 359
    sget-object v0, Landroidx/compose/ui/platform/RenderNodeVerificationHelper28;->INSTANCE:Landroidx/compose/ui/platform/RenderNodeVerificationHelper28;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/platform/RenderNodeVerificationHelper28;->getSpotShadowColor(Landroid/view/RenderNode;)I

    move-result v0

    .line 357
    invoke-virtual {p0, p1, v0}, Landroidx/compose/ui/platform/RenderNodeVerificationHelper28;->setSpotShadowColor(Landroid/view/RenderNode;I)V

    return-void
.end method


# virtual methods
.method public discardDisplayList()V
    .locals 0

    .line 336
    invoke-direct {p0}, Landroidx/compose/ui/platform/RenderNodeApi23;->discardDisplayListInternal()V

    return-void
.end method

.method public drawInto(Landroid/graphics/Canvas;)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    check-cast p1, Landroid/view/DisplayListCanvas;

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    invoke-virtual {p1, p0}, Landroid/view/DisplayListCanvas;->drawRenderNode(Landroid/view/RenderNode;)V

    return-void
.end method

.method public dumpRenderNodeData()Landroidx/compose/ui/platform/DeviceRenderNodeData;
    .locals 30

    move-object/from16 v0, p0

    .line 304
    new-instance v29, Landroidx/compose/ui/platform/DeviceRenderNodeData;

    move-object/from16 v1, v29

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, v0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    .line 313
    invoke-virtual {v10}, Landroid/view/RenderNode;->getScaleX()F

    move-result v10

    iget-object v11, v0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    .line 314
    invoke-virtual {v11}, Landroid/view/RenderNode;->getScaleY()F

    move-result v11

    iget-object v12, v0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    .line 315
    invoke-virtual {v12}, Landroid/view/RenderNode;->getTranslationX()F

    move-result v12

    iget-object v13, v0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    .line 316
    invoke-virtual {v13}, Landroid/view/RenderNode;->getTranslationY()F

    move-result v13

    iget-object v14, v0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    .line 317
    invoke-virtual {v14}, Landroid/view/RenderNode;->getElevation()F

    move-result v14

    .line 318
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/platform/RenderNodeApi23;->getAmbientShadowColor()I

    move-result v15

    .line 319
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/platform/RenderNodeApi23;->getSpotShadowColor()I

    move-result v16

    iget-object v2, v0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    .line 320
    invoke-virtual {v2}, Landroid/view/RenderNode;->getRotation()F

    move-result v17

    iget-object v2, v0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    .line 321
    invoke-virtual {v2}, Landroid/view/RenderNode;->getRotationX()F

    move-result v18

    iget-object v2, v0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    .line 322
    invoke-virtual {v2}, Landroid/view/RenderNode;->getRotationY()F

    move-result v19

    iget-object v2, v0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    .line 323
    invoke-virtual {v2}, Landroid/view/RenderNode;->getCameraDistance()F

    move-result v20

    iget-object v2, v0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    .line 324
    invoke-virtual {v2}, Landroid/view/RenderNode;->getPivotX()F

    move-result v21

    iget-object v2, v0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    .line 325
    invoke-virtual {v2}, Landroid/view/RenderNode;->getPivotY()F

    move-result v22

    iget-object v2, v0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    .line 326
    invoke-virtual {v2}, Landroid/view/RenderNode;->getClipToOutline()Z

    move-result v23

    .line 329
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/platform/RenderNodeApi23;->getClipToBounds()Z

    move-result v24

    iget-object v2, v0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    .line 330
    invoke-virtual {v2}, Landroid/view/RenderNode;->getAlpha()F

    move-result v25

    .line 331
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/platform/RenderNodeApi23;->getRenderEffect()Landroidx/compose/ui/graphics/RenderEffect;

    move-result-object v26

    iget v0, v0, Landroidx/compose/ui/platform/RenderNodeApi23;->internalCompositingStrategy:I

    move/from16 v27, v0

    const/16 v28, 0x0

    const-wide/16 v2, 0x0

    .line 304
    invoke-direct/range {v1 .. v28}, Landroidx/compose/ui/platform/DeviceRenderNodeData;-><init>(JIIIIIIFFFFFIIFFFFFFZZFLandroidx/compose/ui/graphics/RenderEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v29
.end method

.method public getAlpha()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    .line 210
    invoke-virtual {p0}, Landroid/view/RenderNode;->getAlpha()F

    move-result p0

    return p0
.end method

.method public getAmbientShadowColor()I
    .locals 1

    .line 133
    sget-object v0, Landroidx/compose/ui/platform/RenderNodeVerificationHelper28;->INSTANCE:Landroidx/compose/ui/platform/RenderNodeVerificationHelper28;

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    invoke-virtual {v0, p0}, Landroidx/compose/ui/platform/RenderNodeVerificationHelper28;->getAmbientShadowColor(Landroid/view/RenderNode;)I

    move-result p0

    return p0
.end method

.method public getBottom()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->bottom:I

    return p0
.end method

.method public getCameraDistance()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    .line 180
    invoke-virtual {p0}, Landroid/view/RenderNode;->getCameraDistance()F

    move-result p0

    neg-float p0, p0

    return p0
.end method

.method public getClipToBounds()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->clipToBounds:Z

    return p0
.end method

.method public getClipToOutline()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    .line 198
    invoke-virtual {p0}, Landroid/view/RenderNode;->getClipToOutline()Z

    move-result p0

    return p0
.end method

.method public getCompositingStrategy--NrFUSI()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->internalCompositingStrategy:I

    return p0
.end method

.method public getElevation()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    .line 125
    invoke-virtual {p0}, Landroid/view/RenderNode;->getElevation()F

    move-result p0

    return p0
.end method

.method public getHasDisplayList()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    .line 243
    invoke-virtual {p0}, Landroid/view/RenderNode;->isValid()Z

    move-result p0

    return p0
.end method

.method public getHeight()I
    .locals 1

    .line 91
    invoke-virtual {p0}, Landroidx/compose/ui/platform/RenderNodeApi23;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/platform/RenderNodeApi23;->getTop()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public getInverseMatrix(Landroid/graphics/Matrix;)V
    .locals 1

    const-string v0, "matrix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    .line 293
    invoke-virtual {p0, p1}, Landroid/view/RenderNode;->getInverseMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public final getLayerType$ui_release()I
    .locals 1

    iget p0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->internalCompositingStrategy:I

    .line 236
    sget-object v0, Landroidx/compose/ui/graphics/CompositingStrategy;->Companion:Landroidx/compose/ui/graphics/CompositingStrategy$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/CompositingStrategy$Companion;->getOffscreen--NrFUSI()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/CompositingStrategy;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getLeft()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->left:I

    return p0
.end method

.method public getMatrix(Landroid/graphics/Matrix;)V
    .locals 1

    const-string v0, "matrix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    .line 289
    invoke-virtual {p0, p1}, Landroid/view/RenderNode;->getMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public final getOwnerView()Landroidx/compose/ui/platform/AndroidComposeView;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    return-object p0
.end method

.method public getPivotX()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    .line 186
    invoke-virtual {p0}, Landroid/view/RenderNode;->getPivotX()F

    move-result p0

    return p0
.end method

.method public getPivotY()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    .line 192
    invoke-virtual {p0}, Landroid/view/RenderNode;->getPivotY()F

    move-result p0

    return p0
.end method

.method public getRenderEffect()Landroidx/compose/ui/graphics/RenderEffect;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderEffect:Landroidx/compose/ui/graphics/RenderEffect;

    return-object p0
.end method

.method public getRight()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->right:I

    return p0
.end method

.method public getRotationX()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    .line 165
    invoke-virtual {p0}, Landroid/view/RenderNode;->getRotationX()F

    move-result p0

    return p0
.end method

.method public getRotationY()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    .line 171
    invoke-virtual {p0}, Landroid/view/RenderNode;->getRotationY()F

    move-result p0

    return p0
.end method

.method public getRotationZ()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    .line 159
    invoke-virtual {p0}, Landroid/view/RenderNode;->getRotation()F

    move-result p0

    return p0
.end method

.method public getScaleX()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    .line 101
    invoke-virtual {p0}, Landroid/view/RenderNode;->getScaleX()F

    move-result p0

    return p0
.end method

.method public getScaleY()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    .line 107
    invoke-virtual {p0}, Landroid/view/RenderNode;->getScaleY()F

    move-result p0

    return p0
.end method

.method public getSpotShadowColor()I
    .locals 1

    .line 147
    sget-object v0, Landroidx/compose/ui/platform/RenderNodeVerificationHelper28;->INSTANCE:Landroidx/compose/ui/platform/RenderNodeVerificationHelper28;

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    invoke-virtual {v0, p0}, Landroidx/compose/ui/platform/RenderNodeVerificationHelper28;->getSpotShadowColor(Landroid/view/RenderNode;)I

    move-result p0

    return p0
.end method

.method public getTop()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->top:I

    return p0
.end method

.method public getTranslationX()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    .line 113
    invoke-virtual {p0}, Landroid/view/RenderNode;->getTranslationX()F

    move-result p0

    return p0
.end method

.method public getTranslationY()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    .line 119
    invoke-virtual {p0}, Landroid/view/RenderNode;->getTranslationY()F

    move-result p0

    return p0
.end method

.method public getUniqueId()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    .line 90
    invoke-virtual {p0}, Landroidx/compose/ui/platform/RenderNodeApi23;->getRight()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/platform/RenderNodeApi23;->getLeft()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public final hasOverlappingRendering$ui_release()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    .line 240
    invoke-virtual {p0}, Landroid/view/RenderNode;->hasOverlappingRendering()Z

    move-result p0

    return p0
.end method

.method public offsetLeftAndRight(I)V
    .locals 1

    .line 258
    invoke-virtual {p0}, Landroidx/compose/ui/platform/RenderNodeApi23;->getLeft()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroidx/compose/ui/platform/RenderNodeApi23;->setLeft(I)V

    .line 259
    invoke-virtual {p0}, Landroidx/compose/ui/platform/RenderNodeApi23;->getRight()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroidx/compose/ui/platform/RenderNodeApi23;->setRight(I)V

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    .line 260
    invoke-virtual {p0, p1}, Landroid/view/RenderNode;->offsetLeftAndRight(I)Z

    return-void
.end method

.method public offsetTopAndBottom(I)V
    .locals 1

    .line 264
    invoke-virtual {p0}, Landroidx/compose/ui/platform/RenderNodeApi23;->getTop()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroidx/compose/ui/platform/RenderNodeApi23;->setTop(I)V

    .line 265
    invoke-virtual {p0}, Landroidx/compose/ui/platform/RenderNodeApi23;->getBottom()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroidx/compose/ui/platform/RenderNodeApi23;->setBottom(I)V

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    .line 266
    invoke-virtual {p0, p1}, Landroid/view/RenderNode;->offsetTopAndBottom(I)Z

    return-void
.end method

.method public record(Landroidx/compose/ui/graphics/CanvasHolder;Landroidx/compose/ui/graphics/Path;Lkotlin/jvm/functions/Function1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/graphics/CanvasHolder;",
            "Landroidx/compose/ui/graphics/Path;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/Canvas;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "canvasHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "drawBlock"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    .line 274
    invoke-virtual {p0}, Landroidx/compose/ui/platform/RenderNodeApi23;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroidx/compose/ui/platform/RenderNodeApi23;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/RenderNode;->start(II)Landroid/view/DisplayListCanvas;

    move-result-object v0

    const-string v1, "renderNode.start(width, height)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/CanvasHolder;->getAndroidCanvas()Landroidx/compose/ui/graphics/AndroidCanvas;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/AndroidCanvas;->getInternalCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    .line 419
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/CanvasHolder;->getAndroidCanvas()Landroidx/compose/ui/graphics/AndroidCanvas;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Landroid/graphics/Canvas;

    invoke-virtual {v2, v3}, Landroidx/compose/ui/graphics/AndroidCanvas;->setInternalCanvas(Landroid/graphics/Canvas;)V

    .line 420
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/CanvasHolder;->getAndroidCanvas()Landroidx/compose/ui/graphics/AndroidCanvas;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Canvas;

    if-eqz p2, :cond_0

    .line 277
    invoke-interface {v2}, Landroidx/compose/ui/graphics/Canvas;->save()V

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 278
    invoke-static {v2, p2, v5, v3, v4}, Landroidx/compose/ui/graphics/Canvas;->clipPath-mtrdD-E$default(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Path;IILjava/lang/Object;)V

    .line 280
    :cond_0
    invoke-interface {p3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    .line 282
    invoke-interface {v2}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 421
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/CanvasHolder;->getAndroidCanvas()Landroidx/compose/ui/graphics/AndroidCanvas;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/compose/ui/graphics/AndroidCanvas;->setInternalCanvas(Landroid/graphics/Canvas;)V

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    .line 285
    invoke-virtual {p0, v0}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    .line 212
    invoke-virtual {p0, p1}, Landroid/view/RenderNode;->setAlpha(F)Z

    return-void
.end method

.method public setAmbientShadowColor(I)V
    .locals 1

    .line 140
    sget-object v0, Landroidx/compose/ui/platform/RenderNodeVerificationHelper28;->INSTANCE:Landroidx/compose/ui/platform/RenderNodeVerificationHelper28;

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/platform/RenderNodeVerificationHelper28;->setAmbientShadowColor(Landroid/view/RenderNode;I)V

    return-void
.end method

.method public setBottom(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->bottom:I

    return-void
.end method

.method public setCameraDistance(F)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    neg-float p1, p1

    .line 182
    invoke-virtual {p0, p1}, Landroid/view/RenderNode;->setCameraDistance(F)Z

    return-void
.end method

.method public setClipToBounds(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->clipToBounds:Z

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    .line 206
    invoke-virtual {p0, p1}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    return-void
.end method

.method public setClipToOutline(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    .line 200
    invoke-virtual {p0, p1}, Landroid/view/RenderNode;->setClipToOutline(Z)Z

    return-void
.end method

.method public setCompositingStrategy-aDBOjCE(I)V
    .locals 3

    .line 219
    sget-object v0, Landroidx/compose/ui/graphics/CompositingStrategy;->Companion:Landroidx/compose/ui/graphics/CompositingStrategy$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/CompositingStrategy$Companion;->getOffscreen--NrFUSI()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/graphics/CompositingStrategy;->equals-impl0(II)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    const/4 v2, 0x2

    .line 220
    invoke-virtual {v0, v2}, Landroid/view/RenderNode;->setLayerType(I)Z

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    .line 221
    invoke-virtual {v0, v1}, Landroid/view/RenderNode;->setHasOverlappingRendering(Z)Z

    goto :goto_0

    .line 223
    :cond_0
    sget-object v0, Landroidx/compose/ui/graphics/CompositingStrategy;->Companion:Landroidx/compose/ui/graphics/CompositingStrategy$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/CompositingStrategy$Companion;->getModulateAlpha--NrFUSI()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/graphics/CompositingStrategy;->equals-impl0(II)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    .line 224
    invoke-virtual {v0, v2}, Landroid/view/RenderNode;->setLayerType(I)Z

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    .line 225
    invoke-virtual {v0, v2}, Landroid/view/RenderNode;->setHasOverlappingRendering(Z)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    .line 228
    invoke-virtual {v0, v2}, Landroid/view/RenderNode;->setLayerType(I)Z

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    .line 229
    invoke-virtual {v0, v1}, Landroid/view/RenderNode;->setHasOverlappingRendering(Z)Z

    :goto_0
    iput p1, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->internalCompositingStrategy:I

    return-void
.end method

.method public setElevation(F)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    .line 127
    invoke-virtual {p0, p1}, Landroid/view/RenderNode;->setElevation(F)Z

    return-void
.end method

.method public setHasOverlappingRendering(Z)Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    .line 301
    invoke-virtual {p0, p1}, Landroid/view/RenderNode;->setHasOverlappingRendering(Z)Z

    move-result p0

    return p0
.end method

.method public setLeft(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->left:I

    return-void
.end method

.method public setOutline(Landroid/graphics/Outline;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    .line 246
    invoke-virtual {p0, p1}, Landroid/view/RenderNode;->setOutline(Landroid/graphics/Outline;)Z

    return-void
.end method

.method public setPivotX(F)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    .line 188
    invoke-virtual {p0, p1}, Landroid/view/RenderNode;->setPivotX(F)Z

    return-void
.end method

.method public setPivotY(F)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    .line 194
    invoke-virtual {p0, p1}, Landroid/view/RenderNode;->setPivotY(F)Z

    return-void
.end method

.method public setPosition(IIII)Z
    .locals 0

    .line 250
    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/RenderNodeApi23;->setLeft(I)V

    .line 251
    invoke-virtual {p0, p2}, Landroidx/compose/ui/platform/RenderNodeApi23;->setTop(I)V

    .line 252
    invoke-virtual {p0, p3}, Landroidx/compose/ui/platform/RenderNodeApi23;->setRight(I)V

    .line 253
    invoke-virtual {p0, p4}, Landroidx/compose/ui/platform/RenderNodeApi23;->setBottom(I)V

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    .line 254
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    move-result p0

    return p0
.end method

.method public setRenderEffect(Landroidx/compose/ui/graphics/RenderEffect;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderEffect:Landroidx/compose/ui/graphics/RenderEffect;

    return-void
.end method

.method public setRight(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->right:I

    return-void
.end method

.method public setRotationX(F)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    .line 167
    invoke-virtual {p0, p1}, Landroid/view/RenderNode;->setRotationX(F)Z

    return-void
.end method

.method public setRotationY(F)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    .line 173
    invoke-virtual {p0, p1}, Landroid/view/RenderNode;->setRotationY(F)Z

    return-void
.end method

.method public setRotationZ(F)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    .line 161
    invoke-virtual {p0, p1}, Landroid/view/RenderNode;->setRotation(F)Z

    return-void
.end method

.method public setScaleX(F)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    .line 103
    invoke-virtual {p0, p1}, Landroid/view/RenderNode;->setScaleX(F)Z

    return-void
.end method

.method public setScaleY(F)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    .line 109
    invoke-virtual {p0, p1}, Landroid/view/RenderNode;->setScaleY(F)Z

    return-void
.end method

.method public setSpotShadowColor(I)V
    .locals 1

    .line 154
    sget-object v0, Landroidx/compose/ui/platform/RenderNodeVerificationHelper28;->INSTANCE:Landroidx/compose/ui/platform/RenderNodeVerificationHelper28;

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/platform/RenderNodeVerificationHelper28;->setSpotShadowColor(Landroid/view/RenderNode;I)V

    return-void
.end method

.method public setTop(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->top:I

    return-void
.end method

.method public setTranslationX(F)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    .line 115
    invoke-virtual {p0, p1}, Landroid/view/RenderNode;->setTranslationX(F)Z

    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeApi23;->renderNode:Landroid/view/RenderNode;

    .line 121
    invoke-virtual {p0, p1}, Landroid/view/RenderNode;->setTranslationY(F)Z

    return-void
.end method
