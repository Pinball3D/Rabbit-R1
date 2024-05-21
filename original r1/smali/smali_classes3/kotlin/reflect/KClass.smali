.class public interface abstract Lkotlin/reflect/KClass;
.super Ljava/lang/Object;
.source "KClass.kt"

# interfaces
.implements Lkotlin/reflect/KDeclarationContainer;
.implements Lkotlin/reflect/KAnnotatedElement;
.implements Lkotlin/reflect/KClassifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/KClass$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/reflect/KDeclarationContainer;",
        "Lkotlin/reflect/KAnnotatedElement;",
        "Lkotlin/reflect/KClassifier;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008f\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005J\u0013\u0010D\u001a\u00020\u000e2\u0008\u0010E\u001a\u0004\u0018\u00010\u0002H\u00a6\u0002J\u0008\u0010F\u001a\u00020GH&J\u0012\u0010H\u001a\u00020\u000e2\u0008\u0010I\u001a\u0004\u0018\u00010\u0002H\'R$\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00080\u0007X\u00a6\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\r\u001a\u00020\u000e8&X\u00a7\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u000f\u0010\n\u001a\u0004\u0008\r\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u000e8&X\u00a7\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0012\u0010\n\u001a\u0004\u0008\u0011\u0010\u0010R\u001a\u0010\u0013\u001a\u00020\u000e8&X\u00a7\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0014\u0010\n\u001a\u0004\u0008\u0013\u0010\u0010R\u001a\u0010\u0015\u001a\u00020\u000e8&X\u00a7\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0016\u0010\n\u001a\u0004\u0008\u0015\u0010\u0010R\u001a\u0010\u0017\u001a\u00020\u000e8&X\u00a7\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0018\u0010\n\u001a\u0004\u0008\u0017\u0010\u0010R\u001a\u0010\u0019\u001a\u00020\u000e8&X\u00a7\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u001a\u0010\n\u001a\u0004\u0008\u0019\u0010\u0010R\u001a\u0010\u001b\u001a\u00020\u000e8&X\u00a7\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u001c\u0010\n\u001a\u0004\u0008\u001b\u0010\u0010R\u001a\u0010\u001d\u001a\u00020\u000e8&X\u00a7\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u001e\u0010\n\u001a\u0004\u0008\u001d\u0010\u0010R\u001a\u0010\u001f\u001a\u00020\u000e8&X\u00a7\u0004\u00a2\u0006\u000c\u0012\u0004\u0008 \u0010\n\u001a\u0004\u0008\u001f\u0010\u0010R\"\u0010!\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\"0\u0007X\u00a6\u0004\u00a2\u0006\u000c\u0012\u0004\u0008#\u0010\n\u001a\u0004\u0008$\u0010\u000cR\"\u0010%\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00000\u0007X\u00a6\u0004\u00a2\u0006\u000c\u0012\u0004\u0008&\u0010\n\u001a\u0004\u0008\'\u0010\u000cR\u001a\u0010(\u001a\u0004\u0018\u00018\u0000X\u00a6\u0004\u00a2\u0006\u000c\u0012\u0004\u0008)\u0010\n\u001a\u0004\u0008*\u0010+R\u0014\u0010,\u001a\u0004\u0018\u00010-X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008.\u0010/R(\u00100\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u0000018&X\u00a7\u0004\u00a2\u0006\u000c\u0012\u0004\u00082\u0010\n\u001a\u0004\u00083\u00104R\u0014\u00105\u001a\u0004\u0018\u00010-X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u00086\u0010/R \u00107\u001a\u0008\u0012\u0004\u0012\u000208018&X\u00a7\u0004\u00a2\u0006\u000c\u0012\u0004\u00089\u0010\n\u001a\u0004\u0008:\u00104R \u0010;\u001a\u0008\u0012\u0004\u0012\u00020<018&X\u00a7\u0004\u00a2\u0006\u000c\u0012\u0004\u0008=\u0010\n\u001a\u0004\u0008>\u00104R\u001c\u0010?\u001a\u0004\u0018\u00010@8&X\u00a7\u0004\u00a2\u0006\u000c\u0012\u0004\u0008A\u0010\n\u001a\u0004\u0008B\u0010C\u00a8\u0006J"
    }
    d2 = {
        "Lkotlin/reflect/KClass;",
        "T",
        "",
        "Lkotlin/reflect/KDeclarationContainer;",
        "Lkotlin/reflect/KAnnotatedElement;",
        "Lkotlin/reflect/KClassifier;",
        "constructors",
        "",
        "Lkotlin/reflect/KFunction;",
        "getConstructors$annotations",
        "()V",
        "getConstructors",
        "()Ljava/util/Collection;",
        "isAbstract",
        "",
        "isAbstract$annotations",
        "()Z",
        "isCompanion",
        "isCompanion$annotations",
        "isData",
        "isData$annotations",
        "isFinal",
        "isFinal$annotations",
        "isFun",
        "isFun$annotations",
        "isInner",
        "isInner$annotations",
        "isOpen",
        "isOpen$annotations",
        "isSealed",
        "isSealed$annotations",
        "isValue",
        "isValue$annotations",
        "members",
        "Lkotlin/reflect/KCallable;",
        "getMembers$annotations",
        "getMembers",
        "nestedClasses",
        "getNestedClasses$annotations",
        "getNestedClasses",
        "objectInstance",
        "getObjectInstance$annotations",
        "getObjectInstance",
        "()Ljava/lang/Object;",
        "qualifiedName",
        "",
        "getQualifiedName",
        "()Ljava/lang/String;",
        "sealedSubclasses",
        "",
        "getSealedSubclasses$annotations",
        "getSealedSubclasses",
        "()Ljava/util/List;",
        "simpleName",
        "getSimpleName",
        "supertypes",
        "Lkotlin/reflect/KType;",
        "getSupertypes$annotations",
        "getSupertypes",
        "typeParameters",
        "Lkotlin/reflect/KTypeParameter;",
        "getTypeParameters$annotations",
        "getTypeParameters",
        "visibility",
        "Lkotlin/reflect/KVisibility;",
        "getVisibility$annotations",
        "getVisibility",
        "()Lkotlin/reflect/KVisibility;",
        "equals",
        "other",
        "hashCode",
        "",
        "isInstance",
        "value",
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
.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract getConstructors()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/KFunction<",
            "TT;>;>;"
        }
    .end annotation
.end method

.method public abstract getMembers()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/KCallable<",
            "*>;>;"
        }
    .end annotation
.end method

.method public abstract getNestedClasses()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/KClass<",
            "*>;>;"
        }
    .end annotation
.end method

.method public abstract getObjectInstance()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract getQualifiedName()Ljava/lang/String;
.end method

.method public abstract getSealedSubclasses()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/KClass<",
            "+TT;>;>;"
        }
    .end annotation
.end method

.method public abstract getSimpleName()Ljava/lang/String;
.end method

.method public abstract getSupertypes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/KType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTypeParameters()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/KTypeParameter;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVisibility()Lkotlin/reflect/KVisibility;
.end method

.method public abstract hashCode()I
.end method

.method public abstract isAbstract()Z
.end method

.method public abstract isCompanion()Z
.end method

.method public abstract isData()Z
.end method

.method public abstract isFinal()Z
.end method

.method public abstract isFun()Z
.end method

.method public abstract isInner()Z
.end method

.method public abstract isInstance(Ljava/lang/Object;)Z
.end method

.method public abstract isOpen()Z
.end method

.method public abstract isSealed()Z
.end method

.method public abstract isValue()Z
.end method
