.class final Landroidx/media3/common/util/GlProgram$Attribute;
.super Ljava/lang/Object;
.source "GlProgram.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/util/GlProgram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Attribute"
.end annotation


# instance fields
.field private buffer:Ljava/nio/Buffer;

.field private final index:I

.field private final location:I

.field public final name:Ljava/lang/String;

.field private size:I


# direct methods
.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/util/GlProgram$Attribute;->name:Ljava/lang/String;

    iput p2, p0, Landroidx/media3/common/util/GlProgram$Attribute;->index:I

    iput p3, p0, Landroidx/media3/common/util/GlProgram$Attribute;->location:I

    return-void
.end method

.method public static create(II)Landroidx/media3/common/util/GlProgram$Attribute;
    .locals 13

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x8b8a

    const/4 v11, 0x0

    .line 246
    invoke-static {p0, v2, v1, v11}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v2, v1, v11

    .line 248
    new-array v12, v2, [B

    new-array v3, v0, [I

    const/4 v4, 0x0

    new-array v5, v0, [I

    const/4 v6, 0x0

    new-array v7, v0, [I

    const/4 v8, 0x0

    const/4 v10, 0x0

    move v0, p0

    move v1, p1

    move-object v9, v12

    .line 250
    invoke-static/range {v0 .. v10}, Landroid/opengl/GLES20;->glGetActiveAttrib(III[II[II[II[BI)V

    .line 262
    new-instance v0, Ljava/lang/String;

    invoke-static {v12}, Landroidx/media3/common/util/GlProgram;->access$000([B)I

    move-result v1

    invoke-direct {v0, v12, v11, v1}, Ljava/lang/String;-><init>([BII)V

    .line 263
    invoke-static {p0, v0}, Landroidx/media3/common/util/GlProgram;->access$100(ILjava/lang/String;)I

    move-result v1

    .line 265
    new-instance v2, Landroidx/media3/common/util/GlProgram$Attribute;

    invoke-direct {v2, v0, p1, v1}, Landroidx/media3/common/util/GlProgram$Attribute;-><init>(Ljava/lang/String;II)V

    return-object v2
.end method


# virtual methods
.method public bind()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/common/util/GlProgram$Attribute;->buffer:Ljava/nio/Buffer;

    const-string v1, "call setBuffer before bind"

    .line 301
    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/nio/Buffer;

    const v0, 0x8892

    const/4 v1, 0x0

    .line 302
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget v1, p0, Landroidx/media3/common/util/GlProgram$Attribute;->location:I

    iget v2, p0, Landroidx/media3/common/util/GlProgram$Attribute;->size:I

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 303
    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget p0, p0, Landroidx/media3/common/util/GlProgram$Attribute;->index:I

    .line 305
    invoke-static {p0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 306
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    return-void
.end method

.method public setBuffer([FI)V
    .locals 0

    .line 291
    invoke-static {p1}, Landroidx/media3/common/util/GlUtil;->createBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/common/util/GlProgram$Attribute;->buffer:Ljava/nio/Buffer;

    iput p2, p0, Landroidx/media3/common/util/GlProgram$Attribute;->size:I

    return-void
.end method
