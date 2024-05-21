.class Lio/flutter/plugin/platform/SingleViewPresentation$AccessibilityDelegatingFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SingleViewPresentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugin/platform/SingleViewPresentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccessibilityDelegatingFrameLayout"
.end annotation


# instance fields
.field private final accessibilityEventsDelegate:Lio/flutter/plugin/platform/AccessibilityEventsDelegate;

.field private final embeddedView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/flutter/plugin/platform/AccessibilityEventsDelegate;Landroid/view/View;)V
    .locals 0

    .line 482
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lio/flutter/plugin/platform/SingleViewPresentation$AccessibilityDelegatingFrameLayout;->accessibilityEventsDelegate:Lio/flutter/plugin/platform/AccessibilityEventsDelegate;

    iput-object p3, p0, Lio/flutter/plugin/platform/SingleViewPresentation$AccessibilityDelegatingFrameLayout;->embeddedView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/platform/SingleViewPresentation$AccessibilityDelegatingFrameLayout;->accessibilityEventsDelegate:Lio/flutter/plugin/platform/AccessibilityEventsDelegate;

    iget-object p0, p0, Lio/flutter/plugin/platform/SingleViewPresentation$AccessibilityDelegatingFrameLayout;->embeddedView:Landroid/view/View;

    .line 489
    invoke-virtual {v0, p0, p1, p2}, Lio/flutter/plugin/platform/AccessibilityEventsDelegate;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method
