.class public final Ltech/rabbit/r1launcher/platform_views/CameraPreviewViewFactory;
.super Lio/flutter/plugin/platform/PlatformViewFactory;
.source "CameraPreviewView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0000\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/platform_views/CameraPreviewViewFactory;",
        "Lio/flutter/plugin/platform/PlatformViewFactory;",
        "()V",
        "create",
        "Lio/flutter/plugin/platform/PlatformView;",
        "context",
        "Landroid/content/Context;",
        "viewId",
        "",
        "args",
        "",
        "app_productionEnvRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Ltech/rabbit/r1launcher/platform_views/CameraPreviewViewFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltech/rabbit/r1launcher/platform_views/CameraPreviewViewFactory;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/platform_views/CameraPreviewViewFactory;-><init>()V

    sput-object v0, Ltech/rabbit/r1launcher/platform_views/CameraPreviewViewFactory;->INSTANCE:Ltech/rabbit/r1launcher/platform_views/CameraPreviewViewFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 65
    sget-object v0, Lio/flutter/plugin/common/StandardMessageCodec;->INSTANCE:Lio/flutter/plugin/common/StandardMessageCodec;

    check-cast v0, Lio/flutter/plugin/common/MessageCodec;

    invoke-direct {p0, v0}, Lio/flutter/plugin/platform/PlatformViewFactory;-><init>(Lio/flutter/plugin/common/MessageCodec;)V

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;ILjava/lang/Object;)Lio/flutter/plugin/platform/PlatformView;
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    check-cast p3, Ljava/util/Map;

    .line 68
    new-instance p0, Ltech/rabbit/r1launcher/platform_views/CameraPreviewView;

    invoke-direct {p0, p1, p2, p3}, Ltech/rabbit/r1launcher/platform_views/CameraPreviewView;-><init>(Landroid/content/Context;ILjava/util/Map;)V

    check-cast p0, Lio/flutter/plugin/platform/PlatformView;

    return-object p0
.end method
