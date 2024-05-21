package androidx.autofill;

import androidx.core.util.Preconditions;

/* loaded from: classes.dex */
public final class HintConstants {
    public static final String AUTOFILL_HINT_BIRTH_DATE_DAY = "birthDateDay";
    public static final String AUTOFILL_HINT_BIRTH_DATE_FULL = "birthDateFull";
    public static final String AUTOFILL_HINT_BIRTH_DATE_MONTH = "birthDateMonth";
    public static final String AUTOFILL_HINT_BIRTH_DATE_YEAR = "birthDateYear";
    public static final String AUTOFILL_HINT_CREDIT_CARD_EXPIRATION_DATE = "creditCardExpirationDate";
    public static final String AUTOFILL_HINT_CREDIT_CARD_EXPIRATION_DAY = "creditCardExpirationDay";
    public static final String AUTOFILL_HINT_CREDIT_CARD_EXPIRATION_MONTH = "creditCardExpirationMonth";
    public static final String AUTOFILL_HINT_CREDIT_CARD_EXPIRATION_YEAR = "creditCardExpirationYear";
    public static final String AUTOFILL_HINT_CREDIT_CARD_NUMBER = "creditCardNumber";
    public static final String AUTOFILL_HINT_CREDIT_CARD_SECURITY_CODE = "creditCardSecurityCode";
    public static final String AUTOFILL_HINT_EMAIL_ADDRESS = "emailAddress";
    public static final String AUTOFILL_HINT_GENDER = "gender";

    @Deprecated
    public static final String AUTOFILL_HINT_NAME = "name";
    public static final String AUTOFILL_HINT_NEW_PASSWORD = "newPassword";
    public static final String AUTOFILL_HINT_NEW_USERNAME = "newUsername";
    public static final String AUTOFILL_HINT_PASSWORD = "password";
    public static final String AUTOFILL_HINT_PERSON_NAME = "personName";
    public static final String AUTOFILL_HINT_PERSON_NAME_FAMILY = "personFamilyName";
    public static final String AUTOFILL_HINT_PERSON_NAME_GIVEN = "personGivenName";
    public static final String AUTOFILL_HINT_PERSON_NAME_MIDDLE = "personMiddleName";
    public static final String AUTOFILL_HINT_PERSON_NAME_MIDDLE_INITIAL = "personMiddleInitial";
    public static final String AUTOFILL_HINT_PERSON_NAME_PREFIX = "personNamePrefix";
    public static final String AUTOFILL_HINT_PERSON_NAME_SUFFIX = "personNameSuffix";

    @Deprecated
    public static final String AUTOFILL_HINT_PHONE = "phone";
    public static final String AUTOFILL_HINT_PHONE_COUNTRY_CODE = "phoneCountryCode";
    public static final String AUTOFILL_HINT_PHONE_NATIONAL = "phoneNational";
    public static final String AUTOFILL_HINT_PHONE_NUMBER = "phoneNumber";
    public static final String AUTOFILL_HINT_PHONE_NUMBER_DEVICE = "phoneNumberDevice";
    public static final String AUTOFILL_HINT_POSTAL_ADDRESS = "postalAddress";
    public static final String AUTOFILL_HINT_POSTAL_ADDRESS_COUNTRY = "addressCountry";
    public static final String AUTOFILL_HINT_POSTAL_ADDRESS_EXTENDED_ADDRESS = "extendedAddress";
    public static final String AUTOFILL_HINT_POSTAL_ADDRESS_EXTENDED_POSTAL_CODE = "extendedPostalCode";
    public static final String AUTOFILL_HINT_POSTAL_ADDRESS_LOCALITY = "addressLocality";
    public static final String AUTOFILL_HINT_POSTAL_ADDRESS_REGION = "addressRegion";
    public static final String AUTOFILL_HINT_POSTAL_ADDRESS_STREET_ADDRESS = "streetAddress";
    public static final String AUTOFILL_HINT_POSTAL_CODE = "postalCode";
    public static final String AUTOFILL_HINT_SMS_OTP = "smsOTPCode";
    public static final String AUTOFILL_HINT_USERNAME = "username";

    private HintConstants() {
    }

    public static String generateSmsOtpHintForCharacterPosition(int i) {
        Preconditions.checkArgumentInRange(i, 1, 8, "characterPosition");
        return (AUTOFILL_HINT_SMS_OTP + i).intern();
    }
}
