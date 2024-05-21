.class Landroidx/compose/ui/platform/coreshims/ViewCompatShims$Api29Impl;
.super Ljava/lang/Object;
.source "ViewCompatShims.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/platform/coreshims/ViewCompatShims;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api29Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getContentCaptureSession(Landroid/view/View;)Landroid/view/contentcapture/ContentCaptureSession;
    .locals 0

    .line 174
    invoke-virtual {p0}, Landroid/view/View;->getContentCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object p0

    return-object p0
.end method
