.class Landroidx/core/view/accessibility/AccessibilityEventCompat$Api34Impl;
.super Ljava/lang/Object;
.source "AccessibilityEventCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/accessibility/AccessibilityEventCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api34Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isAccessibilityDataSensitive(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 578
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->isAccessibilityDataSensitive()Z

    move-result p0

    return p0
.end method

.method static setAccessibilityDataSensitive(Landroid/view/accessibility/AccessibilityEvent;Z)V
    .locals 0

    .line 584
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setAccessibilityDataSensitive(Z)V

    return-void
.end method
