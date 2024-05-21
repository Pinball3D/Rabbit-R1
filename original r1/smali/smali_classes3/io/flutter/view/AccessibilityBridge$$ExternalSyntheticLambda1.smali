.class public final synthetic Lio/flutter/view/AccessibilityBridge$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/flutter/util/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge;->lambda$shouldSetCollectionInfo$1(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Z

    move-result p0

    return p0
.end method
