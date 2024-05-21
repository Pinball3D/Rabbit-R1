.class public interface abstract Lkotlin/reflect/KProperty0;
.super Ljava/lang/Object;
.source "KProperty.kt"

# interfaces
.implements Lkotlin/reflect/KProperty;
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/KProperty0$DefaultImpls;,
        Lkotlin/reflect/KProperty0$Getter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/reflect/KProperty<",
        "TV;>;",
        "Lkotlin/jvm/functions/Function0<",
        "TV;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008f\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003:\u0001\u000eJ\r\u0010\n\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010\u000bJ\n\u0010\u000c\u001a\u0004\u0018\u00010\rH\'R\u001e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005X\u00a6\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000f"
    }
    d2 = {
        "Lkotlin/reflect/KProperty0;",
        "V",
        "Lkotlin/reflect/KProperty;",
        "Lkotlin/Function0;",
        "getter",
        "Lkotlin/reflect/KProperty0$Getter;",
        "getGetter$annotations",
        "()V",
        "getGetter",
        "()Lkotlin/reflect/KProperty0$Getter;",
        "get",
        "()Ljava/lang/Object;",
        "getDelegate",
        "",
        "Getter",
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
.method public abstract get()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method public abstract getDelegate()Ljava/lang/Object;
.end method

.method public abstract getGetter()Lkotlin/reflect/KProperty0$Getter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/KProperty0$Getter<",
            "TV;>;"
        }
    .end annotation
.end method
