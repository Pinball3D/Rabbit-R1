.class public final Landroidx/compose/ui/platform/DeviceRenderNodeData;
.super Ljava/lang/Object;
.source "DeviceRenderNode.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008W\n\u0002\u0010\u000e\n\u0000\u0008\u0080\u0008\u0018\u00002\u00020\u0001B\u00d2\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000e\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000c\u0012\u0006\u0010\u0010\u001a\u00020\u000c\u0012\u0006\u0010\u0011\u001a\u00020\u0005\u0012\u0006\u0010\u0012\u001a\u00020\u0005\u0012\u0006\u0010\u0013\u001a\u00020\u000c\u0012\u0006\u0010\u0014\u001a\u00020\u000c\u0012\u0006\u0010\u0015\u001a\u00020\u000c\u0012\u0006\u0010\u0016\u001a\u00020\u000c\u0012\u0006\u0010\u0017\u001a\u00020\u000c\u0012\u0006\u0010\u0018\u001a\u00020\u000c\u0012\u0006\u0010\u0019\u001a\u00020\u001a\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0006\u0010\u001c\u001a\u00020\u000c\u0012\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001e\u0012\u0006\u0010\u001f\u001a\u00020 \u00f8\u0001\u0000\u00a2\u0006\u0002\u0010!J\t\u0010W\u001a\u00020\u0003H\u00c6\u0003J\t\u0010X\u001a\u00020\u000cH\u00c6\u0003J\t\u0010Y\u001a\u00020\u000cH\u00c6\u0003J\t\u0010Z\u001a\u00020\u000cH\u00c6\u0003J\t\u0010[\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\\\u001a\u00020\u0005H\u00c6\u0003J\t\u0010]\u001a\u00020\u000cH\u00c6\u0003J\t\u0010^\u001a\u00020\u000cH\u00c6\u0003J\t\u0010_\u001a\u00020\u000cH\u00c6\u0003J\t\u0010`\u001a\u00020\u000cH\u00c6\u0003J\t\u0010a\u001a\u00020\u000cH\u00c6\u0003J\t\u0010b\u001a\u00020\u0005H\u00c6\u0003J\t\u0010c\u001a\u00020\u000cH\u00c6\u0003J\t\u0010d\u001a\u00020\u001aH\u00c6\u0003J\t\u0010e\u001a\u00020\u001aH\u00c6\u0003J\t\u0010f\u001a\u00020\u000cH\u00c6\u0003J\u000b\u0010g\u001a\u0004\u0018\u00010\u001eH\u00c6\u0003J\u0019\u0010h\u001a\u00020 H\u00c6\u0003\u00f8\u0001\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008i\u0010\'J\t\u0010j\u001a\u00020\u0005H\u00c6\u0003J\t\u0010k\u001a\u00020\u0005H\u00c6\u0003J\t\u0010l\u001a\u00020\u0005H\u00c6\u0003J\t\u0010m\u001a\u00020\u0005H\u00c6\u0003J\t\u0010n\u001a\u00020\u0005H\u00c6\u0003J\t\u0010o\u001a\u00020\u000cH\u00c6\u0003J\t\u0010p\u001a\u00020\u000cH\u00c6\u0003J\u0092\u0002\u0010q\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00052\u0008\u0008\u0002\u0010\t\u001a\u00020\u00052\u0008\u0008\u0002\u0010\n\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u001a2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001a2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u000c2\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0008\u0008\u0002\u0010\u001f\u001a\u00020 H\u00c6\u0001\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008r\u0010sJ\u0013\u0010t\u001a\u00020\u001a2\u0008\u0010u\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010v\u001a\u00020\u0005H\u00d6\u0001J\t\u0010w\u001a\u00020xH\u00d6\u0001R\u001a\u0010\u001c\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\u001a\u0010\u0011\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\u0011\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010\'R\u001a\u0010\u0016\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010#\"\u0004\u0008,\u0010%R\u001a\u0010\u001b\u001a\u00020\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010.\"\u0004\u0008/\u00100R\u001a\u0010\u0019\u001a\u00020\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u0010.\"\u0004\u00082\u00100R%\u0010\u001f\u001a\u00020 X\u0086\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0010\n\u0002\u00105\u001a\u0004\u00083\u0010\'\"\u0004\u00084\u0010)R\u001a\u0010\u0010\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00086\u0010#\"\u0004\u00087\u0010%R\u0011\u0010\n\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00088\u0010\'R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00089\u0010\'R\u001a\u0010\u0017\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008:\u0010#\"\u0004\u0008;\u0010%R\u001a\u0010\u0018\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008<\u0010#\"\u0004\u0008=\u0010%R\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008>\u0010?\"\u0004\u0008@\u0010AR\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008B\u0010\'R\u001a\u0010\u0014\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008C\u0010#\"\u0004\u0008D\u0010%R\u001a\u0010\u0015\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008E\u0010#\"\u0004\u0008F\u0010%R\u001a\u0010\u0013\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008G\u0010#\"\u0004\u0008H\u0010%R\u001a\u0010\u000b\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008I\u0010#\"\u0004\u0008J\u0010%R\u001a\u0010\r\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008K\u0010#\"\u0004\u0008L\u0010%R\u001a\u0010\u0012\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008M\u0010\'\"\u0004\u0008N\u0010)R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008O\u0010\'R\u001a\u0010\u000e\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008P\u0010#\"\u0004\u0008Q\u0010%R\u001a\u0010\u000f\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008R\u0010#\"\u0004\u0008S\u0010%R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008T\u0010UR\u0011\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008V\u0010\'\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006y"
    }
    d2 = {
        "Landroidx/compose/ui/platform/DeviceRenderNodeData;",
        "",
        "uniqueId",
        "",
        "left",
        "",
        "top",
        "right",
        "bottom",
        "width",
        "height",
        "scaleX",
        "",
        "scaleY",
        "translationX",
        "translationY",
        "elevation",
        "ambientShadowColor",
        "spotShadowColor",
        "rotationZ",
        "rotationX",
        "rotationY",
        "cameraDistance",
        "pivotX",
        "pivotY",
        "clipToOutline",
        "",
        "clipToBounds",
        "alpha",
        "renderEffect",
        "Landroidx/compose/ui/graphics/RenderEffect;",
        "compositingStrategy",
        "Landroidx/compose/ui/graphics/CompositingStrategy;",
        "(JIIIIIIFFFFFIIFFFFFFZZFLandroidx/compose/ui/graphics/RenderEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "getAlpha",
        "()F",
        "setAlpha",
        "(F)V",
        "getAmbientShadowColor",
        "()I",
        "setAmbientShadowColor",
        "(I)V",
        "getBottom",
        "getCameraDistance",
        "setCameraDistance",
        "getClipToBounds",
        "()Z",
        "setClipToBounds",
        "(Z)V",
        "getClipToOutline",
        "setClipToOutline",
        "getCompositingStrategy--NrFUSI",
        "setCompositingStrategy-aDBOjCE",
        "I",
        "getElevation",
        "setElevation",
        "getHeight",
        "getLeft",
        "getPivotX",
        "setPivotX",
        "getPivotY",
        "setPivotY",
        "getRenderEffect",
        "()Landroidx/compose/ui/graphics/RenderEffect;",
        "setRenderEffect",
        "(Landroidx/compose/ui/graphics/RenderEffect;)V",
        "getRight",
        "getRotationX",
        "setRotationX",
        "getRotationY",
        "setRotationY",
        "getRotationZ",
        "setRotationZ",
        "getScaleX",
        "setScaleX",
        "getScaleY",
        "setScaleY",
        "getSpotShadowColor",
        "setSpotShadowColor",
        "getTop",
        "getTranslationX",
        "setTranslationX",
        "getTranslationY",
        "setTranslationY",
        "getUniqueId",
        "()J",
        "getWidth",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
        "component19",
        "component2",
        "component20",
        "component21",
        "component22",
        "component23",
        "component24",
        "component25",
        "component25--NrFUSI",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "copy-fuCbV5c",
        "(JIIIIIIFFFFFIIFFFFFFZZFLandroidx/compose/ui/graphics/RenderEffect;I)Landroidx/compose/ui/platform/DeviceRenderNodeData;",
        "equals",
        "other",
        "hashCode",
        "toString",
        "",
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


# instance fields
.field private alpha:F

.field private ambientShadowColor:I

.field private final bottom:I

.field private cameraDistance:F

.field private clipToBounds:Z

.field private clipToOutline:Z

.field private compositingStrategy:I

.field private elevation:F

.field private final height:I

.field private final left:I

.field private pivotX:F

.field private pivotY:F

.field private renderEffect:Landroidx/compose/ui/graphics/RenderEffect;

.field private final right:I

.field private rotationX:F

.field private rotationY:F

.field private rotationZ:F

.field private scaleX:F

.field private scaleY:F

.field private spotShadowColor:I

.field private final top:I

.field private translationX:F

.field private translationY:F

.field private final uniqueId:J

.field private final width:I


# direct methods
.method private constructor <init>(JIIIIIIFFFFFIIFFFFFFZZFLandroidx/compose/ui/graphics/RenderEffect;I)V
    .locals 3

    move-object v0, p0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    iput-wide v1, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->uniqueId:J

    move v1, p3

    iput v1, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->left:I

    move v1, p4

    iput v1, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->top:I

    move v1, p5

    iput v1, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->right:I

    move v1, p6

    iput v1, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->bottom:I

    move v1, p7

    iput v1, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->width:I

    move v1, p8

    iput v1, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->height:I

    move v1, p9

    iput v1, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->scaleX:F

    move v1, p10

    iput v1, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->scaleY:F

    move v1, p11

    iput v1, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->translationX:F

    move v1, p12

    iput v1, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->translationY:F

    move/from16 v1, p13

    iput v1, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->elevation:F

    move/from16 v1, p14

    iput v1, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->ambientShadowColor:I

    move/from16 v1, p15

    iput v1, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->spotShadowColor:I

    move/from16 v1, p16

    iput v1, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->rotationZ:F

    move/from16 v1, p17

    iput v1, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->rotationX:F

    move/from16 v1, p18

    iput v1, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->rotationY:F

    move/from16 v1, p19

    iput v1, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->cameraDistance:F

    move/from16 v1, p20

    iput v1, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->pivotX:F

    move/from16 v1, p21

    iput v1, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->pivotY:F

    move/from16 v1, p22

    iput-boolean v1, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->clipToOutline:Z

    move/from16 v1, p23

    iput-boolean v1, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->clipToBounds:Z

    move/from16 v1, p24

    iput v1, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->alpha:F

    move-object/from16 v1, p25

    iput-object v1, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->renderEffect:Landroidx/compose/ui/graphics/RenderEffect;

    move/from16 v1, p26

    iput v1, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->compositingStrategy:I

    return-void
.end method

.method public synthetic constructor <init>(JIIIIIIFFFFFIIFFFFFFZZFLandroidx/compose/ui/graphics/RenderEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p26}, Landroidx/compose/ui/platform/DeviceRenderNodeData;-><init>(JIIIIIIFFFFFIIFFFFFFZZFLandroidx/compose/ui/graphics/RenderEffect;I)V

    return-void
.end method

.method public static synthetic copy-fuCbV5c$default(Landroidx/compose/ui/platform/DeviceRenderNodeData;JIIIIIIFFFFFIIFFFFFFZZFLandroidx/compose/ui/graphics/RenderEffect;IILjava/lang/Object;)Landroidx/compose/ui/platform/DeviceRenderNodeData;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p27

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->uniqueId:J

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget v4, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->left:I

    goto :goto_1

    :cond_1
    move/from16 v4, p3

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget v5, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->top:I

    goto :goto_2

    :cond_2
    move/from16 v5, p4

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget v6, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->right:I

    goto :goto_3

    :cond_3
    move/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget v7, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->bottom:I

    goto :goto_4

    :cond_4
    move/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget v8, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->width:I

    goto :goto_5

    :cond_5
    move/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget v9, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->height:I

    goto :goto_6

    :cond_6
    move/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget v10, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->scaleX:F

    goto :goto_7

    :cond_7
    move/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget v11, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->scaleY:F

    goto :goto_8

    :cond_8
    move/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    iget v12, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->translationX:F

    goto :goto_9

    :cond_9
    move/from16 v12, p11

    :goto_9
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_a

    iget v13, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->translationY:F

    goto :goto_a

    :cond_a
    move/from16 v13, p12

    :goto_a
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_b

    iget v14, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->elevation:F

    goto :goto_b

    :cond_b
    move/from16 v14, p13

    :goto_b
    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    iget v15, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->ambientShadowColor:I

    goto :goto_c

    :cond_c
    move/from16 v15, p14

    :goto_c
    move/from16 p14, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget v15, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->spotShadowColor:I

    goto :goto_d

    :cond_d
    move/from16 v15, p15

    :goto_d
    move/from16 p15, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget v15, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->rotationZ:F

    goto :goto_e

    :cond_e
    move/from16 v15, p16

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move/from16 p16, v15

    if-eqz v16, :cond_f

    iget v15, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->rotationX:F

    goto :goto_f

    :cond_f
    move/from16 v15, p17

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move/from16 p17, v15

    if-eqz v16, :cond_10

    iget v15, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->rotationY:F

    goto :goto_10

    :cond_10
    move/from16 v15, p18

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move/from16 p18, v15

    if-eqz v16, :cond_11

    iget v15, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->cameraDistance:F

    goto :goto_11

    :cond_11
    move/from16 v15, p19

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move/from16 p19, v15

    if-eqz v16, :cond_12

    iget v15, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->pivotX:F

    goto :goto_12

    :cond_12
    move/from16 v15, p20

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move/from16 p20, v15

    if-eqz v16, :cond_13

    iget v15, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->pivotY:F

    goto :goto_13

    :cond_13
    move/from16 v15, p21

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move/from16 p21, v15

    if-eqz v16, :cond_14

    iget-boolean v15, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->clipToOutline:Z

    goto :goto_14

    :cond_14
    move/from16 v15, p22

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, v1, v16

    move/from16 p22, v15

    if-eqz v16, :cond_15

    iget-boolean v15, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->clipToBounds:Z

    goto :goto_15

    :cond_15
    move/from16 v15, p23

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, v1, v16

    move/from16 p23, v15

    if-eqz v16, :cond_16

    iget v15, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->alpha:F

    goto :goto_16

    :cond_16
    move/from16 v15, p24

    :goto_16
    const/high16 v16, 0x800000

    and-int v16, v1, v16

    move/from16 p24, v15

    if-eqz v16, :cond_17

    iget-object v15, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->renderEffect:Landroidx/compose/ui/graphics/RenderEffect;

    goto :goto_17

    :cond_17
    move-object/from16 v15, p25

    :goto_17
    const/high16 v16, 0x1000000

    and-int v1, v1, v16

    if-eqz v1, :cond_18

    iget v1, v0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->compositingStrategy:I

    goto :goto_18

    :cond_18
    move/from16 v1, p26

    :goto_18
    move-wide/from16 p1, v2

    move/from16 p3, v4

    move/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v11

    move/from16 p11, v12

    move/from16 p12, v13

    move/from16 p13, v14

    move-object/from16 p25, v15

    move/from16 p26, v1

    invoke-virtual/range {p0 .. p26}, Landroidx/compose/ui/platform/DeviceRenderNodeData;->copy-fuCbV5c(JIIIIIIFFFFFIIFFFFFFZZFLandroidx/compose/ui/graphics/RenderEffect;I)Landroidx/compose/ui/platform/DeviceRenderNodeData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->uniqueId:J

    return-wide v0
.end method

.method public final component10()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->translationX:F

    return p0
.end method

.method public final component11()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->translationY:F

    return p0
.end method

.method public final component12()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->elevation:F

    return p0
.end method

.method public final component13()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->ambientShadowColor:I

    return p0
.end method

.method public final component14()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->spotShadowColor:I

    return p0
.end method

.method public final component15()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->rotationZ:F

    return p0
.end method

.method public final component16()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->rotationX:F

    return p0
.end method

.method public final component17()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->rotationY:F

    return p0
.end method

.method public final component18()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->cameraDistance:F

    return p0
.end method

.method public final component19()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->pivotX:F

    return p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->left:I

    return p0
.end method

.method public final component20()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->pivotY:F

    return p0
.end method

.method public final component21()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->clipToOutline:Z

    return p0
.end method

.method public final component22()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->clipToBounds:Z

    return p0
.end method

.method public final component23()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->alpha:F

    return p0
.end method

.method public final component24()Landroidx/compose/ui/graphics/RenderEffect;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->renderEffect:Landroidx/compose/ui/graphics/RenderEffect;

    return-object p0
.end method

.method public final component25--NrFUSI()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->compositingStrategy:I

    return p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->top:I

    return p0
.end method

.method public final component4()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->right:I

    return p0
.end method

.method public final component5()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->bottom:I

    return p0
.end method

.method public final component6()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->width:I

    return p0
.end method

.method public final component7()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->height:I

    return p0
.end method

.method public final component8()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->scaleX:F

    return p0
.end method

.method public final component9()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->scaleY:F

    return p0
.end method

.method public final copy-fuCbV5c(JIIIIIIFFFFFIIFFFFFFZZFLandroidx/compose/ui/graphics/RenderEffect;I)Landroidx/compose/ui/platform/DeviceRenderNodeData;
    .locals 29

    move-wide/from16 v1, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move/from16 v21, p21

    move/from16 v22, p22

    move/from16 v23, p23

    move/from16 v24, p24

    move-object/from16 v25, p25

    move/from16 v26, p26

    new-instance v28, Landroidx/compose/ui/platform/DeviceRenderNodeData;

    move-object/from16 v0, v28

    const/16 v27, 0x0

    invoke-direct/range {v0 .. v27}, Landroidx/compose/ui/platform/DeviceRenderNodeData;-><init>(JIIIIIIFFFFFIIFFFFFFZZFLandroidx/compose/ui/graphics/RenderEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v28
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/platform/DeviceRenderNodeData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/ui/platform/DeviceRenderNodeData;

    iget-wide v3, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->uniqueId:J

    iget-wide v5, p1, Landroidx/compose/ui/platform/DeviceRenderNodeData;->uniqueId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->left:I

    iget v3, p1, Landroidx/compose/ui/platform/DeviceRenderNodeData;->left:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->top:I

    iget v3, p1, Landroidx/compose/ui/platform/DeviceRenderNodeData;->top:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->right:I

    iget v3, p1, Landroidx/compose/ui/platform/DeviceRenderNodeData;->right:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->bottom:I

    iget v3, p1, Landroidx/compose/ui/platform/DeviceRenderNodeData;->bottom:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->width:I

    iget v3, p1, Landroidx/compose/ui/platform/DeviceRenderNodeData;->width:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->height:I

    iget v3, p1, Landroidx/compose/ui/platform/DeviceRenderNodeData;->height:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->scaleX:F

    iget v3, p1, Landroidx/compose/ui/platform/DeviceRenderNodeData;->scaleX:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_9

    return v2

    :cond_9
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->scaleY:F

    iget v3, p1, Landroidx/compose/ui/platform/DeviceRenderNodeData;->scaleY:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_a

    return v2

    :cond_a
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->translationX:F

    iget v3, p1, Landroidx/compose/ui/platform/DeviceRenderNodeData;->translationX:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_b

    return v2

    :cond_b
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->translationY:F

    iget v3, p1, Landroidx/compose/ui/platform/DeviceRenderNodeData;->translationY:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_c

    return v2

    :cond_c
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->elevation:F

    iget v3, p1, Landroidx/compose/ui/platform/DeviceRenderNodeData;->elevation:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_d

    return v2

    :cond_d
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->ambientShadowColor:I

    iget v3, p1, Landroidx/compose/ui/platform/DeviceRenderNodeData;->ambientShadowColor:I

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->spotShadowColor:I

    iget v3, p1, Landroidx/compose/ui/platform/DeviceRenderNodeData;->spotShadowColor:I

    if-eq v1, v3, :cond_f

    return v2

    :cond_f
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->rotationZ:F

    iget v3, p1, Landroidx/compose/ui/platform/DeviceRenderNodeData;->rotationZ:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_10

    return v2

    :cond_10
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->rotationX:F

    iget v3, p1, Landroidx/compose/ui/platform/DeviceRenderNodeData;->rotationX:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_11

    return v2

    :cond_11
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->rotationY:F

    iget v3, p1, Landroidx/compose/ui/platform/DeviceRenderNodeData;->rotationY:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_12

    return v2

    :cond_12
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->cameraDistance:F

    iget v3, p1, Landroidx/compose/ui/platform/DeviceRenderNodeData;->cameraDistance:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_13

    return v2

    :cond_13
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->pivotX:F

    iget v3, p1, Landroidx/compose/ui/platform/DeviceRenderNodeData;->pivotX:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_14

    return v2

    :cond_14
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->pivotY:F

    iget v3, p1, Landroidx/compose/ui/platform/DeviceRenderNodeData;->pivotY:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_15

    return v2

    :cond_15
    iget-boolean v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->clipToOutline:Z

    iget-boolean v3, p1, Landroidx/compose/ui/platform/DeviceRenderNodeData;->clipToOutline:Z

    if-eq v1, v3, :cond_16

    return v2

    :cond_16
    iget-boolean v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->clipToBounds:Z

    iget-boolean v3, p1, Landroidx/compose/ui/platform/DeviceRenderNodeData;->clipToBounds:Z

    if-eq v1, v3, :cond_17

    return v2

    :cond_17
    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->alpha:F

    iget v3, p1, Landroidx/compose/ui/platform/DeviceRenderNodeData;->alpha:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_18

    return v2

    :cond_18
    iget-object v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->renderEffect:Landroidx/compose/ui/graphics/RenderEffect;

    iget-object v3, p1, Landroidx/compose/ui/platform/DeviceRenderNodeData;->renderEffect:Landroidx/compose/ui/graphics/RenderEffect;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    :cond_19
    iget p0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->compositingStrategy:I

    iget p1, p1, Landroidx/compose/ui/platform/DeviceRenderNodeData;->compositingStrategy:I

    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/CompositingStrategy;->equals-impl0(II)Z

    move-result p0

    if-nez p0, :cond_1a

    return v2

    :cond_1a
    return v0
.end method

.method public final getAlpha()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->alpha:F

    return p0
.end method

.method public final getAmbientShadowColor()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->ambientShadowColor:I

    return p0
.end method

.method public final getBottom()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->bottom:I

    return p0
.end method

.method public final getCameraDistance()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->cameraDistance:F

    return p0
.end method

.method public final getClipToBounds()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->clipToBounds:Z

    return p0
.end method

.method public final getClipToOutline()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->clipToOutline:Z

    return p0
.end method

.method public final getCompositingStrategy--NrFUSI()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->compositingStrategy:I

    return p0
.end method

.method public final getElevation()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->elevation:F

    return p0
.end method

.method public final getHeight()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->height:I

    return p0
.end method

.method public final getLeft()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->left:I

    return p0
.end method

.method public final getPivotX()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->pivotX:F

    return p0
.end method

.method public final getPivotY()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->pivotY:F

    return p0
.end method

.method public final getRenderEffect()Landroidx/compose/ui/graphics/RenderEffect;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->renderEffect:Landroidx/compose/ui/graphics/RenderEffect;

    return-object p0
.end method

.method public final getRight()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->right:I

    return p0
.end method

.method public final getRotationX()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->rotationX:F

    return p0
.end method

.method public final getRotationY()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->rotationY:F

    return p0
.end method

.method public final getRotationZ()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->rotationZ:F

    return p0
.end method

.method public final getScaleX()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->scaleX:F

    return p0
.end method

.method public final getScaleY()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->scaleY:F

    return p0
.end method

.method public final getSpotShadowColor()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->spotShadowColor:I

    return p0
.end method

.method public final getTop()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->top:I

    return p0
.end method

.method public final getTranslationX()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->translationX:F

    return p0
.end method

.method public final getTranslationY()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->translationY:F

    return p0
.end method

.method public final getUniqueId()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->uniqueId:J

    return-wide v0
.end method

.method public final getWidth()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->width:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->uniqueId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->left:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->top:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->right:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->bottom:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->scaleX:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->scaleY:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->translationX:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->translationY:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->elevation:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->ambientShadowColor:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->spotShadowColor:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->rotationZ:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->rotationX:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->rotationY:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->cameraDistance:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->pivotX:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->pivotY:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->clipToOutline:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->clipToBounds:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->alpha:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->renderEffect:Landroidx/compose/ui/graphics/RenderEffect;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/RenderEffect;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->compositingStrategy:I

    invoke-static {p0}, Landroidx/compose/ui/graphics/CompositingStrategy;->hashCode-impl(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setAlpha(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->alpha:F

    return-void
.end method

.method public final setAmbientShadowColor(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->ambientShadowColor:I

    return-void
.end method

.method public final setCameraDistance(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->cameraDistance:F

    return-void
.end method

.method public final setClipToBounds(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->clipToBounds:Z

    return-void
.end method

.method public final setClipToOutline(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->clipToOutline:Z

    return-void
.end method

.method public final setCompositingStrategy-aDBOjCE(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->compositingStrategy:I

    return-void
.end method

.method public final setElevation(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->elevation:F

    return-void
.end method

.method public final setPivotX(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->pivotX:F

    return-void
.end method

.method public final setPivotY(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->pivotY:F

    return-void
.end method

.method public final setRenderEffect(Landroidx/compose/ui/graphics/RenderEffect;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->renderEffect:Landroidx/compose/ui/graphics/RenderEffect;

    return-void
.end method

.method public final setRotationX(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->rotationX:F

    return-void
.end method

.method public final setRotationY(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->rotationY:F

    return-void
.end method

.method public final setRotationZ(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->rotationZ:F

    return-void
.end method

.method public final setScaleX(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->scaleX:F

    return-void
.end method

.method public final setScaleY(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->scaleY:F

    return-void
.end method

.method public final setSpotShadowColor(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->spotShadowColor:I

    return-void
.end method

.method public final setTranslationX(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->translationX:F

    return-void
.end method

.method public final setTranslationY(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->translationY:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeviceRenderNodeData(uniqueId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->uniqueId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", left="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", top="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", right="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bottom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", scaleX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->scaleX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", scaleY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->scaleY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", translationX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->translationX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", translationY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->translationY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", elevation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->elevation:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ambientShadowColor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->ambientShadowColor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", spotShadowColor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->spotShadowColor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rotationZ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->rotationZ:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rotationX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->rotationX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rotationY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->rotationY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cameraDistance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->cameraDistance:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pivotX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->pivotX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pivotY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->pivotY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", clipToOutline="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->clipToOutline:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", clipToBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->clipToBounds:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", alpha="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->alpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", renderEffect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->renderEffect:Landroidx/compose/ui/graphics/RenderEffect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", compositingStrategy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p0, p0, Landroidx/compose/ui/platform/DeviceRenderNodeData;->compositingStrategy:I

    invoke-static {p0}, Landroidx/compose/ui/graphics/CompositingStrategy;->toString-impl(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
