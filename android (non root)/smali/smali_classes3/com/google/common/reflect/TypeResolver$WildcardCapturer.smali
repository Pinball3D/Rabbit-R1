.class Lcom/google/common/reflect/TypeResolver$WildcardCapturer;
.super Ljava/lang/Object;
.source "TypeResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/TypeResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WildcardCapturer"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/common/reflect/TypeResolver$WildcardCapturer;


# instance fields
.field private final id:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 448
    new-instance v0, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;

    invoke-direct {v0}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;-><init>()V

    sput-object v0, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->INSTANCE:Lcom/google/common/reflect/TypeResolver$WildcardCapturer;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 453
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->id:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/google/common/reflect/TypeResolver$1;)V
    .locals 0

    .line 446
    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;)V

    return-void
.end method

.method private captureNullable(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 0
    .param p1    # Ljava/lang/reflect/Type;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 534
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->capture(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method

.method private forTypeVariable(Ljava/lang/reflect/TypeVariable;)Lcom/google/common/reflect/TypeResolver$WildcardCapturer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)",
            "Lcom/google/common/reflect/TypeResolver$WildcardCapturer;"
        }
    .end annotation

    .line 506
    new-instance v0, Lcom/google/common/reflect/TypeResolver$WildcardCapturer$1;

    iget-object v1, p0, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->id:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p0, v1, p1}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer$1;-><init>(Lcom/google/common/reflect/TypeResolver$WildcardCapturer;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/reflect/TypeVariable;)V

    return-object v0
.end method

.method private notForTypeVariable()Lcom/google/common/reflect/TypeResolver$WildcardCapturer;
    .locals 1

    .line 526
    new-instance v0, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;

    iget-object p0, p0, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->id:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p0}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;)V

    return-object v0
.end method


# virtual methods
.method final capture(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 6

    .line 461
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    return-object p1

    .line 465
    :cond_0
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_1

    return-object p1

    .line 468
    :cond_1
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_2

    .line 469
    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    .line 471
    invoke-direct {p0}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->notForTypeVariable()Lcom/google/common/reflect/TypeResolver$WildcardCapturer;

    move-result-object p0

    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->capture(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    .line 470
    invoke-static {p0}, Lcom/google/common/reflect/Types;->newArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0

    .line 473
    :cond_2
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_4

    .line 474
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 475
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 476
    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    .line 477
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v3, 0x0

    .line 478
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_3

    .line 479
    aget-object v4, v1, v3

    invoke-direct {p0, v4}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->forTypeVariable(Ljava/lang/reflect/TypeVariable;)Lcom/google/common/reflect/TypeResolver$WildcardCapturer;

    move-result-object v4

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->capture(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 482
    :cond_3
    invoke-direct {p0}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->notForTypeVariable()Lcom/google/common/reflect/TypeResolver$WildcardCapturer;

    move-result-object p0

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->captureNullable(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    .line 481
    invoke-static {p0, v0, v2}, Lcom/google/common/reflect/Types;->newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p0

    return-object p0

    .line 486
    :cond_4
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_6

    .line 487
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/WildcardType;

    .line 488
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 489
    array-length v1, v1

    if-nez v1, :cond_5

    .line 490
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->captureAsTypeVariable([Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;

    move-result-object p0

    return-object p0

    :cond_5
    return-object p1

    .line 496
    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "must have been one of the known types"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method captureAsTypeVariable([Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->id:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 501
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p0

    const/16 v0, 0x26

    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/base/Joiner;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "capture#"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "-of ? extends "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-class v0, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;

    .line 502
    invoke-static {v0, p0, p1}, Lcom/google/common/reflect/Types;->newArtificialTypeVariable(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;

    move-result-object p0

    return-object p0
.end method
