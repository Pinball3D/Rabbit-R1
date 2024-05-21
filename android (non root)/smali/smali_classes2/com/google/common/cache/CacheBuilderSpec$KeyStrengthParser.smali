.class Lcom/google/common/cache/CacheBuilderSpec$KeyStrengthParser;
.super Ljava/lang/Object;
.source "CacheBuilderSpec.java"

# interfaces
.implements Lcom/google/common/cache/CacheBuilderSpec$ValueParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/CacheBuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeyStrengthParser"
.end annotation


# instance fields
.field private final strength:Lcom/google/common/cache/LocalCache$Strength;


# direct methods
.method public constructor <init>(Lcom/google/common/cache/LocalCache$Strength;)V
    .locals 0

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/cache/CacheBuilderSpec$KeyStrengthParser;->strength:Lcom/google/common/cache/LocalCache$Strength;

    return-void
.end method


# virtual methods
.method public parse(Lcom/google/common/cache/CacheBuilderSpec;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    const-string v2, "key %s does not take values"

    .line 381
    invoke-static {p3, v2, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 382
    iget-object p3, p1, Lcom/google/common/cache/CacheBuilderSpec;->keyStrength:Lcom/google/common/cache/LocalCache$Strength;

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string p3, "%s was already set to %s"

    iget-object v1, p1, Lcom/google/common/cache/CacheBuilderSpec;->keyStrength:Lcom/google/common/cache/LocalCache$Strength;

    invoke-static {v0, p3, p2, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/common/cache/CacheBuilderSpec$KeyStrengthParser;->strength:Lcom/google/common/cache/LocalCache$Strength;

    .line 383
    iput-object p0, p1, Lcom/google/common/cache/CacheBuilderSpec;->keyStrength:Lcom/google/common/cache/LocalCache$Strength;

    return-void
.end method
