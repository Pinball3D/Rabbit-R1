.class public Lkotlin/jvm/internal/ReflectionFactory;
.super Ljava/lang/Object;
.source "ReflectionFactory.java"


# static fields
.field private static final KOTLIN_JVM_FUNCTIONS:Ljava/lang/String; = "kotlin.jvm.functions."


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;
    .locals 0

    .line 18
    new-instance p0, Lkotlin/jvm/internal/ClassReference;

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/ClassReference;-><init>(Ljava/lang/Class;)V

    return-object p0
.end method

.method public createKotlinClass(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KClass;
    .locals 0

    .line 22
    new-instance p0, Lkotlin/jvm/internal/ClassReference;

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/ClassReference;-><init>(Ljava/lang/Class;)V

    return-object p0
.end method

.method public function(Lkotlin/jvm/internal/FunctionReference;)Lkotlin/reflect/KFunction;
    .locals 0

    return-object p1
.end method

.method public getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;
    .locals 0

    .line 30
    new-instance p0, Lkotlin/jvm/internal/ClassReference;

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/ClassReference;-><init>(Ljava/lang/Class;)V

    return-object p0
.end method

.method public getOrCreateKotlinClass(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KClass;
    .locals 0

    .line 34
    new-instance p0, Lkotlin/jvm/internal/ClassReference;

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/ClassReference;-><init>(Ljava/lang/Class;)V

    return-object p0
.end method

.method public getOrCreateKotlinPackage(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KDeclarationContainer;
    .locals 0

    .line 26
    new-instance p0, Lkotlin/jvm/internal/PackageReference;

    invoke-direct {p0, p1, p2}, Lkotlin/jvm/internal/PackageReference;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-object p0
.end method

.method public mutableCollectionType(Lkotlin/reflect/KType;)Lkotlin/reflect/KType;
    .locals 3

    .line 107
    move-object p0, p1

    check-cast p0, Lkotlin/jvm/internal/TypeReference;

    .line 108
    new-instance v0, Lkotlin/jvm/internal/TypeReference;

    .line 109
    invoke-interface {p1}, Lkotlin/reflect/KType;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object v1

    invoke-interface {p1}, Lkotlin/reflect/KType;->getArguments()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lkotlin/jvm/internal/TypeReference;->getPlatformTypeUpperBound$kotlin_stdlib()Lkotlin/reflect/KType;

    move-result-object v2

    .line 110
    invoke-virtual {p0}, Lkotlin/jvm/internal/TypeReference;->getFlags$kotlin_stdlib()I

    move-result p0

    or-int/lit8 p0, p0, 0x2

    invoke-direct {v0, v1, p1, v2, p0}, Lkotlin/jvm/internal/TypeReference;-><init>(Lkotlin/reflect/KClassifier;Ljava/util/List;Lkotlin/reflect/KType;I)V

    return-object v0
.end method

.method public mutableProperty0(Lkotlin/jvm/internal/MutablePropertyReference0;)Lkotlin/reflect/KMutableProperty0;
    .locals 0

    return-object p1
.end method

.method public mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;
    .locals 0

    return-object p1
.end method

.method public mutableProperty2(Lkotlin/jvm/internal/MutablePropertyReference2;)Lkotlin/reflect/KMutableProperty2;
    .locals 0

    return-object p1
.end method

.method public nothingType(Lkotlin/reflect/KType;)Lkotlin/reflect/KType;
    .locals 3

    .line 116
    move-object p0, p1

    check-cast p0, Lkotlin/jvm/internal/TypeReference;

    .line 117
    new-instance v0, Lkotlin/jvm/internal/TypeReference;

    .line 118
    invoke-interface {p1}, Lkotlin/reflect/KType;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object v1

    invoke-interface {p1}, Lkotlin/reflect/KType;->getArguments()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lkotlin/jvm/internal/TypeReference;->getPlatformTypeUpperBound$kotlin_stdlib()Lkotlin/reflect/KType;

    move-result-object v2

    .line 119
    invoke-virtual {p0}, Lkotlin/jvm/internal/TypeReference;->getFlags$kotlin_stdlib()I

    move-result p0

    or-int/lit8 p0, p0, 0x4

    invoke-direct {v0, v1, p1, v2, p0}, Lkotlin/jvm/internal/TypeReference;-><init>(Lkotlin/reflect/KClassifier;Ljava/util/List;Lkotlin/reflect/KType;I)V

    return-object v0
.end method

.method public platformType(Lkotlin/reflect/KType;Lkotlin/reflect/KType;)Lkotlin/reflect/KType;
    .locals 2

    .line 99
    new-instance p0, Lkotlin/jvm/internal/TypeReference;

    .line 100
    invoke-interface {p1}, Lkotlin/reflect/KType;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object v0

    invoke-interface {p1}, Lkotlin/reflect/KType;->getArguments()Ljava/util/List;

    move-result-object v1

    check-cast p1, Lkotlin/jvm/internal/TypeReference;

    .line 101
    invoke-virtual {p1}, Lkotlin/jvm/internal/TypeReference;->getFlags$kotlin_stdlib()I

    move-result p1

    invoke-direct {p0, v0, v1, p2, p1}, Lkotlin/jvm/internal/TypeReference;-><init>(Lkotlin/reflect/KClassifier;Ljava/util/List;Lkotlin/reflect/KType;I)V

    return-object p0
.end method

.method public property0(Lkotlin/jvm/internal/PropertyReference0;)Lkotlin/reflect/KProperty0;
    .locals 0

    return-object p1
.end method

.method public property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;
    .locals 0

    return-object p1
.end method

.method public property2(Lkotlin/jvm/internal/PropertyReference2;)Lkotlin/reflect/KProperty2;
    .locals 0

    return-object p1
.end method

.method public renderLambdaToString(Lkotlin/jvm/internal/FunctionBase;)Ljava/lang/String;
    .locals 0

    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "kotlin.jvm.functions."

    .line 45
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x15

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public renderLambdaToString(Lkotlin/jvm/internal/Lambda;)Ljava/lang/String;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lkotlin/jvm/internal/ReflectionFactory;->renderLambdaToString(Lkotlin/jvm/internal/FunctionBase;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setUpperBounds(Lkotlin/reflect/KTypeParameter;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KTypeParameter;",
            "Ljava/util/List<",
            "Lkotlin/reflect/KType;",
            ">;)V"
        }
    .end annotation

    .line 94
    check-cast p1, Lkotlin/jvm/internal/TypeParameterReference;

    invoke-virtual {p1, p2}, Lkotlin/jvm/internal/TypeParameterReference;->setUpperBounds(Ljava/util/List;)V

    return-void
.end method

.method public typeOf(Lkotlin/reflect/KClassifier;Ljava/util/List;Z)Lkotlin/reflect/KType;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClassifier;",
            "Ljava/util/List<",
            "Lkotlin/reflect/KTypeProjection;",
            ">;Z)",
            "Lkotlin/reflect/KType;"
        }
    .end annotation

    .line 84
    new-instance p0, Lkotlin/jvm/internal/TypeReference;

    invoke-direct {p0, p1, p2, p3}, Lkotlin/jvm/internal/TypeReference;-><init>(Lkotlin/reflect/KClassifier;Ljava/util/List;Z)V

    return-object p0
.end method

.method public typeParameter(Ljava/lang/Object;Ljava/lang/String;Lkotlin/reflect/KVariance;Z)Lkotlin/reflect/KTypeParameter;
    .locals 0

    .line 89
    new-instance p0, Lkotlin/jvm/internal/TypeParameterReference;

    invoke-direct {p0, p1, p2, p3, p4}, Lkotlin/jvm/internal/TypeParameterReference;-><init>(Ljava/lang/Object;Ljava/lang/String;Lkotlin/reflect/KVariance;Z)V

    return-object p0
.end method
