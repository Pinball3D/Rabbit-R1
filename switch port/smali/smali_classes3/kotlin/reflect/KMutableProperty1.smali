.class public interface abstract Lkotlin/reflect/KMutableProperty1;
.super Ljava/lang/Object;
.source "KProperty.kt"

# interfaces
.implements Lkotlin/reflect/KProperty1;
.implements Lkotlin/reflect/KMutableProperty;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/KMutableProperty1$DefaultImpls;,
        Lkotlin/reflect/KMutableProperty1$Setter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/reflect/KProperty1<",
        "TT;TV;>;",
        "Lkotlin/reflect/KMutableProperty<",
        "TV;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008f\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00032\u0008\u0012\u0004\u0012\u0002H\u00020\u0004:\u0001\u0010J\u001d\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00028\u00002\u0006\u0010\u000e\u001a\u00028\u0001H&\u00a2\u0006\u0002\u0010\u000fR$\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006X\u00a6\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0011"
    }
    d2 = {
        "Lkotlin/reflect/KMutableProperty1;",
        "T",
        "V",
        "Lkotlin/reflect/KProperty1;",
        "Lkotlin/reflect/KMutableProperty;",
        "setter",
        "Lkotlin/reflect/KMutableProperty1$Setter;",
        "getSetter$annotations",
        "()V",
        "getSetter",
        "()Lkotlin/reflect/KMutableProperty1$Setter;",
        "set",
        "",
        "receiver",
        "value",
        "(Ljava/lang/Object;Ljava/lang/Object;)V",
        "Setter",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract getSetter()Lkotlin/reflect/KMutableProperty1$Setter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/KMutableProperty1$Setter<",
            "TT;TV;>;"
        }
    .end annotation
.end method

.method public abstract set(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TV;)V"
        }
    .end annotation
.end method
