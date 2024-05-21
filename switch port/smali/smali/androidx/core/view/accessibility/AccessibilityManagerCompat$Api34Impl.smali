.class Landroidx/core/view/accessibility/AccessibilityManagerCompat$Api34Impl;
.super Ljava/lang/Object;
.source "AccessibilityManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/accessibility/AccessibilityManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api34Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isRequestFromAccessibilityTool(Landroid/view/accessibility/AccessibilityManager;)Z
    .locals 0

    .line 314
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isRequestFromAccessibilityTool()Z

    move-result p0

    return p0
.end method
