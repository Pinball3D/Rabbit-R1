.class public Lcom/google/android/material/color/DynamicColorsOptions;
.super Ljava/lang/Object;
.source "DynamicColorsOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/color/DynamicColorsOptions$Builder;
    }
.end annotation


# static fields
.field private static final ALWAYS_ALLOW:Lcom/google/android/material/color/DynamicColors$Precondition;

.field private static final NO_OP_CALLBACK:Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;


# instance fields
.field private contentBasedSeedColor:Ljava/lang/Integer;

.field private final onAppliedCallback:Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;

.field private final precondition:Lcom/google/android/material/color/DynamicColors$Precondition;

.field private final themeOverlay:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/google/android/material/color/DynamicColorsOptions$1;

    invoke-direct {v0}, Lcom/google/android/material/color/DynamicColorsOptions$1;-><init>()V

    sput-object v0, Lcom/google/android/material/color/DynamicColorsOptions;->ALWAYS_ALLOW:Lcom/google/android/material/color/DynamicColors$Precondition;

    .line 48
    new-instance v0, Lcom/google/android/material/color/DynamicColorsOptions$2;

    invoke-direct {v0}, Lcom/google/android/material/color/DynamicColorsOptions$2;-><init>()V

    sput-object v0, Lcom/google/android/material/color/DynamicColorsOptions;->NO_OP_CALLBACK:Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/material/color/DynamicColorsOptions$Builder;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {p1}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->access$000(Lcom/google/android/material/color/DynamicColorsOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/color/DynamicColorsOptions;->themeOverlay:I

    .line 61
    invoke-static {p1}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->access$100(Lcom/google/android/material/color/DynamicColorsOptions$Builder;)Lcom/google/android/material/color/DynamicColors$Precondition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/color/DynamicColorsOptions;->precondition:Lcom/google/android/material/color/DynamicColors$Precondition;

    .line 62
    invoke-static {p1}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->access$200(Lcom/google/android/material/color/DynamicColorsOptions$Builder;)Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/color/DynamicColorsOptions;->onAppliedCallback:Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;

    .line 63
    invoke-static {p1}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->access$300(Lcom/google/android/material/color/DynamicColorsOptions$Builder;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-static {p1}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->access$300(Lcom/google/android/material/color/DynamicColorsOptions$Builder;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/color/DynamicColorsOptions;->contentBasedSeedColor:Ljava/lang/Integer;

    goto :goto_0

    .line 65
    :cond_0
    invoke-static {p1}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->access$400(Lcom/google/android/material/color/DynamicColorsOptions$Builder;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 66
    invoke-static {p1}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->access$400(Lcom/google/android/material/color/DynamicColorsOptions$Builder;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/material/color/DynamicColorsOptions;->extractSeedColorFromImage(Landroid/graphics/Bitmap;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/color/DynamicColorsOptions;->contentBasedSeedColor:Ljava/lang/Integer;

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/color/DynamicColorsOptions$Builder;Lcom/google/android/material/color/DynamicColorsOptions$1;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/material/color/DynamicColorsOptions;-><init>(Lcom/google/android/material/color/DynamicColorsOptions$Builder;)V

    return-void
.end method

.method static synthetic access$500()Lcom/google/android/material/color/DynamicColors$Precondition;
    .locals 1

    sget-object v0, Lcom/google/android/material/color/DynamicColorsOptions;->ALWAYS_ALLOW:Lcom/google/android/material/color/DynamicColors$Precondition;

    return-object v0
.end method

.method static synthetic access$600()Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;
    .locals 1

    sget-object v0, Lcom/google/android/material/color/DynamicColorsOptions;->NO_OP_CALLBACK:Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;

    return-object v0
.end method

.method private static extractSeedColorFromImage(Landroid/graphics/Bitmap;)I
    .locals 9

    .line 161
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 162
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int v0, v6, v7

    .line 163
    new-array v8, v0, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v8

    move v3, v6

    .line 164
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/16 p0, 0x80

    .line 165
    invoke-static {v8, p0}, Lcom/google/android/material/color/utilities/QuantizerCelebi;->quantize([II)Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/material/color/utilities/Score;->score(Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method


# virtual methods
.method public getContentBasedSeedColor()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/color/DynamicColorsOptions;->contentBasedSeedColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public getOnAppliedCallback()Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/color/DynamicColorsOptions;->onAppliedCallback:Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;

    return-object p0
.end method

.method public getPrecondition()Lcom/google/android/material/color/DynamicColors$Precondition;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/color/DynamicColorsOptions;->precondition:Lcom/google/android/material/color/DynamicColors$Precondition;

    return-object p0
.end method

.method public getThemeOverlay()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/color/DynamicColorsOptions;->themeOverlay:I

    return p0
.end method
