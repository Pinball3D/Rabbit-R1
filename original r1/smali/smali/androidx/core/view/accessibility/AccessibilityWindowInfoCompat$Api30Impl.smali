.class Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat$Api30Impl;
.super Ljava/lang/Object;
.source "AccessibilityWindowInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api30Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static instantiateAccessibilityWindowInfo()Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 1

    .line 649
    new-instance v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;-><init>()V

    return-object v0
.end method
