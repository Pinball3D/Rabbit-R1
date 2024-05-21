.class Lcom/google/common/reflect/Invokable$ConstructorInvokable;
.super Lcom/google/common/reflect/Invokable;
.source "Invokable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/Invokable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConstructorInvokable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/reflect/Invokable<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final constructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/reflect/Constructor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)V"
        }
    .end annotation

    .line 407
    invoke-direct {p0, p1}, Lcom/google/common/reflect/Invokable;-><init>(Ljava/lang/reflect/AccessibleObject;)V

    iput-object p1, p0, Lcom/google/common/reflect/Invokable$ConstructorInvokable;->constructor:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method private mayNeedHiddenThis()Z
    .locals 2

    iget-object p0, p0, Lcom/google/common/reflect/Invokable$ConstructorInvokable;->constructor:Ljava/lang/reflect/Constructor;

    .line 492
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    .line 493
    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 497
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 500
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    .line 508
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 509
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method getGenericExceptionTypes()[Ljava/lang/reflect/Type;
    .locals 0

    iget-object p0, p0, Lcom/google/common/reflect/Invokable$ConstructorInvokable;->constructor:Ljava/lang/reflect/Constructor;

    .line 452
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getGenericExceptionTypes()[Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method

.method getGenericParameterTypes()[Ljava/lang/reflect/Type;
    .locals 4

    iget-object v0, p0, Lcom/google/common/reflect/Invokable$ConstructorInvokable;->constructor:Ljava/lang/reflect/Constructor;

    .line 438
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 439
    array-length v1, v0

    if-lez v1, :cond_0

    invoke-direct {p0}, Lcom/google/common/reflect/Invokable$ConstructorInvokable;->mayNeedHiddenThis()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/reflect/Invokable$ConstructorInvokable;->constructor:Ljava/lang/reflect/Constructor;

    .line 440
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 441
    array-length v2, v0

    array-length v3, v1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 442
    invoke-virtual {p0}, Lcom/google/common/reflect/Invokable$ConstructorInvokable;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object p0

    if-ne v1, p0, :cond_0

    const/4 p0, 0x1

    .line 444
    array-length v1, v0

    invoke-static {v0, p0, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/reflect/Type;

    return-object p0

    :cond_0
    return-object v0
.end method

.method getGenericReturnType()Ljava/lang/reflect/Type;
    .locals 2

    .line 427
    invoke-virtual {p0}, Lcom/google/common/reflect/Invokable$ConstructorInvokable;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    .line 428
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    .line 429
    array-length v1, v0

    if-lez v1, :cond_0

    .line 430
    invoke-static {p0, v0}, Lcom/google/common/reflect/Types;->newParameterizedType(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method final getParameterAnnotations()[[Ljava/lang/annotation/Annotation;
    .locals 0

    iget-object p0, p0, Lcom/google/common/reflect/Invokable$ConstructorInvokable;->constructor:Ljava/lang/reflect/Constructor;

    .line 457
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object p0

    return-object p0
.end method

.method public final getTypeParameters()[Ljava/lang/reflect/TypeVariable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;"
        }
    .end annotation

    .line 471
    invoke-virtual {p0}, Lcom/google/common/reflect/Invokable$ConstructorInvokable;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    iget-object p0, p0, Lcom/google/common/reflect/Invokable$ConstructorInvokable;->constructor:Ljava/lang/reflect/Constructor;

    .line 472
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object p0

    .line 473
    array-length v1, v0

    array-length v2, p0

    add-int/2addr v1, v2

    new-array v1, v1, [Ljava/lang/reflect/TypeVariable;

    .line 475
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 476
    array-length v0, v0

    array-length v2, p0

    invoke-static {p0, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method final invokeInternal(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    :try_start_0
    iget-object p1, p0, Lcom/google/common/reflect/Invokable$ConstructorInvokable;->constructor:Ljava/lang/reflect/Constructor;

    .line 415
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 417
    new-instance p2, Ljava/lang/RuntimeException;

    iget-object p0, p0, Lcom/google/common/reflect/Invokable$ConstructorInvokable;->constructor:Ljava/lang/reflect/Constructor;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " failed."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final isOverridable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isVarArgs()Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/reflect/Invokable$ConstructorInvokable;->constructor:Ljava/lang/reflect/Constructor;

    .line 488
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->isVarArgs()Z

    move-result p0

    return p0
.end method
