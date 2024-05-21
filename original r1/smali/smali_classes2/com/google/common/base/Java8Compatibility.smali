.class final Lcom/google/common/base/Java8Compatibility;
.super Ljava/lang/Object;
.source "Java8Compatibility.java"


# annotations
.annotation runtime Lcom/google/common/base/ElementTypesAreNonnullByDefault;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 43
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

.method static position(Ljava/nio/Buffer;I)V
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method
