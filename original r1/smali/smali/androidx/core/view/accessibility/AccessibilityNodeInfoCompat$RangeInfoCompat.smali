.class public Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RangeInfoCompat"
.end annotation


# static fields
.field public static final RANGE_TYPE_FLOAT:I = 0x1

.field public static final RANGE_TYPE_INT:I = 0x0

.field public static final RANGE_TYPE_PERCENT:I = 0x2


# instance fields
.field final mInfo:Ljava/lang/Object;


# direct methods
.method public constructor <init>(IFFF)V
    .locals 0

    .line 1444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1446
    invoke-static {p1, p2, p3, p4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$Api30Impl;->createRangeInfo(IFFF)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;->mInfo:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;->mInfo:Ljava/lang/Object;

    return-void
.end method

.method public static obtain(IFFF)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;
    .locals 1

    .line 1421
    new-instance v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;

    .line 1422
    invoke-static {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getCurrent()F
    .locals 0

    iget-object p0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;->mInfo:Ljava/lang/Object;

    .line 1461
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getCurrent()F

    move-result p0

    return p0
.end method

.method public getMax()F
    .locals 0

    iget-object p0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;->mInfo:Ljava/lang/Object;

    .line 1474
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getMax()F

    move-result p0

    return p0
.end method

.method public getMin()F
    .locals 0

    iget-object p0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;->mInfo:Ljava/lang/Object;

    .line 1487
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getMin()F

    move-result p0

    return p0
.end method

.method public getType()I
    .locals 0

    iget-object p0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;->mInfo:Ljava/lang/Object;

    .line 1504
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getType()I

    move-result p0

    return p0
.end method
