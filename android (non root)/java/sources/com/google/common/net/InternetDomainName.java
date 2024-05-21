package com.google.common.net;

import com.google.common.base.Ascii;
import com.google.common.base.CharMatcher;
import com.google.common.base.Joiner;
import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.base.Splitter;
import com.google.common.collect.ImmutableList;
import com.google.errorprone.annotations.Immutable;
import com.google.thirdparty.publicsuffix.PublicSuffixPatterns;
import com.google.thirdparty.publicsuffix.PublicSuffixType;
import java.util.List;
import javax.annotation.CheckForNull;

@Immutable
@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public final class InternetDomainName {
    private static final CharMatcher DASH_MATCHER;
    private static final CharMatcher DIGIT_MATCHER;
    private static final CharMatcher LETTER_MATCHER;
    private static final int MAX_DOMAIN_PART_LENGTH = 63;
    private static final int MAX_LENGTH = 253;
    private static final int MAX_PARTS = 127;
    private static final int NO_SUFFIX_FOUND = -1;
    private static final CharMatcher PART_CHAR_MATCHER;
    private final String name;
    private final ImmutableList<String> parts;
    private final int publicSuffixIndex;
    private final int registrySuffixIndex;
    private static final CharMatcher DOTS_MATCHER = CharMatcher.anyOf(".。．｡");
    private static final Splitter DOT_SPLITTER = Splitter.on('.');
    private static final Joiner DOT_JOINER = Joiner.on('.');

    public boolean hasPublicSuffix() {
        return this.publicSuffixIndex != -1;
    }

    public boolean hasRegistrySuffix() {
        return this.registrySuffixIndex != -1;
    }

    public boolean isPublicSuffix() {
        return this.publicSuffixIndex == 0;
    }

    public boolean isRegistrySuffix() {
        return this.registrySuffixIndex == 0;
    }

    public boolean isTopDomainUnderRegistrySuffix() {
        return this.registrySuffixIndex == 1;
    }

    public boolean isTopPrivateDomain() {
        return this.publicSuffixIndex == 1;
    }

    public boolean isUnderPublicSuffix() {
        return this.publicSuffixIndex > 0;
    }

    public boolean isUnderRegistrySuffix() {
        return this.registrySuffixIndex > 0;
    }

    public ImmutableList<String> parts() {
        return this.parts;
    }

    public String toString() {
        return this.name;
    }

    static {
        CharMatcher anyOf = CharMatcher.anyOf("-_");
        DASH_MATCHER = anyOf;
        CharMatcher inRange = CharMatcher.inRange('0', '9');
        DIGIT_MATCHER = inRange;
        CharMatcher or = CharMatcher.inRange('a', 'z').or(CharMatcher.inRange('A', 'Z'));
        LETTER_MATCHER = or;
        PART_CHAR_MATCHER = inRange.or(or).or(anyOf);
    }

    InternetDomainName(String str) {
        String lowerCase = Ascii.toLowerCase(DOTS_MATCHER.replaceFrom((CharSequence) str, '.'));
        lowerCase = lowerCase.endsWith(".") ? lowerCase.substring(0, lowerCase.length() - 1) : lowerCase;
        Preconditions.checkArgument(lowerCase.length() <= MAX_LENGTH, "Domain name too long: '%s':", lowerCase);
        this.name = lowerCase;
        ImmutableList<String> copyOf = ImmutableList.copyOf(DOT_SPLITTER.split(lowerCase));
        this.parts = copyOf;
        Preconditions.checkArgument(copyOf.size() <= 127, "Domain has too many parts: '%s'", lowerCase);
        Preconditions.checkArgument(validateSyntax(copyOf), "Not a valid domain name: '%s'", lowerCase);
        this.publicSuffixIndex = findSuffixOfType(Optional.absent());
        this.registrySuffixIndex = findSuffixOfType(Optional.of(PublicSuffixType.REGISTRY));
    }

    private int findSuffixOfType(Optional<PublicSuffixType> optional) {
        int size = this.parts.size();
        for (int i = 0; i < size; i++) {
            String join = DOT_JOINER.join(this.parts.subList(i, size));
            if (matchesType(optional, Optional.fromNullable(PublicSuffixPatterns.EXACT.get(join)))) {
                return i;
            }
            if (PublicSuffixPatterns.EXCLUDED.containsKey(join)) {
                return i + 1;
            }
            if (matchesWildcardSuffixType(optional, join)) {
                return i;
            }
        }
        return -1;
    }

    public static InternetDomainName from(String str) {
        return new InternetDomainName((String) Preconditions.checkNotNull(str));
    }

    private static boolean validateSyntax(List<String> list) {
        int size = list.size() - 1;
        if (!validatePart(list.get(size), true)) {
            return false;
        }
        for (int i = 0; i < size; i++) {
            if (!validatePart(list.get(i), false)) {
                return false;
            }
        }
        return true;
    }

    private static boolean validatePart(String str, boolean z) {
        if (str.length() >= 1 && str.length() <= 63) {
            if (!PART_CHAR_MATCHER.matchesAllOf(CharMatcher.ascii().retainFrom(str))) {
                return false;
            }
            CharMatcher charMatcher = DASH_MATCHER;
            if (!charMatcher.matches(str.charAt(0)) && !charMatcher.matches(str.charAt(str.length() - 1))) {
                return (z && DIGIT_MATCHER.matches(str.charAt(0))) ? false : true;
            }
        }
        return false;
    }

    @CheckForNull
    public InternetDomainName publicSuffix() {
        if (hasPublicSuffix()) {
            return ancestor(this.publicSuffixIndex);
        }
        return null;
    }

    public InternetDomainName topPrivateDomain() {
        if (isTopPrivateDomain()) {
            return this;
        }
        Preconditions.checkState(isUnderPublicSuffix(), "Not under a public suffix: %s", this.name);
        return ancestor(this.publicSuffixIndex - 1);
    }

    @CheckForNull
    public InternetDomainName registrySuffix() {
        if (hasRegistrySuffix()) {
            return ancestor(this.registrySuffixIndex);
        }
        return null;
    }

    public InternetDomainName topDomainUnderRegistrySuffix() {
        if (isTopDomainUnderRegistrySuffix()) {
            return this;
        }
        Preconditions.checkState(isUnderRegistrySuffix(), "Not under a registry suffix: %s", this.name);
        return ancestor(this.registrySuffixIndex - 1);
    }

    public boolean hasParent() {
        return this.parts.size() > 1;
    }

    public InternetDomainName parent() {
        Preconditions.checkState(hasParent(), "Domain '%s' has no parent", this.name);
        return ancestor(1);
    }

    private InternetDomainName ancestor(int i) {
        Joiner joiner = DOT_JOINER;
        ImmutableList<String> immutableList = this.parts;
        return from(joiner.join(immutableList.subList(i, immutableList.size())));
    }

    public InternetDomainName child(String str) {
        String str2 = (String) Preconditions.checkNotNull(str);
        String str3 = this.name;
        return from(new StringBuilder(String.valueOf(str2).length() + 1 + String.valueOf(str3).length()).append(str2).append(".").append(str3).toString());
    }

    public static boolean isValid(String str) {
        try {
            from(str);
            return true;
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }

    private static boolean matchesWildcardSuffixType(Optional<PublicSuffixType> optional, String str) {
        List<String> splitToList = DOT_SPLITTER.limit(2).splitToList(str);
        return splitToList.size() == 2 && matchesType(optional, Optional.fromNullable(PublicSuffixPatterns.UNDER.get(splitToList.get(1))));
    }

    private static boolean matchesType(Optional<PublicSuffixType> optional, Optional<PublicSuffixType> optional2) {
        return optional.isPresent() ? optional.equals(optional2) : optional2.isPresent();
    }

    public boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof InternetDomainName) {
            return this.name.equals(((InternetDomainName) obj).name);
        }
        return false;
    }

    public int hashCode() {
        return this.name.hashCode();
    }
}
