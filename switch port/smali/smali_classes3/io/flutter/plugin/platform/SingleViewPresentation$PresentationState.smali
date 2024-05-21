.class Lio/flutter/plugin/platform/SingleViewPresentation$PresentationState;
.super Ljava/lang/Object;
.source "SingleViewPresentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugin/platform/SingleViewPresentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PresentationState"
.end annotation


# instance fields
.field private fakeWindowViewGroup:Lio/flutter/plugin/platform/SingleViewPresentation$FakeWindowViewGroup;

.field private platformView:Lio/flutter/plugin/platform/PlatformView;

.field private windowManagerHandler:Lio/flutter/plugin/platform/SingleViewPresentation$WindowManagerHandler;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/flutter/plugin/platform/SingleViewPresentation$PresentationState;)Lio/flutter/plugin/platform/PlatformView;
    .locals 0

    .line 63
    iget-object p0, p0, Lio/flutter/plugin/platform/SingleViewPresentation$PresentationState;->platformView:Lio/flutter/plugin/platform/PlatformView;

    return-object p0
.end method

.method static synthetic access$002(Lio/flutter/plugin/platform/SingleViewPresentation$PresentationState;Lio/flutter/plugin/platform/PlatformView;)Lio/flutter/plugin/platform/PlatformView;
    .locals 0

    .line 63
    iput-object p1, p0, Lio/flutter/plugin/platform/SingleViewPresentation$PresentationState;->platformView:Lio/flutter/plugin/platform/PlatformView;

    return-object p1
.end method

.method static synthetic access$100(Lio/flutter/plugin/platform/SingleViewPresentation$PresentationState;)Lio/flutter/plugin/platform/SingleViewPresentation$FakeWindowViewGroup;
    .locals 0

    .line 63
    iget-object p0, p0, Lio/flutter/plugin/platform/SingleViewPresentation$PresentationState;->fakeWindowViewGroup:Lio/flutter/plugin/platform/SingleViewPresentation$FakeWindowViewGroup;

    return-object p0
.end method

.method static synthetic access$102(Lio/flutter/plugin/platform/SingleViewPresentation$PresentationState;Lio/flutter/plugin/platform/SingleViewPresentation$FakeWindowViewGroup;)Lio/flutter/plugin/platform/SingleViewPresentation$FakeWindowViewGroup;
    .locals 0

    .line 63
    iput-object p1, p0, Lio/flutter/plugin/platform/SingleViewPresentation$PresentationState;->fakeWindowViewGroup:Lio/flutter/plugin/platform/SingleViewPresentation$FakeWindowViewGroup;

    return-object p1
.end method

.method static synthetic access$200(Lio/flutter/plugin/platform/SingleViewPresentation$PresentationState;)Lio/flutter/plugin/platform/SingleViewPresentation$WindowManagerHandler;
    .locals 0

    .line 63
    iget-object p0, p0, Lio/flutter/plugin/platform/SingleViewPresentation$PresentationState;->windowManagerHandler:Lio/flutter/plugin/platform/SingleViewPresentation$WindowManagerHandler;

    return-object p0
.end method

.method static synthetic access$202(Lio/flutter/plugin/platform/SingleViewPresentation$PresentationState;Lio/flutter/plugin/platform/SingleViewPresentation$WindowManagerHandler;)Lio/flutter/plugin/platform/SingleViewPresentation$WindowManagerHandler;
    .locals 0

    .line 63
    iput-object p1, p0, Lio/flutter/plugin/platform/SingleViewPresentation$PresentationState;->windowManagerHandler:Lio/flutter/plugin/platform/SingleViewPresentation$WindowManagerHandler;

    return-object p1
.end method
