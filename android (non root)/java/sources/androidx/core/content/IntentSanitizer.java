package androidx.core.content;

import android.content.ClipData;
import android.content.ComponentName;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.core.content.IntentSanitizer;
import androidx.core.util.Consumer;
import androidx.core.util.Preconditions;
import androidx.core.util.Predicate;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* loaded from: classes.dex */
public class IntentSanitizer {
    private static final String TAG = "IntentSanitizer";
    private boolean mAllowAnyComponent;
    private boolean mAllowClipDataText;
    private boolean mAllowIdentifier;
    private boolean mAllowSelector;
    private boolean mAllowSourceBounds;
    private Predicate<String> mAllowedActions;
    private Predicate<String> mAllowedCategories;
    private Predicate<ClipData> mAllowedClipData;
    private Predicate<Uri> mAllowedClipDataUri;
    private Predicate<ComponentName> mAllowedComponents;
    private Predicate<Uri> mAllowedData;
    private Map<String, Predicate<Object>> mAllowedExtras;
    private int mAllowedFlags;
    private Predicate<String> mAllowedPackages;
    private Predicate<String> mAllowedTypes;

    public static /* synthetic */ void lambda$sanitizeByFiltering$0(String str) {
    }

    /* synthetic */ IntentSanitizer(AnonymousClass1 anonymousClass1) {
        this();
    }

    private IntentSanitizer() {
    }

    public Intent sanitizeByFiltering(Intent intent) {
        return sanitize(intent, new Consumer() { // from class: androidx.core.content.IntentSanitizer$$ExternalSyntheticLambda0
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                IntentSanitizer.lambda$sanitizeByFiltering$0((String) obj);
            }
        });
    }

    public Intent sanitizeByThrowing(Intent intent) {
        return sanitize(intent, new Consumer() { // from class: androidx.core.content.IntentSanitizer$$ExternalSyntheticLambda1
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                IntentSanitizer.lambda$sanitizeByThrowing$1((String) obj);
            }
        });
    }

    public static /* synthetic */ void lambda$sanitizeByThrowing$1(String str) {
        throw new SecurityException(str);
    }

    public Intent sanitize(Intent intent, Consumer<String> consumer) {
        Intent intent2 = new Intent();
        ComponentName component = intent.getComponent();
        if ((this.mAllowAnyComponent && component == null) || this.mAllowedComponents.test(component)) {
            intent2.setComponent(component);
        } else {
            consumer.accept("Component is not allowed: " + component);
            intent2.setComponent(new ComponentName("android", "java.lang.Void"));
        }
        String str = intent.getPackage();
        if (str == null || this.mAllowedPackages.test(str)) {
            intent2.setPackage(str);
        } else {
            consumer.accept("Package is not allowed: " + str);
        }
        int flags = this.mAllowedFlags | intent.getFlags();
        int i = this.mAllowedFlags;
        if (flags == i) {
            intent2.setFlags(intent.getFlags());
        } else {
            intent2.setFlags(intent.getFlags() & i);
            consumer.accept("The intent contains flags that are not allowed: 0x" + Integer.toHexString(intent.getFlags() & (~this.mAllowedFlags)));
        }
        String action = intent.getAction();
        if (action == null || this.mAllowedActions.test(action)) {
            intent2.setAction(action);
        } else {
            consumer.accept("Action is not allowed: " + action);
        }
        Uri data = intent.getData();
        if (data == null || this.mAllowedData.test(data)) {
            intent2.setData(data);
        } else {
            consumer.accept("Data is not allowed: " + data);
        }
        String type = intent.getType();
        if (type == null || this.mAllowedTypes.test(type)) {
            intent2.setDataAndType(intent2.getData(), type);
        } else {
            consumer.accept("Type is not allowed: " + type);
        }
        Set<String> categories = intent.getCategories();
        if (categories != null) {
            for (String str2 : categories) {
                if (this.mAllowedCategories.test(str2)) {
                    intent2.addCategory(str2);
                } else {
                    consumer.accept("Category is not allowed: " + str2);
                }
            }
        }
        Bundle extras = intent.getExtras();
        if (extras != null) {
            for (String str3 : extras.keySet()) {
                if (str3.equals("android.intent.extra.STREAM") && (this.mAllowedFlags & 1) == 0) {
                    consumer.accept("Allowing Extra Stream requires also allowing at least  FLAG_GRANT_READ_URI_PERMISSION Flag.");
                } else if (str3.equals("output") && ((~this.mAllowedFlags) & 3) != 0) {
                    consumer.accept("Allowing Extra Output requires also allowing FLAG_GRANT_READ_URI_PERMISSION and FLAG_GRANT_WRITE_URI_PERMISSION Flags.");
                } else {
                    Object obj = extras.get(str3);
                    Predicate<Object> predicate = this.mAllowedExtras.get(str3);
                    if (predicate != null && predicate.test(obj)) {
                        putExtra(intent2, str3, obj);
                    } else {
                        consumer.accept("Extra is not allowed. Key: " + str3 + ". Value: " + obj);
                    }
                }
            }
        }
        Api16Impl.sanitizeClipData(intent, intent2, this.mAllowedClipData, this.mAllowClipDataText, this.mAllowedClipDataUri, consumer);
        if (this.mAllowIdentifier) {
            Api29Impl.setIdentifier(intent2, Api29Impl.getIdentifier(intent));
        } else if (Api29Impl.getIdentifier(intent) != null) {
            consumer.accept("Identifier is not allowed: " + Api29Impl.getIdentifier(intent));
        }
        if (this.mAllowSelector) {
            Api15Impl.setSelector(intent2, Api15Impl.getSelector(intent));
        } else if (Api15Impl.getSelector(intent) != null) {
            consumer.accept("Selector is not allowed: " + Api15Impl.getSelector(intent));
        }
        if (this.mAllowSourceBounds) {
            intent2.setSourceBounds(intent.getSourceBounds());
        } else if (intent.getSourceBounds() != null) {
            consumer.accept("SourceBounds is not allowed: " + intent.getSourceBounds());
        }
        return intent2;
    }

    private void putExtra(Intent intent, String str, Object obj) {
        if (obj == null) {
            intent.getExtras().putString(str, null);
            return;
        }
        if (obj instanceof Parcelable) {
            intent.putExtra(str, (Parcelable) obj);
        } else if (obj instanceof Parcelable[]) {
            intent.putExtra(str, (Parcelable[]) obj);
        } else {
            if (obj instanceof Serializable) {
                intent.putExtra(str, (Serializable) obj);
                return;
            }
            throw new IllegalArgumentException("Unsupported type " + obj.getClass());
        }
    }

    /* loaded from: classes.dex */
    public static final class Builder {
        private static final int HISTORY_STACK_FLAGS = 2112614400;
        private static final int RECEIVER_FLAGS = 2015363072;
        private boolean mAllowAnyComponent;
        private boolean mAllowIdentifier;
        private boolean mAllowSelector;
        private boolean mAllowSomeComponents;
        private boolean mAllowSourceBounds;
        private int mAllowedFlags;
        private Predicate<String> mAllowedActions = new Predicate() { // from class: androidx.core.content.IntentSanitizer$Builder$$ExternalSyntheticLambda11
            @Override // androidx.core.util.Predicate
            public final boolean test(Object obj) {
                return IntentSanitizer.Builder.lambda$new$0((String) obj);
            }
        };
        private Predicate<Uri> mAllowedData = new Predicate() { // from class: androidx.core.content.IntentSanitizer$Builder$$ExternalSyntheticLambda12
            @Override // androidx.core.util.Predicate
            public final boolean test(Object obj) {
                return IntentSanitizer.Builder.lambda$new$1((Uri) obj);
            }
        };
        private Predicate<String> mAllowedTypes = new Predicate() { // from class: androidx.core.content.IntentSanitizer$Builder$$ExternalSyntheticLambda13
            @Override // androidx.core.util.Predicate
            public final boolean test(Object obj) {
                return IntentSanitizer.Builder.lambda$new$2((String) obj);
            }
        };
        private Predicate<String> mAllowedCategories = new Predicate() { // from class: androidx.core.content.IntentSanitizer$Builder$$ExternalSyntheticLambda14
            @Override // androidx.core.util.Predicate
            public final boolean test(Object obj) {
                return IntentSanitizer.Builder.lambda$new$3((String) obj);
            }
        };
        private Predicate<String> mAllowedPackages = new Predicate() { // from class: androidx.core.content.IntentSanitizer$Builder$$ExternalSyntheticLambda15
            @Override // androidx.core.util.Predicate
            public final boolean test(Object obj) {
                return IntentSanitizer.Builder.lambda$new$4((String) obj);
            }
        };
        private Predicate<ComponentName> mAllowedComponents = new Predicate() { // from class: androidx.core.content.IntentSanitizer$Builder$$ExternalSyntheticLambda16
            @Override // androidx.core.util.Predicate
            public final boolean test(Object obj) {
                return IntentSanitizer.Builder.lambda$new$5((ComponentName) obj);
            }
        };
        private Map<String, Predicate<Object>> mAllowedExtras = new HashMap();
        private boolean mAllowClipDataText = false;
        private Predicate<Uri> mAllowedClipDataUri = new Predicate() { // from class: androidx.core.content.IntentSanitizer$Builder$$ExternalSyntheticLambda17
            @Override // androidx.core.util.Predicate
            public final boolean test(Object obj) {
                return IntentSanitizer.Builder.lambda$new$6((Uri) obj);
            }
        };
        private Predicate<ClipData> mAllowedClipData = new Predicate() { // from class: androidx.core.content.IntentSanitizer$Builder$$ExternalSyntheticLambda18
            @Override // androidx.core.util.Predicate
            public final boolean test(Object obj) {
                return IntentSanitizer.Builder.lambda$new$7((ClipData) obj);
            }
        };

        public static /* synthetic */ boolean lambda$allowAnyComponent$10(ComponentName componentName) {
            return true;
        }

        public static /* synthetic */ boolean lambda$allowExtra$12(Object obj) {
            return true;
        }

        public static /* synthetic */ boolean lambda$allowExtra$14(Object obj) {
            return false;
        }

        public static /* synthetic */ boolean lambda$new$0(String str) {
            return false;
        }

        public static /* synthetic */ boolean lambda$new$1(Uri uri) {
            return false;
        }

        public static /* synthetic */ boolean lambda$new$2(String str) {
            return false;
        }

        public static /* synthetic */ boolean lambda$new$3(String str) {
            return false;
        }

        public static /* synthetic */ boolean lambda$new$4(String str) {
            return false;
        }

        public static /* synthetic */ boolean lambda$new$5(ComponentName componentName) {
            return false;
        }

        public static /* synthetic */ boolean lambda$new$6(Uri uri) {
            return false;
        }

        public static /* synthetic */ boolean lambda$new$7(ClipData clipData) {
            return false;
        }

        public Builder allowClipDataText() {
            this.mAllowClipDataText = true;
            return this;
        }

        public Builder allowFlags(int i) {
            this.mAllowedFlags = i | this.mAllowedFlags;
            return this;
        }

        public Builder allowHistoryStackFlags() {
            this.mAllowedFlags |= HISTORY_STACK_FLAGS;
            return this;
        }

        public Builder allowIdentifier() {
            this.mAllowIdentifier = true;
            return this;
        }

        public Builder allowReceiverFlags() {
            this.mAllowedFlags |= RECEIVER_FLAGS;
            return this;
        }

        public Builder allowSelector() {
            this.mAllowSelector = true;
            return this;
        }

        public Builder allowSourceBounds() {
            this.mAllowSourceBounds = true;
            return this;
        }

        public Builder allowAction(String str) {
            Preconditions.checkNotNull(str);
            Objects.requireNonNull(str);
            allowAction(new IntentSanitizer$Builder$$ExternalSyntheticLambda2(str));
            return this;
        }

        public Builder allowAction(Predicate<String> predicate) {
            Preconditions.checkNotNull(predicate);
            this.mAllowedActions = this.mAllowedActions.or(predicate);
            return this;
        }

        public Builder allowDataWithAuthority(final String str) {
            Preconditions.checkNotNull(str);
            allowData(new Predicate() { // from class: androidx.core.content.IntentSanitizer$Builder$$ExternalSyntheticLambda7
                @Override // androidx.core.util.Predicate
                public final boolean test(Object obj) {
                    boolean equals;
                    equals = str.equals(((Uri) obj).getAuthority());
                    return equals;
                }
            });
            return this;
        }

        public Builder allowData(Predicate<Uri> predicate) {
            Preconditions.checkNotNull(predicate);
            this.mAllowedData = this.mAllowedData.or(predicate);
            return this;
        }

        public Builder allowType(String str) {
            Preconditions.checkNotNull(str);
            Objects.requireNonNull(str);
            return allowType(new IntentSanitizer$Builder$$ExternalSyntheticLambda2(str));
        }

        public Builder allowType(Predicate<String> predicate) {
            Preconditions.checkNotNull(predicate);
            this.mAllowedTypes = this.mAllowedTypes.or(predicate);
            return this;
        }

        public Builder allowCategory(String str) {
            Preconditions.checkNotNull(str);
            Objects.requireNonNull(str);
            return allowCategory(new IntentSanitizer$Builder$$ExternalSyntheticLambda2(str));
        }

        public Builder allowCategory(Predicate<String> predicate) {
            Preconditions.checkNotNull(predicate);
            this.mAllowedCategories = this.mAllowedCategories.or(predicate);
            return this;
        }

        public Builder allowPackage(String str) {
            Preconditions.checkNotNull(str);
            Objects.requireNonNull(str);
            return allowPackage(new IntentSanitizer$Builder$$ExternalSyntheticLambda2(str));
        }

        public Builder allowPackage(Predicate<String> predicate) {
            Preconditions.checkNotNull(predicate);
            this.mAllowedPackages = this.mAllowedPackages.or(predicate);
            return this;
        }

        public Builder allowComponent(final ComponentName componentName) {
            Preconditions.checkNotNull(componentName);
            Objects.requireNonNull(componentName);
            return allowComponent(new Predicate() { // from class: androidx.core.content.IntentSanitizer$Builder$$ExternalSyntheticLambda9
                @Override // androidx.core.util.Predicate
                public final boolean test(Object obj) {
                    boolean equals;
                    equals = componentName.equals((ComponentName) obj);
                    return equals;
                }
            });
        }

        public Builder allowComponent(Predicate<ComponentName> predicate) {
            Preconditions.checkNotNull(predicate);
            this.mAllowSomeComponents = true;
            this.mAllowedComponents = this.mAllowedComponents.or(predicate);
            return this;
        }

        public Builder allowComponentWithPackage(final String str) {
            Preconditions.checkNotNull(str);
            return allowComponent(new Predicate() { // from class: androidx.core.content.IntentSanitizer$Builder$$ExternalSyntheticLambda6
                @Override // androidx.core.util.Predicate
                public final boolean test(Object obj) {
                    boolean equals;
                    equals = str.equals(((ComponentName) obj).getPackageName());
                    return equals;
                }
            });
        }

        public Builder allowAnyComponent() {
            this.mAllowAnyComponent = true;
            this.mAllowedComponents = new Predicate() { // from class: androidx.core.content.IntentSanitizer$Builder$$ExternalSyntheticLambda4
                @Override // androidx.core.util.Predicate
                public final boolean test(Object obj) {
                    return IntentSanitizer.Builder.lambda$allowAnyComponent$10((ComponentName) obj);
                }
            };
            return this;
        }

        public Builder allowClipDataUriWithAuthority(final String str) {
            Preconditions.checkNotNull(str);
            return allowClipDataUri(new Predicate() { // from class: androidx.core.content.IntentSanitizer$Builder$$ExternalSyntheticLambda1
                @Override // androidx.core.util.Predicate
                public final boolean test(Object obj) {
                    boolean equals;
                    equals = str.equals(((Uri) obj).getAuthority());
                    return equals;
                }
            });
        }

        public Builder allowClipDataUri(Predicate<Uri> predicate) {
            Preconditions.checkNotNull(predicate);
            this.mAllowedClipDataUri = this.mAllowedClipDataUri.or(predicate);
            return this;
        }

        public Builder allowClipData(Predicate<ClipData> predicate) {
            Preconditions.checkNotNull(predicate);
            this.mAllowedClipData = this.mAllowedClipData.or(predicate);
            return this;
        }

        public Builder allowExtra(String str, Class<?> cls) {
            return allowExtra(str, cls, new Predicate() { // from class: androidx.core.content.IntentSanitizer$Builder$$ExternalSyntheticLambda10
                @Override // androidx.core.util.Predicate
                public final boolean test(Object obj) {
                    return IntentSanitizer.Builder.lambda$allowExtra$12(obj);
                }
            });
        }

        public <T> Builder allowExtra(String str, final Class<T> cls, final Predicate<T> predicate) {
            Preconditions.checkNotNull(str);
            Preconditions.checkNotNull(cls);
            Preconditions.checkNotNull(predicate);
            return allowExtra(str, new Predicate() { // from class: androidx.core.content.IntentSanitizer$Builder$$ExternalSyntheticLambda5
                @Override // androidx.core.util.Predicate
                public final boolean test(Object obj) {
                    return IntentSanitizer.Builder.lambda$allowExtra$13(cls, predicate, obj);
                }
            });
        }

        public static /* synthetic */ boolean lambda$allowExtra$13(Class cls, Predicate predicate, Object obj) {
            return cls.isInstance(obj) && predicate.test(cls.cast(obj));
        }

        public Builder allowExtra(String str, Predicate<Object> predicate) {
            Preconditions.checkNotNull(str);
            Preconditions.checkNotNull(predicate);
            Predicate<Object> predicate2 = this.mAllowedExtras.get(str);
            if (predicate2 == null) {
                predicate2 = new Predicate() { // from class: androidx.core.content.IntentSanitizer$Builder$$ExternalSyntheticLambda0
                    @Override // androidx.core.util.Predicate
                    public final boolean test(Object obj) {
                        return IntentSanitizer.Builder.lambda$allowExtra$14(obj);
                    }
                };
            }
            this.mAllowedExtras.put(str, predicate2.or(predicate));
            return this;
        }

        public Builder allowExtraStreamUriWithAuthority(final String str) {
            Preconditions.checkNotNull(str);
            allowExtra("android.intent.extra.STREAM", Uri.class, new Predicate() { // from class: androidx.core.content.IntentSanitizer$Builder$$ExternalSyntheticLambda3
                @Override // androidx.core.util.Predicate
                public final boolean test(Object obj) {
                    boolean equals;
                    equals = str.equals(((Uri) obj).getAuthority());
                    return equals;
                }
            });
            return this;
        }

        public Builder allowExtraStream(Predicate<Uri> predicate) {
            allowExtra("android.intent.extra.STREAM", Uri.class, predicate);
            return this;
        }

        public Builder allowExtraOutput(final String str) {
            allowExtra("output", Uri.class, new Predicate() { // from class: androidx.core.content.IntentSanitizer$Builder$$ExternalSyntheticLambda8
                @Override // androidx.core.util.Predicate
                public final boolean test(Object obj) {
                    boolean equals;
                    equals = str.equals(((Uri) obj).getAuthority());
                    return equals;
                }
            });
            return this;
        }

        public Builder allowExtraOutput(Predicate<Uri> predicate) {
            allowExtra("output", Uri.class, predicate);
            return this;
        }

        public IntentSanitizer build() {
            boolean z = this.mAllowAnyComponent;
            if ((z && this.mAllowSomeComponents) || (!z && !this.mAllowSomeComponents)) {
                throw new SecurityException("You must call either allowAnyComponent or one or more of the allowComponent methods; but not both.");
            }
            IntentSanitizer intentSanitizer = new IntentSanitizer();
            intentSanitizer.mAllowedFlags = this.mAllowedFlags;
            intentSanitizer.mAllowedActions = this.mAllowedActions;
            intentSanitizer.mAllowedData = this.mAllowedData;
            intentSanitizer.mAllowedTypes = this.mAllowedTypes;
            intentSanitizer.mAllowedCategories = this.mAllowedCategories;
            intentSanitizer.mAllowedPackages = this.mAllowedPackages;
            intentSanitizer.mAllowAnyComponent = this.mAllowAnyComponent;
            intentSanitizer.mAllowedComponents = this.mAllowedComponents;
            intentSanitizer.mAllowedExtras = this.mAllowedExtras;
            intentSanitizer.mAllowClipDataText = this.mAllowClipDataText;
            intentSanitizer.mAllowedClipDataUri = this.mAllowedClipDataUri;
            intentSanitizer.mAllowedClipData = this.mAllowedClipData;
            intentSanitizer.mAllowIdentifier = this.mAllowIdentifier;
            intentSanitizer.mAllowSelector = this.mAllowSelector;
            intentSanitizer.mAllowSourceBounds = this.mAllowSourceBounds;
            return intentSanitizer;
        }
    }

    /* loaded from: classes.dex */
    public static class Api15Impl {
        private Api15Impl() {
        }

        static void setSelector(Intent intent, Intent intent2) {
            intent.setSelector(intent2);
        }

        static Intent getSelector(Intent intent) {
            return intent.getSelector();
        }
    }

    /* loaded from: classes.dex */
    public static class Api16Impl {
        private Api16Impl() {
        }

        /* JADX WARN: Removed duplicated region for block: B:27:0x00b4  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x00c3  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        static void sanitizeClipData(android.content.Intent r7, android.content.Intent r8, androidx.core.util.Predicate<android.content.ClipData> r9, boolean r10, androidx.core.util.Predicate<android.net.Uri> r11, androidx.core.util.Consumer<java.lang.String> r12) {
            /*
                android.content.ClipData r7 = r7.getClipData()
                if (r7 != 0) goto L7
                return
            L7:
                if (r9 == 0) goto L14
                boolean r9 = r9.test(r7)
                if (r9 == 0) goto L14
                r8.setClipData(r7)
                goto Ld4
            L14:
                r9 = 0
                r0 = 0
                r1 = r9
            L17:
                int r2 = r7.getItemCount()
                if (r0 >= r2) goto Lcf
                android.content.ClipData$Item r2 = r7.getItemAt(r0)
                androidx.core.content.IntentSanitizer.Api16Impl.Api31Impl.checkOtherMembers(r0, r2, r12)
                if (r10 == 0) goto L2b
                java.lang.CharSequence r3 = r2.getText()
                goto L52
            L2b:
                java.lang.CharSequence r3 = r2.getText()
                if (r3 == 0) goto L51
                java.lang.StringBuilder r3 = new java.lang.StringBuilder
                java.lang.String r4 = "Item text cannot contain value. Item position: "
                r3.<init>(r4)
                java.lang.StringBuilder r3 = r3.append(r0)
                java.lang.String r4 = ". Text: "
                java.lang.StringBuilder r3 = r3.append(r4)
                java.lang.CharSequence r4 = r2.getText()
                java.lang.StringBuilder r3 = r3.append(r4)
                java.lang.String r3 = r3.toString()
                r12.accept(r3)
            L51:
                r3 = r9
            L52:
                java.lang.String r4 = ". URI: "
                java.lang.String r5 = "Item URI is not allowed. Item position: "
                if (r11 != 0) goto L7b
                android.net.Uri r6 = r2.getUri()
                if (r6 == 0) goto La8
                java.lang.StringBuilder r6 = new java.lang.StringBuilder
                r6.<init>(r5)
                java.lang.StringBuilder r5 = r6.append(r0)
                java.lang.StringBuilder r4 = r5.append(r4)
                android.net.Uri r2 = r2.getUri()
                java.lang.StringBuilder r2 = r4.append(r2)
                java.lang.String r2 = r2.toString()
                r12.accept(r2)
                goto La8
            L7b:
                android.net.Uri r6 = r2.getUri()
                if (r6 == 0) goto Laa
                android.net.Uri r6 = r2.getUri()
                boolean r6 = r11.test(r6)
                if (r6 == 0) goto L8c
                goto Laa
            L8c:
                java.lang.StringBuilder r6 = new java.lang.StringBuilder
                r6.<init>(r5)
                java.lang.StringBuilder r5 = r6.append(r0)
                java.lang.StringBuilder r4 = r5.append(r4)
                android.net.Uri r2 = r2.getUri()
                java.lang.StringBuilder r2 = r4.append(r2)
                java.lang.String r2 = r2.toString()
                r12.accept(r2)
            La8:
                r2 = r9
                goto Lae
            Laa:
                android.net.Uri r2 = r2.getUri()
            Lae:
                if (r3 != 0) goto Lb2
                if (r2 == 0) goto Lcb
            Lb2:
                if (r1 != 0) goto Lc3
                android.content.ClipData r1 = new android.content.ClipData
                android.content.ClipDescription r4 = r7.getDescription()
                android.content.ClipData$Item r5 = new android.content.ClipData$Item
                r5.<init>(r3, r9, r2)
                r1.<init>(r4, r5)
                goto Lcb
            Lc3:
                android.content.ClipData$Item r4 = new android.content.ClipData$Item
                r4.<init>(r3, r9, r2)
                r1.addItem(r4)
            Lcb:
                int r0 = r0 + 1
                goto L17
            Lcf:
                if (r1 == 0) goto Ld4
                r8.setClipData(r1)
            Ld4:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.core.content.IntentSanitizer.Api16Impl.sanitizeClipData(android.content.Intent, android.content.Intent, androidx.core.util.Predicate, boolean, androidx.core.util.Predicate, androidx.core.util.Consumer):void");
        }

        private static void checkOtherMembers(int i, ClipData.Item item, Consumer<String> consumer) {
            if (item.getHtmlText() == null && item.getIntent() == null) {
                return;
            }
            consumer.accept("ClipData item at position " + i + " contains htmlText, textLinks or intent: " + item);
        }

        /* loaded from: classes.dex */
        public static class Api31Impl {
            private Api31Impl() {
            }

            static void checkOtherMembers(int i, ClipData.Item item, Consumer<String> consumer) {
                if (item.getHtmlText() == null && item.getIntent() == null && item.getTextLinks() == null) {
                    return;
                }
                consumer.accept("ClipData item at position " + i + " contains htmlText, textLinks or intent: " + item);
            }
        }
    }

    /* loaded from: classes.dex */
    public static class Api29Impl {
        private Api29Impl() {
        }

        static Intent setIdentifier(Intent intent, String str) {
            return intent.setIdentifier(str);
        }

        static String getIdentifier(Intent intent) {
            return intent.getIdentifier();
        }
    }
}
