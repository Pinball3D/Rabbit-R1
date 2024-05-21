.class Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat$Api26Impl;
.super Ljava/lang/Object;
.source "AccessibilityWindowInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api26Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isInPictureInPictureMode(Landroid/view/accessibility/AccessibilityWindowInfo;)Z
    .locals 0

    .line 637
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->isInPictureInPictureMode()Z

    move-result p0

    return p0
.end method
