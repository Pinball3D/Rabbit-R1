package androidx.compose.ui.autofill;

import androidx.autofill.HintConstants;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AndroidAutofillType.android.kt */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\b\"2\u0010\u0000\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001j\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003`\u00048\u0002X\u0083\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0005\u0010\u0006\"\u001e\u0010\u0007\u001a\u00020\u0003*\u00020\u00028@X\u0081\u0004¢\u0006\f\u0012\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"androidAutofillTypes", "Ljava/util/HashMap;", "Landroidx/compose/ui/autofill/AutofillType;", "", "Lkotlin/collections/HashMap;", "getAndroidAutofillTypes$annotations", "()V", "androidType", "getAndroidType$annotations", "(Landroidx/compose/ui/autofill/AutofillType;)V", "getAndroidType", "(Landroidx/compose/ui/autofill/AutofillType;)Ljava/lang/String;", "ui_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AndroidAutofillType_androidKt {
    private static final HashMap<AutofillType, String> androidAutofillTypes = MapsKt.hashMapOf(TuplesKt.to(AutofillType.EmailAddress, HintConstants.AUTOFILL_HINT_EMAIL_ADDRESS), TuplesKt.to(AutofillType.Username, "username"), TuplesKt.to(AutofillType.Password, HintConstants.AUTOFILL_HINT_PASSWORD), TuplesKt.to(AutofillType.NewUsername, HintConstants.AUTOFILL_HINT_NEW_USERNAME), TuplesKt.to(AutofillType.NewPassword, HintConstants.AUTOFILL_HINT_NEW_PASSWORD), TuplesKt.to(AutofillType.PostalAddress, HintConstants.AUTOFILL_HINT_POSTAL_ADDRESS), TuplesKt.to(AutofillType.PostalCode, HintConstants.AUTOFILL_HINT_POSTAL_CODE), TuplesKt.to(AutofillType.CreditCardNumber, HintConstants.AUTOFILL_HINT_CREDIT_CARD_NUMBER), TuplesKt.to(AutofillType.CreditCardSecurityCode, HintConstants.AUTOFILL_HINT_CREDIT_CARD_SECURITY_CODE), TuplesKt.to(AutofillType.CreditCardExpirationDate, HintConstants.AUTOFILL_HINT_CREDIT_CARD_EXPIRATION_DATE), TuplesKt.to(AutofillType.CreditCardExpirationMonth, HintConstants.AUTOFILL_HINT_CREDIT_CARD_EXPIRATION_MONTH), TuplesKt.to(AutofillType.CreditCardExpirationYear, HintConstants.AUTOFILL_HINT_CREDIT_CARD_EXPIRATION_YEAR), TuplesKt.to(AutofillType.CreditCardExpirationDay, HintConstants.AUTOFILL_HINT_CREDIT_CARD_EXPIRATION_DAY), TuplesKt.to(AutofillType.AddressCountry, HintConstants.AUTOFILL_HINT_POSTAL_ADDRESS_COUNTRY), TuplesKt.to(AutofillType.AddressRegion, HintConstants.AUTOFILL_HINT_POSTAL_ADDRESS_REGION), TuplesKt.to(AutofillType.AddressLocality, HintConstants.AUTOFILL_HINT_POSTAL_ADDRESS_LOCALITY), TuplesKt.to(AutofillType.AddressStreet, HintConstants.AUTOFILL_HINT_POSTAL_ADDRESS_STREET_ADDRESS), TuplesKt.to(AutofillType.AddressAuxiliaryDetails, HintConstants.AUTOFILL_HINT_POSTAL_ADDRESS_EXTENDED_ADDRESS), TuplesKt.to(AutofillType.PostalCodeExtended, HintConstants.AUTOFILL_HINT_POSTAL_ADDRESS_EXTENDED_POSTAL_CODE), TuplesKt.to(AutofillType.PersonFullName, HintConstants.AUTOFILL_HINT_PERSON_NAME), TuplesKt.to(AutofillType.PersonFirstName, HintConstants.AUTOFILL_HINT_PERSON_NAME_GIVEN), TuplesKt.to(AutofillType.PersonLastName, HintConstants.AUTOFILL_HINT_PERSON_NAME_FAMILY), TuplesKt.to(AutofillType.PersonMiddleName, HintConstants.AUTOFILL_HINT_PERSON_NAME_MIDDLE), TuplesKt.to(AutofillType.PersonMiddleInitial, HintConstants.AUTOFILL_HINT_PERSON_NAME_MIDDLE_INITIAL), TuplesKt.to(AutofillType.PersonNamePrefix, HintConstants.AUTOFILL_HINT_PERSON_NAME_PREFIX), TuplesKt.to(AutofillType.PersonNameSuffix, HintConstants.AUTOFILL_HINT_PERSON_NAME_SUFFIX), TuplesKt.to(AutofillType.PhoneNumber, HintConstants.AUTOFILL_HINT_PHONE_NUMBER), TuplesKt.to(AutofillType.PhoneNumberDevice, HintConstants.AUTOFILL_HINT_PHONE_NUMBER_DEVICE), TuplesKt.to(AutofillType.PhoneCountryCode, HintConstants.AUTOFILL_HINT_PHONE_COUNTRY_CODE), TuplesKt.to(AutofillType.PhoneNumberNational, HintConstants.AUTOFILL_HINT_PHONE_NATIONAL), TuplesKt.to(AutofillType.Gender, HintConstants.AUTOFILL_HINT_GENDER), TuplesKt.to(AutofillType.BirthDateFull, HintConstants.AUTOFILL_HINT_BIRTH_DATE_FULL), TuplesKt.to(AutofillType.BirthDateDay, HintConstants.AUTOFILL_HINT_BIRTH_DATE_DAY), TuplesKt.to(AutofillType.BirthDateMonth, HintConstants.AUTOFILL_HINT_BIRTH_DATE_MONTH), TuplesKt.to(AutofillType.BirthDateYear, HintConstants.AUTOFILL_HINT_BIRTH_DATE_YEAR), TuplesKt.to(AutofillType.SmsOtpCode, HintConstants.AUTOFILL_HINT_SMS_OTP));

    private static /* synthetic */ void getAndroidAutofillTypes$annotations() {
    }

    public static /* synthetic */ void getAndroidType$annotations(AutofillType autofillType) {
    }

    public static final String getAndroidType(AutofillType autofillType) {
        Intrinsics.checkNotNullParameter(autofillType, "<this>");
        String str = androidAutofillTypes.get(autofillType);
        if (str != null) {
            return str;
        }
        throw new IllegalArgumentException("Unsupported autofill type".toString());
    }
}
