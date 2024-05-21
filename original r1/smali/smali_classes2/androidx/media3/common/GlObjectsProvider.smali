.class public interface abstract Landroidx/media3/common/GlObjectsProvider;
.super Ljava/lang/Object;
.source "GlObjectsProvider.java"


# static fields
.field public static final DEFAULT:Landroidx/media3/common/GlObjectsProvider;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Landroidx/media3/common/GlObjectsProvider$1;

    invoke-direct {v0}, Landroidx/media3/common/GlObjectsProvider$1;-><init>()V

    sput-object v0, Landroidx/media3/common/GlObjectsProvider;->DEFAULT:Landroidx/media3/common/GlObjectsProvider;

    return-void
.end method


# virtual methods
.method public abstract createBuffersForTexture(III)Landroidx/media3/common/GlTextureInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation
.end method

.method public abstract createEglContext(Landroid/opengl/EGLDisplay;I[I)Landroid/opengl/EGLContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation
.end method

.method public abstract createEglSurface(Landroid/opengl/EGLDisplay;Ljava/lang/Object;IZ)Landroid/opengl/EGLSurface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation
.end method

.method public abstract createFocusedPlaceholderEglSurface(Landroid/opengl/EGLContext;Landroid/opengl/EGLDisplay;[I)Landroid/opengl/EGLSurface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation
.end method
