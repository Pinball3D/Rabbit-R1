.class public final Landroidx/media3/common/text/Cue$Builder;
.super Ljava/lang/Object;
.source "Cue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/text/Cue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private bitmapHeight:F

.field private line:F

.field private lineAnchor:I

.field private lineType:I

.field private multiRowAlignment:Landroid/text/Layout$Alignment;

.field private position:F

.field private positionAnchor:I

.field private shearDegrees:F

.field private size:F

.field private text:Ljava/lang/CharSequence;

.field private textAlignment:Landroid/text/Layout$Alignment;

.field private textSize:F

.field private textSizeType:I

.field private verticalType:I

.field private windowColor:I

.field private windowColorSet:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/common/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/media3/common/text/Cue$Builder;->bitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroidx/media3/common/text/Cue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Landroidx/media3/common/text/Cue$Builder;->multiRowAlignment:Landroid/text/Layout$Alignment;

    const v0, -0x800001

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->line:F

    const/high16 v1, -0x80000000

    iput v1, p0, Landroidx/media3/common/text/Cue$Builder;->lineType:I

    iput v1, p0, Landroidx/media3/common/text/Cue$Builder;->lineAnchor:I

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->position:F

    iput v1, p0, Landroidx/media3/common/text/Cue$Builder;->positionAnchor:I

    iput v1, p0, Landroidx/media3/common/text/Cue$Builder;->textSizeType:I

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->textSize:F

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->size:F

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->bitmapHeight:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/common/text/Cue$Builder;->windowColorSet:Z

    const/high16 v0, -0x1000000

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->windowColor:I

    iput v1, p0, Landroidx/media3/common/text/Cue$Builder;->verticalType:I

    return-void
.end method

.method private constructor <init>(Landroidx/media3/common/text/Cue;)V
    .locals 1

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    iget-object v0, p1, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/media3/common/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    .line 452
    iget-object v0, p1, Landroidx/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroidx/media3/common/text/Cue$Builder;->bitmap:Landroid/graphics/Bitmap;

    .line 453
    iget-object v0, p1, Landroidx/media3/common/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Landroidx/media3/common/text/Cue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    .line 454
    iget-object v0, p1, Landroidx/media3/common/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Landroidx/media3/common/text/Cue$Builder;->multiRowAlignment:Landroid/text/Layout$Alignment;

    .line 455
    iget v0, p1, Landroidx/media3/common/text/Cue;->line:F

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->line:F

    .line 456
    iget v0, p1, Landroidx/media3/common/text/Cue;->lineType:I

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->lineType:I

    .line 457
    iget v0, p1, Landroidx/media3/common/text/Cue;->lineAnchor:I

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->lineAnchor:I

    .line 458
    iget v0, p1, Landroidx/media3/common/text/Cue;->position:F

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->position:F

    .line 459
    iget v0, p1, Landroidx/media3/common/text/Cue;->positionAnchor:I

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->positionAnchor:I

    .line 460
    iget v0, p1, Landroidx/media3/common/text/Cue;->textSizeType:I

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->textSizeType:I

    .line 461
    iget v0, p1, Landroidx/media3/common/text/Cue;->textSize:F

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->textSize:F

    .line 462
    iget v0, p1, Landroidx/media3/common/text/Cue;->size:F

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->size:F

    .line 463
    iget v0, p1, Landroidx/media3/common/text/Cue;->bitmapHeight:F

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->bitmapHeight:F

    .line 464
    iget-boolean v0, p1, Landroidx/media3/common/text/Cue;->windowColorSet:Z

    iput-boolean v0, p0, Landroidx/media3/common/text/Cue$Builder;->windowColorSet:Z

    .line 465
    iget v0, p1, Landroidx/media3/common/text/Cue;->windowColor:I

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->windowColor:I

    .line 466
    iget v0, p1, Landroidx/media3/common/text/Cue;->verticalType:I

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->verticalType:I

    .line 467
    iget p1, p1, Landroidx/media3/common/text/Cue;->shearDegrees:F

    iput p1, p0, Landroidx/media3/common/text/Cue$Builder;->shearDegrees:F

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/text/Cue;Landroidx/media3/common/text/Cue$1;)V
    .locals 0

    .line 412
    invoke-direct {p0, p1}, Landroidx/media3/common/text/Cue$Builder;-><init>(Landroidx/media3/common/text/Cue;)V

    return-void
.end method


# virtual methods
.method public build()Landroidx/media3/common/text/Cue;
    .locals 22

    move-object/from16 v0, p0

    .line 802
    new-instance v20, Landroidx/media3/common/text/Cue;

    move-object/from16 v1, v20

    iget-object v2, v0, Landroidx/media3/common/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    iget-object v3, v0, Landroidx/media3/common/text/Cue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    iget-object v4, v0, Landroidx/media3/common/text/Cue$Builder;->multiRowAlignment:Landroid/text/Layout$Alignment;

    iget-object v5, v0, Landroidx/media3/common/text/Cue$Builder;->bitmap:Landroid/graphics/Bitmap;

    iget v6, v0, Landroidx/media3/common/text/Cue$Builder;->line:F

    iget v7, v0, Landroidx/media3/common/text/Cue$Builder;->lineType:I

    iget v8, v0, Landroidx/media3/common/text/Cue$Builder;->lineAnchor:I

    iget v9, v0, Landroidx/media3/common/text/Cue$Builder;->position:F

    iget v10, v0, Landroidx/media3/common/text/Cue$Builder;->positionAnchor:I

    iget v11, v0, Landroidx/media3/common/text/Cue$Builder;->textSizeType:I

    iget v12, v0, Landroidx/media3/common/text/Cue$Builder;->textSize:F

    iget v13, v0, Landroidx/media3/common/text/Cue$Builder;->size:F

    iget v14, v0, Landroidx/media3/common/text/Cue$Builder;->bitmapHeight:F

    iget-boolean v15, v0, Landroidx/media3/common/text/Cue$Builder;->windowColorSet:Z

    move-object/from16 v21, v1

    iget v1, v0, Landroidx/media3/common/text/Cue$Builder;->windowColor:I

    move/from16 v16, v1

    iget v1, v0, Landroidx/media3/common/text/Cue$Builder;->verticalType:I

    move/from16 v17, v1

    iget v0, v0, Landroidx/media3/common/text/Cue$Builder;->shearDegrees:F

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v1, v21

    invoke-direct/range {v1 .. v19}, Landroidx/media3/common/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFLandroidx/media3/common/text/Cue$1;)V

    return-object v20
.end method

.method public clearWindowColor()Landroidx/media3/common/text/Cue$Builder;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/common/text/Cue$Builder;->windowColorSet:Z

    return-object p0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 0
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object p0, p0, Landroidx/media3/common/text/Cue$Builder;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getBitmapHeight()F
    .locals 0
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget p0, p0, Landroidx/media3/common/text/Cue$Builder;->bitmapHeight:F

    return p0
.end method

.method public getLine()F
    .locals 0
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget p0, p0, Landroidx/media3/common/text/Cue$Builder;->line:F

    return p0
.end method

.method public getLineAnchor()I
    .locals 0
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget p0, p0, Landroidx/media3/common/text/Cue$Builder;->lineAnchor:I

    return p0
.end method

.method public getLineType()I
    .locals 0
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget p0, p0, Landroidx/media3/common/text/Cue$Builder;->lineType:I

    return p0
.end method

.method public getPosition()F
    .locals 0
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget p0, p0, Landroidx/media3/common/text/Cue$Builder;->position:F

    return p0
.end method

.method public getPositionAnchor()I
    .locals 0
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget p0, p0, Landroidx/media3/common/text/Cue$Builder;->positionAnchor:I

    return p0
.end method

.method public getSize()F
    .locals 0
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget p0, p0, Landroidx/media3/common/text/Cue$Builder;->size:F

    return p0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 0
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object p0, p0, Landroidx/media3/common/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getTextAlignment()Landroid/text/Layout$Alignment;
    .locals 0
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object p0, p0, Landroidx/media3/common/text/Cue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public getTextSize()F
    .locals 0
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget p0, p0, Landroidx/media3/common/text/Cue$Builder;->textSize:F

    return p0
.end method

.method public getTextSizeType()I
    .locals 0
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget p0, p0, Landroidx/media3/common/text/Cue$Builder;->textSizeType:I

    return p0
.end method

.method public getVerticalType()I
    .locals 0
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget p0, p0, Landroidx/media3/common/text/Cue$Builder;->verticalType:I

    return p0
.end method

.method public getWindowColor()I
    .locals 0
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget p0, p0, Landroidx/media3/common/text/Cue$Builder;->windowColor:I

    return p0
.end method

.method public isWindowColorSet()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/common/text/Cue$Builder;->windowColorSet:Z

    return p0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)Landroidx/media3/common/text/Cue$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/text/Cue$Builder;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setBitmapHeight(F)Landroidx/media3/common/text/Cue$Builder;
    .locals 0

    iput p1, p0, Landroidx/media3/common/text/Cue$Builder;->bitmapHeight:F

    return-object p0
.end method

.method public setLine(FI)Landroidx/media3/common/text/Cue$Builder;
    .locals 0

    iput p1, p0, Landroidx/media3/common/text/Cue$Builder;->line:F

    iput p2, p0, Landroidx/media3/common/text/Cue$Builder;->lineType:I

    return-object p0
.end method

.method public setLineAnchor(I)Landroidx/media3/common/text/Cue$Builder;
    .locals 0

    iput p1, p0, Landroidx/media3/common/text/Cue$Builder;->lineAnchor:I

    return-object p0
.end method

.method public setMultiRowAlignment(Landroid/text/Layout$Alignment;)Landroidx/media3/common/text/Cue$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/text/Cue$Builder;->multiRowAlignment:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public setPosition(F)Landroidx/media3/common/text/Cue$Builder;
    .locals 0

    iput p1, p0, Landroidx/media3/common/text/Cue$Builder;->position:F

    return-object p0
.end method

.method public setPositionAnchor(I)Landroidx/media3/common/text/Cue$Builder;
    .locals 0

    iput p1, p0, Landroidx/media3/common/text/Cue$Builder;->positionAnchor:I

    return-object p0
.end method

.method public setShearDegrees(F)Landroidx/media3/common/text/Cue$Builder;
    .locals 0

    iput p1, p0, Landroidx/media3/common/text/Cue$Builder;->shearDegrees:F

    return-object p0
.end method

.method public setSize(F)Landroidx/media3/common/text/Cue$Builder;
    .locals 0

    iput p1, p0, Landroidx/media3/common/text/Cue$Builder;->size:F

    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Landroidx/media3/common/text/Cue$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTextAlignment(Landroid/text/Layout$Alignment;)Landroidx/media3/common/text/Cue$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/text/Cue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public setTextSize(FI)Landroidx/media3/common/text/Cue$Builder;
    .locals 0

    iput p1, p0, Landroidx/media3/common/text/Cue$Builder;->textSize:F

    iput p2, p0, Landroidx/media3/common/text/Cue$Builder;->textSizeType:I

    return-object p0
.end method

.method public setVerticalType(I)Landroidx/media3/common/text/Cue$Builder;
    .locals 0

    iput p1, p0, Landroidx/media3/common/text/Cue$Builder;->verticalType:I

    return-object p0
.end method

.method public setWindowColor(I)Landroidx/media3/common/text/Cue$Builder;
    .locals 0

    iput p1, p0, Landroidx/media3/common/text/Cue$Builder;->windowColor:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/common/text/Cue$Builder;->windowColorSet:Z

    return-object p0
.end method
