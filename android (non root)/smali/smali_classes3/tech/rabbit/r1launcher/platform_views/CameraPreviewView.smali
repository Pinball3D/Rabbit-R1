.class public final Ltech/rabbit/r1launcher/platform_views/CameraPreviewView;
.super Ljava/lang/Object;
.source "CameraPreviewView.kt"

# interfaces
.implements Lio/flutter/plugin/platform/PlatformView;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0018\u0010\u0006\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\u0006\u0012\u0004\u0018\u00010\t\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/platform_views/CameraPreviewView;",
        "Lio/flutter/plugin/platform/PlatformView;",
        "context",
        "Landroid/content/Context;",
        "id",
        "",
        "creationParams",
        "",
        "",
        "",
        "(Landroid/content/Context;ILjava/util/Map;)V",
        "textureView",
        "Landroid/view/TextureView;",
        "dispose",
        "",
        "getView",
        "Landroid/view/View;",
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
.field public static final $stable:I = 0x8


# instance fields
.field private final textureView:Landroid/view/TextureView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance p2, Landroid/view/TextureView;

    invoke-direct {p2, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Ltech/rabbit/r1launcher/platform_views/CameraPreviewView;->textureView:Landroid/view/TextureView;

    .line 19
    new-instance p1, Ltech/rabbit/r1launcher/platform_views/CameraPreviewView$1;

    invoke-direct {p1, p0}, Ltech/rabbit/r1launcher/platform_views/CameraPreviewView$1;-><init>(Ltech/rabbit/r1launcher/platform_views/CameraPreviewView;)V

    check-cast p1, Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {p2, p1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method public static final synthetic access$getTextureView$p(Ltech/rabbit/r1launcher/platform_views/CameraPreviewView;)Landroid/view/TextureView;
    .locals 0

    .line 14
    iget-object p0, p0, Ltech/rabbit/r1launcher/platform_views/CameraPreviewView;->textureView:Landroid/view/TextureView;

    return-object p0
.end method


# virtual methods
.method public dispose()V
    .locals 0

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 3

    .line 54
    sget-object v0, Ltech/rabbit/r1launcher/platform_views/CameraPreviewView$getView$1;->INSTANCE:Ltech/rabbit/r1launcher/platform_views/CameraPreviewView$getView$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const-wide/16 v1, 0x1

    invoke-static {v1, v2, v0}, Ltech/rabbit/common/utils/KotlinUtilKt;->postDelayOnMainThread(JLkotlin/jvm/functions/Function0;)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/platform_views/CameraPreviewView;->textureView:Landroid/view/TextureView;

    .line 57
    check-cast p0, Landroid/view/View;

    return-object p0
.end method
