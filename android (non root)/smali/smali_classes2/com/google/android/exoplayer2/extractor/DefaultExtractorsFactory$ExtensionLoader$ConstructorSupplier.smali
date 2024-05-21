.class public interface abstract Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory$ExtensionLoader$ConstructorSupplier;
.super Ljava/lang/Object;
.source "DefaultExtractorsFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory$ExtensionLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConstructorSupplier"
.end annotation


# virtual methods
.method public abstract getConstructor()Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/google/android/exoplayer2/extractor/Extractor;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation
.end method
