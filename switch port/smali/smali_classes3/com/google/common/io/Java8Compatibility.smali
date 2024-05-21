.class final Lcom/google/common/io/Java8Compatibility;
.super Ljava/lang/Object;
.source "Java8Compatibility.java"


# annotations
.annotation runtime Lcom/google/common/io/ElementTypesAreNonnullByDefault;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clear(Ljava/nio/Buffer;)V
    .locals 0

    .line 28
    invoke-virtual {p0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    return-void
.end method

.method static flip(Ljava/nio/Buffer;)V
    .locals 0

    .line 32
    invoke-virtual {p0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method static limit(Ljava/nio/Buffer;I)V
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    return-void
.end method

.method static mark(Ljava/nio/Buffer;)V
    .locals 0

    .line 40
    invoke-virtual {p0}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    return-void
.end method

.method static position(Ljava/nio/Buffer;I)V
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method static reset(Ljava/nio/Buffer;)V
    .locals 0

    .line 48
    invoke-virtual {p0}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    return-void
.end method
