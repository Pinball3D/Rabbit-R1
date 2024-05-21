.class public Lcom/google/android/material/badge/BadgeDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BadgeDrawable.java"

# interfaces
.implements Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/badge/BadgeDrawable$BadgeGravity;
    }
.end annotation


# static fields
.field public static final BADGE_CONTENT_NOT_TRUNCATED:I = -0x2

.field static final BADGE_RADIUS_NOT_SPECIFIED:I = -0x1

.field public static final BOTTOM_END:I = 0x800055
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BOTTOM_START:I = 0x800053
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final DEFAULT_EXCEED_MAX_BADGE_NUMBER_SUFFIX:Ljava/lang/String; = "+"

.field static final DEFAULT_EXCEED_MAX_BADGE_TEXT_SUFFIX:Ljava/lang/String; = "\u2026"

.field private static final DEFAULT_STYLE:I

.field private static final DEFAULT_THEME_ATTR:I

.field private static final FONT_SCALE_THRESHOLD:F = 0.3f

.field static final OFFSET_ALIGNMENT_MODE_EDGE:I = 0x0

.field static final OFFSET_ALIGNMENT_MODE_LEGACY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Badge"

.field public static final TOP_END:I = 0x800035

.field public static final TOP_START:I = 0x800033


# instance fields
.field private anchorViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final badgeBounds:Landroid/graphics/Rect;

.field private badgeCenterX:F

.field private badgeCenterY:F

.field private final contextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private cornerRadius:F

.field private customBadgeParentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private halfBadgeHeight:F

.field private halfBadgeWidth:F

.field private maxBadgeNumber:I

.field private final shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private final state:Lcom/google/android/material/badge/BadgeState;

.field private final textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 168
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Badge:I

    sput v0, Lcom/google/android/material/badge/BadgeDrawable;->DEFAULT_STYLE:I

    .line 169
    sget v0, Lcom/google/android/material/R$attr;->badgeStyle:I

    sput v0, Lcom/google/android/material/badge/BadgeDrawable;->DEFAULT_THEME_ATTR:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;IIILcom/google/android/material/badge/BadgeState$State;)V
    .locals 8

    .line 306
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 307
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->contextRef:Ljava/lang/ref/WeakReference;

    .line 308
    invoke-static {p1}, Lcom/google/android/material/internal/ThemeEnforcement;->checkMaterialTheme(Landroid/content/Context;)V

    .line 309
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeBounds:Landroid/graphics/Rect;

    .line 311
    new-instance v0, Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-direct {v0, p0}, Lcom/google/android/material/internal/TextDrawableHelper;-><init>(Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;)V

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 312
    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 315
    new-instance v0, Lcom/google/android/material/badge/BadgeState;

    move-object v2, v0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/google/android/material/badge/BadgeState;-><init>(Landroid/content/Context;IIILcom/google/android/material/badge/BadgeState$State;)V

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 316
    new-instance p2, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 320
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasBadgeContent()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 321
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getBadgeWithTextShapeAppearanceResId()I

    move-result p3

    goto :goto_0

    .line 322
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getBadgeShapeAppearanceResId()I

    move-result p3

    .line 323
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasBadgeContent()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 324
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getBadgeWithTextShapeAppearanceOverlayResId()I

    move-result p4

    goto :goto_1

    .line 325
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getBadgeShapeAppearanceOverlayResId()I

    move-result p4

    .line 318
    :goto_1
    invoke-static {p1, p3, p4}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p1

    .line 326
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    iput-object p2, p0, Lcom/google/android/material/badge/BadgeDrawable;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 327
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->restoreState()V

    return-void
.end method

.method private autoAdjustWithinGrandparentBounds(Landroid/view/View;)V
    .locals 6

    .line 1338
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getCustomBadgeParent()Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1340
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 1343
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    .line 1344
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    .line 1346
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    move v5, v0

    move-object v0, p1

    move p1, v5

    goto :goto_0

    .line 1347
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->isAnchorViewWrappedInCompatParent()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1348
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-nez p1, :cond_2

    return-void

    .line 1351
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result p1

    .line 1352
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v2

    .line 1353
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_3
    move p1, v1

    move v2, p1

    .line 1360
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/google/android/material/badge/BadgeDrawable;->getTopCutOff(Landroid/view/View;F)F

    move-result v3

    .line 1361
    invoke-direct {p0, v0, v2}, Lcom/google/android/material/badge/BadgeDrawable;->getLeftCutOff(Landroid/view/View;F)F

    move-result v4

    .line 1362
    invoke-direct {p0, v0, p1}, Lcom/google/android/material/badge/BadgeDrawable;->getBottomCutOff(Landroid/view/View;F)F

    move-result p1

    .line 1363
    invoke-direct {p0, v0, v2}, Lcom/google/android/material/badge/BadgeDrawable;->getRightCutoff(Landroid/view/View;F)F

    move-result v0

    cmpg-float v2, v3, v1

    if-gez v2, :cond_4

    iget v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterY:F

    .line 1367
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterY:F

    :cond_4
    cmpg-float v2, v4, v1

    if-gez v2, :cond_5

    iget v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterX:F

    .line 1370
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterX:F

    :cond_5
    cmpl-float v2, p1, v1

    if-lez v2, :cond_6

    iget v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterY:F

    .line 1373
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float/2addr v2, p1

    iput v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterY:F

    :cond_6
    cmpl-float p1, v0, v1

    if-lez p1, :cond_7

    iget p1, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterX:F

    .line 1376
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterX:F

    :cond_7
    return-void
.end method

.method private calculateCenterAndBounds(Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 5

    .line 1255
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasBadgeContent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    iget v0, v0, Lcom/google/android/material/badge/BadgeState;->badgeWithTextRadius:F

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    iget v0, v0, Lcom/google/android/material/badge/BadgeState;->badgeRadius:F

    :goto_0
    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->cornerRadius:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_1

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeHeight:F

    goto :goto_3

    .line 1261
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasBadgeContent()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    iget v0, v0, Lcom/google/android/material/badge/BadgeState;->badgeWithTextWidth:F

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    iget v0, v0, Lcom/google/android/material/badge/BadgeState;->badgeWidth:F

    :goto_1
    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    .line 1263
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasBadgeContent()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    iget v0, v0, Lcom/google/android/material/badge/BadgeState;->badgeWithTextHeight:F

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    iget v0, v0, Lcom/google/android/material/badge/BadgeState;->badgeHeight:F

    :goto_2
    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeHeight:F

    .line 1268
    :goto_3
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasBadgeContent()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1269
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getBadgeContent()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    iget-object v3, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 1274
    invoke-virtual {v3, v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextWidth(Ljava/lang/String;)F

    move-result v3

    div-float/2addr v3, v2

    iget-object v4, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 1275
    invoke-virtual {v4}, Lcom/google/android/material/badge/BadgeState;->getBadgeHorizontalPadding()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 1272
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeHeight:F

    iget-object v3, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 1280
    invoke-virtual {v3, v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextHeight(Ljava/lang/String;)F

    move-result v0

    div-float/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 1281
    invoke-virtual {v2}, Lcom/google/android/material/badge/BadgeState;->getBadgeVerticalPadding()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    .line 1278
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeHeight:F

    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    .line 1284
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    .line 1287
    :cond_4
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getTotalVerticalOffsetForState()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 1289
    invoke-virtual {v1}, Lcom/google/android/material/badge/BadgeState;->getBadgeGravity()I

    move-result v1

    const v2, 0x800053

    if-eq v1, v2, :cond_5

    const v3, 0x800055

    if-eq v1, v3, :cond_5

    .line 1297
    iget v1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    int-to-float v0, v1

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterY:F

    goto :goto_4

    .line 1292
    :cond_5
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterY:F

    .line 1301
    :goto_4
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getTotalHorizontalOffsetForState()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 1304
    invoke-virtual {v1}, Lcom/google/android/material/badge/BadgeState;->getBadgeGravity()I

    move-result v1

    const v3, 0x800033

    if-eq v1, v3, :cond_7

    if-eq v1, v2, :cond_7

    .line 1316
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_6

    .line 1317
    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    add-float/2addr p1, v1

    int-to-float v0, v0

    sub-float/2addr p1, v0

    goto :goto_5

    .line 1318
    :cond_6
    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    sub-float/2addr p1, v1

    int-to-float v0, v0

    add-float/2addr p1, v0

    :goto_5
    iput p1, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterX:F

    goto :goto_7

    .line 1308
    :cond_7
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_8

    .line 1309
    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    sub-float/2addr p1, v1

    int-to-float v0, v0

    add-float/2addr p1, v0

    goto :goto_6

    .line 1310
    :cond_8
    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    add-float/2addr p1, v1

    int-to-float v0, v0

    sub-float/2addr p1, v0

    :goto_6
    iput p1, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterX:F

    :goto_7
    iget-object p1, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 1322
    invoke-virtual {p1}, Lcom/google/android/material/badge/BadgeState;->isAutoAdjustedToGrandparentBounds()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1323
    invoke-direct {p0, p2}, Lcom/google/android/material/badge/BadgeDrawable;->autoAdjustWithinGrandparentBounds(Landroid/view/View;)V

    :cond_9
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/google/android/material/badge/BadgeDrawable;
    .locals 7

    .line 246
    new-instance v6, Lcom/google/android/material/badge/BadgeDrawable;

    const/4 v2, 0x0

    sget v3, Lcom/google/android/material/badge/BadgeDrawable;->DEFAULT_THEME_ATTR:I

    sget v4, Lcom/google/android/material/badge/BadgeDrawable;->DEFAULT_STYLE:I

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/badge/BadgeDrawable;-><init>(Landroid/content/Context;IIILcom/google/android/material/badge/BadgeState$State;)V

    return-object v6
.end method

.method public static createFromResource(Landroid/content/Context;I)Lcom/google/android/material/badge/BadgeDrawable;
    .locals 7

    .line 263
    new-instance v6, Lcom/google/android/material/badge/BadgeDrawable;

    sget v3, Lcom/google/android/material/badge/BadgeDrawable;->DEFAULT_THEME_ATTR:I

    sget v4, Lcom/google/android/material/badge/BadgeDrawable;->DEFAULT_STYLE:I

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/badge/BadgeDrawable;-><init>(Landroid/content/Context;IIILcom/google/android/material/badge/BadgeState$State;)V

    return-object v6
.end method

.method static createFromSavedState(Landroid/content/Context;Lcom/google/android/material/badge/BadgeState$State;)Lcom/google/android/material/badge/BadgeDrawable;
    .locals 7

    .line 240
    new-instance v6, Lcom/google/android/material/badge/BadgeDrawable;

    const/4 v2, 0x0

    sget v3, Lcom/google/android/material/badge/BadgeDrawable;->DEFAULT_THEME_ATTR:I

    sget v4, Lcom/google/android/material/badge/BadgeDrawable;->DEFAULT_STYLE:I

    move-object v0, v6

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/badge/BadgeDrawable;-><init>(Landroid/content/Context;IIILcom/google/android/material/badge/BadgeState$State;)V

    return-object v6
.end method

.method private drawBadgeContent(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1427
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getBadgeContent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1429
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 1431
    invoke-virtual {v2}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v2

    const/4 v3, 0x0

    .line 1432
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterY:F

    .line 1441
    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterX:F

    .line 1445
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-gtz v1, :cond_0

    float-to-int v1, v2

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    :goto_0
    int-to-float v1, v1

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 1446
    invoke-virtual {p0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object p0

    .line 1442
    invoke-virtual {p1, v0, v3, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private getBadgeContent()Ljava/lang/String;
    .locals 1

    .line 1456
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1457
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getTextBadgeText()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1458
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasNumber()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1459
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getNumberBadgeText()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getBottomCutOff(Landroid/view/View;F)F
    .locals 2

    .line 1399
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1400
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterY:F

    iget p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeHeight:F

    add-float/2addr v1, p0

    .line 1404
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    sub-float/2addr p0, p1

    sub-float/2addr v1, p0

    add-float/2addr v1, p2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private getEmptyContentDescription()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 852
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeState;->getContentDescriptionNumberless()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private getLeftCutOff(Landroid/view/View;F)F
    .locals 1

    iget v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterX:F

    iget p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    sub-float/2addr v0, p0

    .line 1391
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p0

    add-float/2addr v0, p0

    add-float/2addr v0, p2

    return v0
.end method

.method private getNumberBadgeText()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->maxBadgeNumber:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_2

    .line 1492
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getNumber()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->maxBadgeNumber:I

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->contextRef:Ljava/lang/ref/WeakReference;

    .line 1495
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 1501
    invoke-virtual {v1}, Lcom/google/android/material/badge/BadgeState;->getNumberLocale()Ljava/util/Locale;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$string;->mtrl_exceed_max_badge_number_suffix:I

    .line 1502
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->maxBadgeNumber:I

    .line 1503
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "+"

    filled-new-array {p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    .line 1500
    invoke-static {v1, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 1493
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getNumberLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getNumber()I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getNumberContentDescription()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 823
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getContentDescriptionQuantityStrings()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->contextRef:Ljava/lang/ref/WeakReference;

    .line 824
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->maxBadgeNumber:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_2

    .line 828
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getNumber()I

    move-result v1

    iget v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->maxBadgeNumber:I

    if-gt v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 835
    invoke-virtual {v1}, Lcom/google/android/material/badge/BadgeState;->getContentDescriptionExceedsMaxBadgeNumberStringResource()I

    move-result v1

    iget p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->maxBadgeNumber:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 834
    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 830
    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 832
    invoke-virtual {v1}, Lcom/google/android/material/badge/BadgeState;->getContentDescriptionQuantityStrings()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getNumber()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getNumber()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 831
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v1
.end method

.method private getRightCutoff(Landroid/view/View;F)F
    .locals 2

    .line 1415
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1416
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterX:F

    iget p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    add-float/2addr v1, p0

    .line 1420
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    sub-float/2addr p0, p1

    sub-float/2addr v1, p0

    add-float/2addr v1, p2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private getTextBadgeText()Ljava/lang/String;
    .locals 3

    .line 1467
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1468
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getMaxCharacterCount()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_0
    if-eqz v0, :cond_2

    .line 1473
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_2

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->contextRef:Ljava/lang/ref/WeakReference;

    .line 1474
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    if-nez p0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    .line 1479
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1480
    sget v1, Lcom/google/android/material/R$string;->m3_exceed_max_badge_text_suffix:I

    .line 1481
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\u2026"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 1480
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method private getTextContentDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 843
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getContentDescriptionForText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 847
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTopCutOff(Landroid/view/View;F)F
    .locals 1

    iget v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterY:F

    iget p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeHeight:F

    sub-float/2addr v0, p0

    .line 1384
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p0

    add-float/2addr v0, p0

    add-float/2addr v0, p2

    return v0
.end method

.method private getTotalHorizontalOffsetForState()I
    .locals 3

    .line 1244
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasBadgeContent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 1245
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getHorizontalOffsetWithText()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 1246
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getHorizontalOffsetWithoutText()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 1248
    iget v1, v1, Lcom/google/android/material/badge/BadgeState;->offsetAlignmentMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1249
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasBadgeContent()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    iget v1, v1, Lcom/google/android/material/badge/BadgeState;->horizontalInsetWithText:I

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    iget v1, v1, Lcom/google/android/material/badge/BadgeState;->horizontalInset:I

    :goto_1
    add-int/2addr v0, v1

    :cond_2
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 1251
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeState;->getAdditionalHorizontalOffset()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private getTotalVerticalOffsetForState()I
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 1218
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getVerticalOffsetWithoutText()I

    move-result v0

    .line 1219
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasBadgeContent()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 1220
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getVerticalOffsetWithText()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->contextRef:Ljava/lang/ref/WeakReference;

    .line 1221
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 1225
    invoke-static {v1}, Lcom/google/android/material/resources/MaterialResources;->getFontScale(Landroid/content/Context;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    const/4 v3, 0x0

    const v4, 0x3e99999a    # 0.3f

    .line 1224
    invoke-static {v3, v2, v4, v2, v1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 1228
    invoke-virtual {v2}, Lcom/google/android/material/badge/BadgeState;->getLargeFontVerticalOffsetAdjustment()I

    move-result v2

    sub-int v2, v0, v2

    .line 1227
    invoke-static {v0, v2, v1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IIF)I

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 1236
    iget v1, v1, Lcom/google/android/material/badge/BadgeState;->offsetAlignmentMode:I

    if-nez v1, :cond_1

    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeHeight:F

    .line 1237
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sub-int/2addr v0, v1

    :cond_1
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 1239
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeState;->getAdditionalVerticalOffset()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private hasBadgeContent()Z
    .locals 1

    .line 1451
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasText()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasNumber()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isAnchorViewWrappedInCompatParent()Z
    .locals 1

    .line 397
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getCustomBadgeParent()Landroid/widget/FrameLayout;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 399
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    sget v0, Lcom/google/android/material/R$id;->mtrl_anchor_parent:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onAlphaUpdated()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 727
    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 728
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->invalidateSelf()V

    return-void
.end method

.method private onBackgroundColorUpdated()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 479
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getBackgroundColor()I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 480
    invoke-virtual {v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getFillColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 481
    invoke-virtual {v1, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 482
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method private onBadgeContentUpdated()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    const/4 v1, 0x1

    .line 1509
    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/TextDrawableHelper;->setTextSizeDirty(Z)V

    .line 1510
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onBadgeShapeAppearanceUpdated()V

    .line 1511
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    .line 1512
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->invalidateSelf()V

    return-void
.end method

.method private onBadgeGravityUpdated()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->anchorViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 699
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->anchorViewRef:Ljava/lang/ref/WeakReference;

    .line 701
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->customBadgeParentRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 700
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/badge/BadgeDrawable;->updateBadgeCoordinates(Landroid/view/View;Landroid/widget/FrameLayout;)V

    :cond_1
    return-void
.end method

.method private onBadgeShapeAppearanceUpdated()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->contextRef:Ljava/lang/ref/WeakReference;

    .line 1165
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 1172
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasBadgeContent()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 1173
    invoke-virtual {v2}, Lcom/google/android/material/badge/BadgeState;->getBadgeWithTextShapeAppearanceResId()I

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 1174
    invoke-virtual {v2}, Lcom/google/android/material/badge/BadgeState;->getBadgeShapeAppearanceResId()I

    move-result v2

    .line 1175
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasBadgeContent()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 1176
    invoke-virtual {v3}, Lcom/google/android/material/badge/BadgeState;->getBadgeWithTextShapeAppearanceOverlayResId()I

    move-result v3

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 1177
    invoke-virtual {v3}, Lcom/google/android/material/badge/BadgeState;->getBadgeShapeAppearanceOverlayResId()I

    move-result v3

    .line 1170
    :goto_1
    invoke-static {v0, v2, v3}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 1178
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    .line 1169
    invoke-virtual {v1, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 1179
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->invalidateSelf()V

    return-void
.end method

.method private onBadgeTextAppearanceUpdated()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->contextRef:Ljava/lang/ref/WeakReference;

    .line 1106
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 1110
    :cond_0
    new-instance v1, Lcom/google/android/material/resources/TextAppearance;

    iget-object v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v2}, Lcom/google/android/material/badge/BadgeState;->getTextAppearanceResId()I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 1111
    invoke-virtual {v2}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    move-result-object v2

    if-ne v2, v1, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 1114
    invoke-virtual {v2, v1, v0}, Lcom/google/android/material/internal/TextDrawableHelper;->setTextAppearance(Lcom/google/android/material/resources/TextAppearance;Landroid/content/Context;)V

    .line 1115
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onBadgeTextColorUpdated()V

    .line 1116
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    .line 1117
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->invalidateSelf()V

    return-void
.end method

.method private onBadgeTextColorUpdated()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 511
    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v1}, Lcom/google/android/material/badge/BadgeState;->getBadgeTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 512
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->invalidateSelf()V

    return-void
.end method

.method private onMaxBadgeLengthUpdated()V
    .locals 2

    .line 671
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateMaxBadgeNumber()V

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    const/4 v1, 0x1

    .line 672
    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/TextDrawableHelper;->setTextSizeDirty(Z)V

    .line 673
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    .line 674
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->invalidateSelf()V

    return-void
.end method

.method private onNumberUpdated()V
    .locals 1

    .line 574
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasText()Z

    move-result v0

    if-nez v0, :cond_0

    .line 575
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onBadgeContentUpdated()V

    :cond_0
    return-void
.end method

.method private onTextUpdated()V
    .locals 0

    .line 621
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onBadgeContentUpdated()V

    return-void
.end method

.method private onVisibilityUpdated()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 276
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    .line 277
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/badge/BadgeDrawable;->setVisible(ZZ)Z

    .line 280
    sget-boolean v1, Lcom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getCustomBadgeParent()Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getCustomBadgeParent()Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    return-void
.end method

.method private restoreState()V
    .locals 0

    .line 286
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onBadgeShapeAppearanceUpdated()V

    .line 287
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onBadgeTextAppearanceUpdated()V

    .line 289
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onMaxBadgeLengthUpdated()V

    .line 291
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onBadgeContentUpdated()V

    .line 292
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onAlphaUpdated()V

    .line 293
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onBackgroundColorUpdated()V

    .line 294
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onBadgeTextColorUpdated()V

    .line 295
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onBadgeGravityUpdated()V

    .line 297
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    .line 298
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onVisibilityUpdated()V

    return-void
.end method

.method private tryWrapAnchorInCompatParent(Landroid/view/View;)V
    .locals 5

    .line 413
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    sget v2, Lcom/google/android/material/R$id;->mtrl_anchor_parent:I

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->customBadgeParentRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    .line 415
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    :cond_1
    return-void

    .line 419
    :cond_2
    invoke-static {p1}, Lcom/google/android/material/badge/BadgeDrawable;->updateAnchorParentToNotClip(Landroid/view/View;)V

    .line 422
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 423
    sget v2, Lcom/google/android/material/R$id;->mtrl_anchor_parent:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setId(I)V

    const/4 v2, 0x0

    .line 424
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 425
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 426
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 427
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 428
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    .line 430
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 431
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 432
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 435
    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 436
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 437
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->customBadgeParentRef:Ljava/lang/ref/WeakReference;

    .line 441
    new-instance v0, Lcom/google/android/material/badge/BadgeDrawable$1;

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/material/badge/BadgeDrawable$1;-><init>(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;Landroid/widget/FrameLayout;)V

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static updateAnchorParentToNotClip(Landroid/view/View;)V
    .locals 1

    .line 451
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 452
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 453
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    return-void
.end method

.method private updateCenterAndBounds()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->contextRef:Ljava/lang/ref/WeakReference;

    .line 1183
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->anchorViewRef:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1184
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v0, :cond_7

    if-nez v1, :cond_1

    goto :goto_1

    .line 1188
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeBounds:Landroid/graphics/Rect;

    .line 1189
    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1191
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1193
    invoke-virtual {v1, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/google/android/material/badge/BadgeDrawable;->customBadgeParentRef:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_2

    .line 1195
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    :cond_2
    if-nez v2, :cond_3

    .line 1196
    sget-boolean v4, Lcom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    if-eqz v4, :cond_5

    :cond_3
    if-nez v2, :cond_4

    .line 1199
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1200
    :cond_4
    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1203
    :cond_5
    invoke-direct {p0, v3, v1}, Lcom/google/android/material/badge/BadgeDrawable;->calculateCenterAndBounds(Landroid/graphics/Rect;Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeBounds:Landroid/graphics/Rect;

    iget v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterX:F

    iget v3, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterY:F

    iget v4, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    iget v5, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeHeight:F

    .line 1205
    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/material/badge/BadgeUtils;->updateBadgeBounds(Landroid/graphics/Rect;FFFF)V

    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->cornerRadius:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 1210
    invoke-virtual {v2, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setCornerSize(F)V

    :cond_6
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeBounds:Landroid/graphics/Rect;

    .line 1212
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeBounds:Landroid/graphics/Rect;

    .line 1213
    invoke-virtual {v0, p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_7
    :goto_1
    return-void
.end method

.method private updateMaxBadgeNumber()V
    .locals 4

    .line 1516
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getMaxCharacterCount()I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    .line 1519
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getMaxCharacterCount()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->maxBadgeNumber:I

    goto :goto_0

    .line 1521
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getMaxNumber()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->maxBadgeNumber:I

    :goto_0
    return-void
.end method


# virtual methods
.method public clearNumber()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 565
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->hasNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 566
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->clearNumber()V

    .line 567
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onNumberUpdated()V

    :cond_0
    return-void
.end method

.method public clearText()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 613
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 614
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->clearText()V

    .line 615
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onTextUpdated()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 750
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 751
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getAlpha()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 754
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 755
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasBadgeContent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 756
    invoke-direct {p0, p1}, Lcom/google/android/material/badge/BadgeDrawable;->drawBadgeContent(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_0
    return-void
.end method

.method getAdditionalHorizontalOffset()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 972
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeState;->getAdditionalHorizontalOffset()I

    move-result p0

    return p0
.end method

.method getAdditionalVerticalOffset()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 1074
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeState;->getAdditionalVerticalOffset()I

    move-result p0

    return p0
.end method

.method public getAlpha()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 717
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeState;->getAlpha()I

    move-result p0

    return p0
.end method

.method public getBackgroundColor()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 464
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getFillColor()Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    return p0
.end method

.method public getBadgeGravity()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 679
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeState;->getBadgeGravity()I

    move-result p0

    return p0
.end method

.method public getBadgeNumberLocale()Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 518
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeState;->getNumberLocale()Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public getBadgeTextColor()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 494
    invoke-virtual {p0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getColor()I

    move-result p0

    return p0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 809
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 812
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 813
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getTextContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 814
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasNumber()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 815
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getNumberContentDescription()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 817
    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getEmptyContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getCustomBadgeParent()Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->customBadgeParentRef:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    .line 405
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getHorizontalOffset()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 918
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeState;->getHorizontalOffsetWithoutText()I

    move-result p0

    return p0
.end method

.method public getHorizontalOffsetWithText()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 958
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeState;->getHorizontalOffsetWithText()I

    move-result p0

    return p0
.end method

.method public getHorizontalOffsetWithoutText()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 938
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeState;->getHorizontalOffsetWithoutText()I

    move-result p0

    return p0
.end method

.method public getHorizontalPadding()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 873
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeState;->getBadgeHorizontalPadding()I

    move-result p0

    return p0
.end method

.method public getIntrinsicHeight()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeBounds:Landroid/graphics/Rect;

    .line 739
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeBounds:Landroid/graphics/Rect;

    .line 745
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    return p0
.end method

.method public getLargeFontVerticalOffsetAdjustment()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 1059
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeState;->getLargeFontVerticalOffsetAdjustment()I

    move-result p0

    return p0
.end method

.method public getMaxCharacterCount()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 631
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeState;->getMaxCharacterCount()I

    move-result p0

    return p0
.end method

.method public getMaxNumber()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 654
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeState;->getMaxNumber()I

    move-result p0

    return p0
.end method

.method public getNumber()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 544
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->hasNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeState;->getNumber()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method getSavedState()Lcom/google/android/material/badge/BadgeState$State;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 233
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeState;->getOverridingState()Lcom/google/android/material/badge/BadgeState$State;

    move-result-object p0

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 592
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeState;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVerticalOffset()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 996
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeState;->getVerticalOffsetWithoutText()I

    move-result p0

    return p0
.end method

.method public getVerticalOffsetWithText()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 1036
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeState;->getVerticalOffsetWithText()I

    move-result p0

    return p0
.end method

.method public getVerticalOffsetWithoutText()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 1016
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeState;->getVerticalOffsetWithoutText()I

    move-result p0

    return p0
.end method

.method public getVerticalPadding()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 894
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeState;->getBadgeVerticalPadding()I

    move-result p0

    return p0
.end method

.method public hasNumber()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 531
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->hasText()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeState;->hasNumber()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasText()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 581
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeState;->hasText()Z

    move-result p0

    return p0
.end method

.method public isStateful()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onStateChange([I)Z
    .locals 0

    .line 773
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result p0

    return p0
.end method

.method public onTextSizeChange()V
    .locals 0

    .line 768
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->invalidateSelf()V

    return-void
.end method

.method setAdditionalHorizontalOffset(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 967
    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setAdditionalHorizontalOffset(I)V

    .line 968
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    return-void
.end method

.method setAdditionalVerticalOffset(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 1068
    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setAdditionalVerticalOffset(I)V

    .line 1069
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 722
    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setAlpha(I)V

    .line 723
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onAlphaUpdated()V

    return-void
.end method

.method public setAutoAdjustToWithinGrandparentBounds(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 1085
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->isAutoAdjustedToGrandparentBounds()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 1088
    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setAutoAdjustToGrandparentBounds(Z)V

    iget-object p1, p0, Lcom/google/android/material/badge/BadgeDrawable;->anchorViewRef:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    .line 1089
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/badge/BadgeDrawable;->anchorViewRef:Ljava/lang/ref/WeakReference;

    .line 1090
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/google/android/material/badge/BadgeDrawable;->autoAdjustWithinGrandparentBounds(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 474
    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setBackgroundColor(I)V

    .line 475
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onBackgroundColorUpdated()V

    return-void
.end method

.method public setBadgeGravity(I)V
    .locals 2

    const v0, 0x800053

    if-eq p1, v0, :cond_0

    const v0, 0x800055

    if-ne p1, v0, :cond_1

    :cond_0
    const-string v0, "Badge"

    const-string v1, "Bottom badge gravities are deprecated; please use a top gravity instead."

    .line 690
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 692
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getBadgeGravity()I

    move-result v0

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 693
    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setBadgeGravity(I)V

    .line 694
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onBadgeGravityUpdated()V

    :cond_2
    return-void
.end method

.method public setBadgeNumberLocale(Ljava/util/Locale;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 523
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getNumberLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 524
    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setNumberLocale(Ljava/util/Locale;)V

    .line 525
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setBadgeTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 504
    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 505
    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setBadgeTextColor(I)V

    .line 506
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onBadgeTextColorUpdated()V

    :cond_0
    return-void
.end method

.method public setBadgeWithTextShapeAppearance(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 1149
    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setBadgeWithTextShapeAppearanceResId(I)V

    .line 1150
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onBadgeShapeAppearanceUpdated()V

    return-void
.end method

.method public setBadgeWithTextShapeAppearanceOverlay(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 1160
    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setBadgeWithTextShapeAppearanceOverlayResId(I)V

    .line 1161
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onBadgeShapeAppearanceUpdated()V

    return-void
.end method

.method public setBadgeWithoutTextShapeAppearance(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 1127
    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setBadgeShapeAppearanceResId(I)V

    .line 1128
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onBadgeShapeAppearanceUpdated()V

    return-void
.end method

.method public setBadgeWithoutTextShapeAppearanceOverlay(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 1138
    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setBadgeShapeAppearanceOverlayResId(I)V

    .line 1139
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onBadgeShapeAppearanceUpdated()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setContentDescriptionExceedsMaxBadgeNumberStringResource(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 804
    invoke-virtual {p0, p1}, Lcom/google/android/material/badge/BadgeState;->setContentDescriptionExceedsMaxBadgeNumberStringResource(I)V

    return-void
.end method

.method public setContentDescriptionForText(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 782
    invoke-virtual {p0, p1}, Lcom/google/android/material/badge/BadgeState;->setContentDescriptionForText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setContentDescriptionNumberless(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 789
    invoke-virtual {p0, p1}, Lcom/google/android/material/badge/BadgeState;->setContentDescriptionNumberless(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setContentDescriptionQuantityStringsResource(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 796
    invoke-virtual {p0, p1}, Lcom/google/android/material/badge/BadgeState;->setContentDescriptionQuantityStringsResource(I)V

    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0

    .line 905
    invoke-virtual {p0, p1}, Lcom/google/android/material/badge/BadgeDrawable;->setHorizontalOffsetWithoutText(I)V

    .line 906
    invoke-virtual {p0, p1}, Lcom/google/android/material/badge/BadgeDrawable;->setHorizontalOffsetWithText(I)V

    return-void
.end method

.method public setHorizontalOffsetWithText(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 948
    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setHorizontalOffsetWithText(I)V

    .line 949
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    return-void
.end method

.method public setHorizontalOffsetWithoutText(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 928
    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setHorizontalOffsetWithoutText(I)V

    .line 929
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    return-void
.end method

.method public setHorizontalPadding(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 864
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getBadgeHorizontalPadding()I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 865
    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setBadgeHorizontalPadding(I)V

    .line 866
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    :cond_0
    return-void
.end method

.method public setLargeFontVerticalOffsetAdjustment(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 1048
    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setLargeFontVerticalOffsetAdjustment(I)V

    .line 1049
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    return-void
.end method

.method public setMaxCharacterCount(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 641
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getMaxCharacterCount()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 642
    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setMaxCharacterCount(I)V

    .line 643
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onMaxBadgeLengthUpdated()V

    :cond_0
    return-void
.end method

.method public setMaxNumber(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 664
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getMaxNumber()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 665
    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setMaxNumber(I)V

    .line 666
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onMaxBadgeLengthUpdated()V

    :cond_0
    return-void
.end method

.method public setNumber(I)V
    .locals 1

    const/4 v0, 0x0

    .line 556
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 557
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getNumber()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 558
    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setNumber(I)V

    .line 559
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onNumberUpdated()V

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 603
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 604
    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setText(Ljava/lang/String;)V

    .line 605
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onTextUpdated()V

    :cond_0
    return-void
.end method

.method public setTextAppearance(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 1101
    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setTextAppearanceResId(I)V

    .line 1102
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onBadgeTextAppearanceUpdated()V

    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 0

    .line 983
    invoke-virtual {p0, p1}, Lcom/google/android/material/badge/BadgeDrawable;->setVerticalOffsetWithoutText(I)V

    .line 984
    invoke-virtual {p0, p1}, Lcom/google/android/material/badge/BadgeDrawable;->setVerticalOffsetWithText(I)V

    return-void
.end method

.method public setVerticalOffsetWithText(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 1026
    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setVerticalOffsetWithText(I)V

    .line 1027
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    return-void
.end method

.method public setVerticalOffsetWithoutText(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 1006
    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setVerticalOffsetWithoutText(I)V

    .line 1007
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    return-void
.end method

.method public setVerticalPadding(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 885
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getBadgeVerticalPadding()I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 886
    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setBadgeVerticalPadding(I)V

    .line 887
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    :cond_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 271
    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setVisible(Z)V

    .line 272
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onVisibilityUpdated()V

    return-void
.end method

.method public updateBadgeCoordinates(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 363
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/badge/BadgeDrawable;->updateBadgeCoordinates(Landroid/view/View;Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public updateBadgeCoordinates(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 344
    instance-of v0, p2, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 347
    check-cast p2, Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/badge/BadgeDrawable;->updateBadgeCoordinates(Landroid/view/View;Landroid/widget/FrameLayout;)V

    return-void

    .line 345
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "customBadgeParent must be a FrameLayout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateBadgeCoordinates(Landroid/view/View;Landroid/widget/FrameLayout;)V
    .locals 1

    .line 382
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->anchorViewRef:Ljava/lang/ref/WeakReference;

    .line 384
    sget-boolean v0, Lcom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 385
    invoke-direct {p0, p1}, Lcom/google/android/material/badge/BadgeDrawable;->tryWrapAnchorInCompatParent(Landroid/view/View;)V

    goto :goto_0

    .line 387
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->customBadgeParentRef:Ljava/lang/ref/WeakReference;

    .line 389
    :goto_0
    sget-boolean p2, Lcom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    if-nez p2, :cond_1

    .line 390
    invoke-static {p1}, Lcom/google/android/material/badge/BadgeDrawable;->updateAnchorParentToNotClip(Landroid/view/View;)V

    .line 392
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    .line 393
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->invalidateSelf()V

    return-void
.end method
