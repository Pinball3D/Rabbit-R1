.class Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;
.super Ljava/lang/Object;
.source "SubsamplingScaleImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Tile"
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private fileSRect:Landroid/graphics/Rect;

.field private loading:Z

.field private sRect:Landroid/graphics/Rect;

.field private sampleSize:I

.field private vRect:Landroid/graphics/Rect;

.field private visible:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1884
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$1;)V
    .locals 0

    .line 1884
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Z
    .locals 0

    .line 1884
    iget-boolean p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->visible:Z

    return p0
.end method

.method static synthetic access$4000(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Z
    .locals 0

    .line 1884
    iget-boolean p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->loading:Z

    return p0
.end method

.method static synthetic access$4002(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;Z)Z
    .locals 0

    .line 1884
    iput-boolean p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->loading:Z

    return p1
.end method

.method static synthetic access$402(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;Z)Z
    .locals 0

    .line 1884
    iput-boolean p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->visible:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;
    .locals 0

    .line 1884
    iget-object p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->sRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$4102(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    .line 1884
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->sRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;
    .locals 0

    .line 1884
    iget-object p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->vRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$4202(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    .line 1884
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->vRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)I
    .locals 0

    .line 1884
    iget p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->sampleSize:I

    return p0
.end method

.method static synthetic access$4302(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;I)I
    .locals 0

    .line 1884
    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->sampleSize:I

    return p1
.end method

.method static synthetic access$500(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1884
    iget-object p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;
    .locals 0

    .line 1884
    iget-object p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->fileSRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$5002(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    .line 1884
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->fileSRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$502(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1884
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$Tile;->bitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method
