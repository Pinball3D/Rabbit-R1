.class public Lkotlin/jvm/internal/FunInterfaceConstructorReference;
.super Lkotlin/jvm/internal/FunctionReference;
.source "FunInterfaceConstructorReference.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final funInterface:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    const/4 v0, 0x1

    .line 31
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/FunctionReference;-><init>(I)V

    iput-object p1, p0, Lkotlin/jvm/internal/FunInterfaceConstructorReference;->funInterface:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 38
    :cond_0
    instance-of v0, p1, Lkotlin/jvm/internal/FunInterfaceConstructorReference;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 39
    :cond_1
    check-cast p1, Lkotlin/jvm/internal/FunInterfaceConstructorReference;

    iget-object p0, p0, Lkotlin/jvm/internal/FunInterfaceConstructorReference;->funInterface:Ljava/lang/Class;

    .line 40
    iget-object p1, p1, Lkotlin/jvm/internal/FunInterfaceConstructorReference;->funInterface:Ljava/lang/Class;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected bridge synthetic getReflected()Lkotlin/reflect/KCallable;
    .locals 0

    .line 25
    invoke-virtual {p0}, Lkotlin/jvm/internal/FunInterfaceConstructorReference;->getReflected()Lkotlin/reflect/KFunction;

    move-result-object p0

    return-object p0
.end method

.method protected getReflected()Lkotlin/reflect/KFunction;
    .locals 1

    .line 55
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Functional interface constructor does not support reflection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lkotlin/jvm/internal/FunInterfaceConstructorReference;->funInterface:Ljava/lang/Class;

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fun interface "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lkotlin/jvm/internal/FunInterfaceConstructorReference;->funInterface:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
