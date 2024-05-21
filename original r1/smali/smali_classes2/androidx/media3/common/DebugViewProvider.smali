.class public interface abstract Landroidx/media3/common/DebugViewProvider;
.super Ljava/lang/Object;
.source "DebugViewProvider.java"


# static fields
.field public static final NONE:Landroidx/media3/common/DebugViewProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Landroidx/media3/common/DebugViewProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/common/DebugViewProvider$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/common/DebugViewProvider;->NONE:Landroidx/media3/common/DebugViewProvider;

    return-void
.end method

.method public static synthetic lambda$static$0(II)Landroid/view/SurfaceView;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public abstract getDebugPreviewSurfaceView(II)Landroid/view/SurfaceView;
.end method
