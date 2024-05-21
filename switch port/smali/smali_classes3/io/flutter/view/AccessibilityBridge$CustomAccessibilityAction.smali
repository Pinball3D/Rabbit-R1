.class Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;
.super Ljava/lang/Object;
.source "AccessibilityBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/AccessibilityBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomAccessibilityAction"
.end annotation


# instance fields
.field private hint:Ljava/lang/String;

.field private id:I

.field private label:Ljava/lang/String;

.field private overrideId:I

.field private resourceId:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 2279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->resourceId:I

    iput v0, p0, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->id:I

    iput v0, p0, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->overrideId:I

    return-void
.end method

.method static synthetic access$3000(Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;)Ljava/lang/String;
    .locals 0

    .line 2278
    iget-object p0, p0, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->hint:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3002(Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2278
    iput-object p1, p0, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->hint:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3700(Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;)I
    .locals 0

    .line 2278
    iget p0, p0, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->resourceId:I

    return p0
.end method

.method static synthetic access$3702(Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;I)I
    .locals 0

    .line 2278
    iput p1, p0, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->resourceId:I

    return p1
.end method

.method static synthetic access$3800(Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;)Ljava/lang/String;
    .locals 0

    .line 2278
    iget-object p0, p0, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->label:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3802(Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2278
    iput-object p1, p0, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->label:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4600(Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;)I
    .locals 0

    .line 2278
    iget p0, p0, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->id:I

    return p0
.end method

.method static synthetic access$4602(Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;I)I
    .locals 0

    .line 2278
    iput p1, p0, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->id:I

    return p1
.end method

.method static synthetic access$4800(Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;)I
    .locals 0

    .line 2278
    iget p0, p0, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->overrideId:I

    return p0
.end method

.method static synthetic access$4802(Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;I)I
    .locals 0

    .line 2278
    iput p1, p0, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->overrideId:I

    return p1
.end method
