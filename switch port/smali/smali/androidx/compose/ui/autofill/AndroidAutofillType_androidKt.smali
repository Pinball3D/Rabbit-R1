.class public final Landroidx/compose/ui/autofill/AndroidAutofillType_androidKt;
.super Ljava/lang/Object;
.source "AndroidAutofillType.android.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidAutofillType.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidAutofillType.android.kt\nandroidx/compose/ui/autofill/AndroidAutofillType_androidKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,147:1\n1#2:148\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0008\"2\u0010\u0000\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001j\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003`\u00048\u0002X\u0083\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0005\u0010\u0006\"\u001e\u0010\u0007\u001a\u00020\u0003*\u00020\u00028@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "androidAutofillTypes",
        "Ljava/util/HashMap;",
        "Landroidx/compose/ui/autofill/AutofillType;",
        "",
        "Lkotlin/collections/HashMap;",
        "getAndroidAutofillTypes$annotations",
        "()V",
        "androidType",
        "getAndroidType$annotations",
        "(Landroidx/compose/ui/autofill/AutofillType;)V",
        "getAndroidType",
        "(Landroidx/compose/ui/autofill/AutofillType;)Ljava/lang/String;",
        "ui_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final androidAutofillTypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroidx/compose/ui/autofill/AutofillType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    new-array v0, v0, [Lkotlin/Pair;

    .line 110
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->EmailAddress:Landroidx/compose/ui/autofill/AutofillType;

    const-string v2, "emailAddress"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 111
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->Username:Landroidx/compose/ui/autofill/AutofillType;

    const-string/jumbo v2, "username"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 112
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->Password:Landroidx/compose/ui/autofill/AutofillType;

    const-string v2, "password"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 113
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->NewUsername:Landroidx/compose/ui/autofill/AutofillType;

    const-string v2, "newUsername"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 114
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->NewPassword:Landroidx/compose/ui/autofill/AutofillType;

    const-string v2, "newPassword"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 115
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->PostalAddress:Landroidx/compose/ui/autofill/AutofillType;

    const-string v2, "postalAddress"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 116
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->PostalCode:Landroidx/compose/ui/autofill/AutofillType;

    const-string v2, "postalCode"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 117
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->CreditCardNumber:Landroidx/compose/ui/autofill/AutofillType;

    const-string v2, "creditCardNumber"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 118
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->CreditCardSecurityCode:Landroidx/compose/ui/autofill/AutofillType;

    const-string v2, "creditCardSecurityCode"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 119
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->CreditCardExpirationDate:Landroidx/compose/ui/autofill/AutofillType;

    const-string v2, "creditCardExpirationDate"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 120
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->CreditCardExpirationMonth:Landroidx/compose/ui/autofill/AutofillType;

    const-string v2, "creditCardExpirationMonth"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 121
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->CreditCardExpirationYear:Landroidx/compose/ui/autofill/AutofillType;

    const-string v2, "creditCardExpirationYear"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 122
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->CreditCardExpirationDay:Landroidx/compose/ui/autofill/AutofillType;

    const-string v2, "creditCardExpirationDay"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 123
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->AddressCountry:Landroidx/compose/ui/autofill/AutofillType;

    const-string v2, "addressCountry"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 124
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->AddressRegion:Landroidx/compose/ui/autofill/AutofillType;

    const-string v2, "addressRegion"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 125
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->AddressLocality:Landroidx/compose/ui/autofill/AutofillType;

    const-string v2, "addressLocality"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 126
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->AddressStreet:Landroidx/compose/ui/autofill/AutofillType;

    const-string/jumbo v2, "streetAddress"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 127
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->AddressAuxiliaryDetails:Landroidx/compose/ui/autofill/AutofillType;

    const-string v2, "extendedAddress"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 128
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->PostalCodeExtended:Landroidx/compose/ui/autofill/AutofillType;

    const-string v2, "extendedPostalCode"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 129
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->PersonFullName:Landroidx/compose/ui/autofill/AutofillType;

    const-string v2, "personName"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 130
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->PersonFirstName:Landroidx/compose/ui/autofill/AutofillType;

    const-string v2, "personGivenName"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 131
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->PersonLastName:Landroidx/compose/ui/autofill/AutofillType;

    const-string v2, "personFamilyName"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 132
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->PersonMiddleName:Landroidx/compose/ui/autofill/AutofillType;

    const-string v2, "personMiddleName"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 133
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->PersonMiddleInitial:Landroidx/compose/ui/autofill/AutofillType;

    const-string v2, "personMiddleInitial"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 134
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->PersonNamePrefix:Landroidx/compose/ui/autofill/AutofillType;

    const-string v2, "personNamePrefix"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 135
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->PersonNameSuffix:Landroidx/compose/ui/autofill/AutofillType;

    const-string v2, "personNameSuffix"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 136
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->PhoneNumber:Landroidx/compose/ui/autofill/AutofillType;

    const-string v2, "phoneNumber"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 137
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->PhoneNumberDevice:Landroidx/compose/ui/autofill/AutofillType;

    const-string v2, "phoneNumberDevice"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 138
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->PhoneCountryCode:Landroidx/compose/ui/autofill/AutofillType;

    const-string v2, "phoneCountryCode"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 139
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->PhoneNumberNational:Landroidx/compose/ui/autofill/AutofillType;

    const-string v2, "phoneNational"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 140
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->Gender:Landroidx/compose/ui/autofill/AutofillType;

    const-string v2, "gender"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 141
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->BirthDateFull:Landroidx/compose/ui/autofill/AutofillType;

    const-string v2, "birthDateFull"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 142
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->BirthDateDay:Landroidx/compose/ui/autofill/AutofillType;

    const-string v2, "birthDateDay"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x20

    aput-object v1, v0, v2

    .line 143
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->BirthDateMonth:Landroidx/compose/ui/autofill/AutofillType;

    const-string v2, "birthDateMonth"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x21

    aput-object v1, v0, v2

    .line 144
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->BirthDateYear:Landroidx/compose/ui/autofill/AutofillType;

    const-string v2, "birthDateYear"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x22

    aput-object v1, v0, v2

    .line 145
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->SmsOtpCode:Landroidx/compose/ui/autofill/AutofillType;

    const-string/jumbo v2, "smsOTPCode"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x23

    aput-object v1, v0, v2

    .line 109
    invoke-static {v0}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/autofill/AndroidAutofillType_androidKt;->androidAutofillTypes:Ljava/util/HashMap;

    return-void
.end method

.method private static synthetic getAndroidAutofillTypes$annotations()V
    .locals 0

    return-void
.end method

.method public static final getAndroidType(Landroidx/compose/ui/autofill/AutofillType;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/compose/ui/autofill/AndroidAutofillType_androidKt;->androidAutofillTypes:Ljava/util/HashMap;

    .line 100
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    .line 101
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported autofill type"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic getAndroidType$annotations(Landroidx/compose/ui/autofill/AutofillType;)V
    .locals 0

    return-void
.end method
