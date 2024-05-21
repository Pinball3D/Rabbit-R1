package com.google.android.material.color.utilities;

import java.util.function.Function;
import tech.rabbit.r1launcher.BuildConfig;

/* loaded from: classes2.dex */
public final class MaterialDynamicColors {
    public DynamicColor highestSurface(DynamicScheme dynamicScheme) {
        return dynamicScheme.isDark ? surfaceBright() : surfaceDim();
    }

    public DynamicColor primaryPaletteKeyColor() {
        return DynamicColor.fromPalette("primary_palette_key_color", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda93
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).primaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda94
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double valueOf;
                valueOf = Double.valueOf(((DynamicScheme) obj).primaryPalette.getKeyColor().getTone());
                return valueOf;
            }
        });
    }

    public DynamicColor secondaryPaletteKeyColor() {
        return DynamicColor.fromPalette("secondary_palette_key_color", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda86
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).secondaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda87
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double valueOf;
                valueOf = Double.valueOf(((DynamicScheme) obj).secondaryPalette.getKeyColor().getTone());
                return valueOf;
            }
        });
    }

    public DynamicColor tertiaryPaletteKeyColor() {
        return DynamicColor.fromPalette("tertiary_palette_key_color", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda62
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).tertiaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda63
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double valueOf;
                valueOf = Double.valueOf(((DynamicScheme) obj).tertiaryPalette.getKeyColor().getTone());
                return valueOf;
            }
        });
    }

    public DynamicColor neutralPaletteKeyColor() {
        return DynamicColor.fromPalette("neutral_palette_key_color", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda34
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).neutralPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda35
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double valueOf;
                valueOf = Double.valueOf(((DynamicScheme) obj).neutralPalette.getKeyColor().getTone());
                return valueOf;
            }
        });
    }

    public DynamicColor neutralVariantPaletteKeyColor() {
        return DynamicColor.fromPalette("neutral_variant_palette_key_color", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda114
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).neutralVariantPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda115
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double valueOf;
                valueOf = Double.valueOf(((DynamicScheme) obj).neutralVariantPalette.getKeyColor().getTone());
                return valueOf;
            }
        });
    }

    public DynamicColor background() {
        return new DynamicColor("background", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda25
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).neutralPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda26
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double valueOf;
                valueOf = Double.valueOf(r2.isDark ? 6.0d : 98.0d);
                return valueOf;
            }
        }, true, null, null, null, null);
    }

    public DynamicColor onBackground() {
        return new DynamicColor("on_background", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda59
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).neutralPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda60
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double valueOf;
                valueOf = Double.valueOf(r2.isDark ? 90.0d : 10.0d);
                return valueOf;
            }
        }, false, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda61
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.this.m5493x24678954((DynamicScheme) obj);
            }
        }, null, new ContrastCurve(3.0d, 3.0d, 4.5d, 7.0d), null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onBackground$14$com-google-android-material-color-utilities-MaterialDynamicColors, reason: not valid java name */
    public /* synthetic */ DynamicColor m5493x24678954(DynamicScheme dynamicScheme) {
        return background();
    }

    public DynamicColor surface() {
        return new DynamicColor("surface", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda29
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).neutralPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda30
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double valueOf;
                valueOf = Double.valueOf(r2.isDark ? 6.0d : 98.0d);
                return valueOf;
            }
        }, true, null, null, null, null);
    }

    public DynamicColor surfaceDim() {
        return new DynamicColor("surface_dim", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda31
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).neutralPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda32
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double valueOf;
                valueOf = Double.valueOf(r2.isDark ? 6.0d : 87.0d);
                return valueOf;
            }
        }, true, null, null, null, null);
    }

    public DynamicColor surfaceBright() {
        return new DynamicColor("surface_bright", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda20
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).neutralPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda21
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double valueOf;
                valueOf = Double.valueOf(r2.isDark ? 24.0d : 98.0d);
                return valueOf;
            }
        }, true, null, null, null, null);
    }

    public DynamicColor surfaceContainerLowest() {
        return new DynamicColor("surface_container_lowest", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda110
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).neutralPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda111
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double valueOf;
                valueOf = Double.valueOf(r2.isDark ? 4.0d : 100.0d);
                return valueOf;
            }
        }, true, null, null, null, null);
    }

    public DynamicColor surfaceContainerLow() {
        return new DynamicColor("surface_container_low", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda125
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).neutralPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda126
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double valueOf;
                valueOf = Double.valueOf(r2.isDark ? 10.0d : 96.0d);
                return valueOf;
            }
        }, true, null, null, null, null);
    }

    public DynamicColor surfaceContainer() {
        return new DynamicColor("surface_container", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda127
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).neutralPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda128
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double valueOf;
                valueOf = Double.valueOf(r2.isDark ? 12.0d : 94.0d);
                return valueOf;
            }
        }, true, null, null, null, null);
    }

    public DynamicColor surfaceContainerHigh() {
        return new DynamicColor("surface_container_high", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda23
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).neutralPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda24
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double valueOf;
                valueOf = Double.valueOf(r2.isDark ? 17.0d : 92.0d);
                return valueOf;
            }
        }, true, null, null, null, null);
    }

    public DynamicColor surfaceContainerHighest() {
        return new DynamicColor("surface_container_highest", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda27
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).neutralPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda28
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double valueOf;
                valueOf = Double.valueOf(r2.isDark ? 22.0d : 90.0d);
                return valueOf;
            }
        }, true, null, null, null, null);
    }

    public DynamicColor onSurface() {
        return new DynamicColor("on_surface", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda95
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).neutralPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda97
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double valueOf;
                valueOf = Double.valueOf(r2.isDark ? 90.0d : 10.0d);
                return valueOf;
            }
        }, false, new MaterialDynamicColors$$ExternalSyntheticLambda85(this), null, new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    public DynamicColor surfaceVariant() {
        return new DynamicColor("surface_variant", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda64
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).neutralVariantPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda65
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double valueOf;
                valueOf = Double.valueOf(r2.isDark ? 30.0d : 90.0d);
                return valueOf;
            }
        }, true, null, null, null, null);
    }

    public DynamicColor onSurfaceVariant() {
        return new DynamicColor("on_surface_variant", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda133
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).neutralVariantPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda134
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double valueOf;
                valueOf = Double.valueOf(r2.isDark ? 80.0d : 30.0d);
                return valueOf;
            }
        }, false, new MaterialDynamicColors$$ExternalSyntheticLambda85(this), null, new ContrastCurve(3.0d, 4.5d, 7.0d, 11.0d), null);
    }

    public DynamicColor inverseSurface() {
        return new DynamicColor("inverse_surface", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda80
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).neutralPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda81
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double valueOf;
                valueOf = Double.valueOf(r2.isDark ? 90.0d : 20.0d);
                return valueOf;
            }
        }, false, null, null, null, null);
    }

    public DynamicColor inverseOnSurface() {
        return new DynamicColor("inverse_on_surface", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda38
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).neutralPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda39
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double valueOf;
                valueOf = Double.valueOf(r2.isDark ? 20.0d : 95.0d);
                return valueOf;
            }
        }, false, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda40
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.this.m5491xcbcaf83d((DynamicScheme) obj);
            }
        }, null, new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$inverseOnSurface$41$com-google-android-material-color-utilities-MaterialDynamicColors, reason: not valid java name */
    public /* synthetic */ DynamicColor m5491xcbcaf83d(DynamicScheme dynamicScheme) {
        return inverseSurface();
    }

    public DynamicColor outline() {
        return new DynamicColor("outline", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda36
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).neutralVariantPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda37
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double valueOf;
                valueOf = Double.valueOf(r2.isDark ? 60.0d : 50.0d);
                return valueOf;
            }
        }, false, new MaterialDynamicColors$$ExternalSyntheticLambda85(this), null, new ContrastCurve(1.5d, 3.0d, 4.5d, 7.0d), null);
    }

    public DynamicColor outlineVariant() {
        return new DynamicColor("outline_variant", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda123
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).neutralVariantPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda124
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double valueOf;
                valueOf = Double.valueOf(r2.isDark ? 30.0d : 80.0d);
                return valueOf;
            }
        }, false, new MaterialDynamicColors$$ExternalSyntheticLambda85(this), null, new ContrastCurve(1.0d, 1.0d, 3.0d, 7.0d), null);
    }

    public DynamicColor shadow() {
        return new DynamicColor("shadow", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda146
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).neutralPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda147
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double valueOf;
                valueOf = Double.valueOf(BuildConfig.SENTRY_SAMPLE_RATE);
                return valueOf;
            }
        }, false, null, null, null, null);
    }

    public DynamicColor scrim() {
        return new DynamicColor("scrim", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda116
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).neutralPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda117
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double valueOf;
                valueOf = Double.valueOf(BuildConfig.SENTRY_SAMPLE_RATE);
                return valueOf;
            }
        }, false, null, null, null, null);
    }

    public DynamicColor surfaceTint() {
        return new DynamicColor("surface_tint", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda88
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).primaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda89
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double valueOf;
                valueOf = Double.valueOf(r2.isDark ? 80.0d : 40.0d);
                return valueOf;
            }
        }, true, null, null, null, null);
    }

    public DynamicColor primary() {
        return new DynamicColor("primary", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda103
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).primaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda104
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.lambda$primary$53((DynamicScheme) obj);
            }
        }, true, new MaterialDynamicColors$$ExternalSyntheticLambda85(this), null, new ContrastCurve(3.0d, 4.5d, 7.0d, 11.0d), new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda105
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.this.m5517x39203b5((DynamicScheme) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Double lambda$primary$53(DynamicScheme dynamicScheme) {
        if (isMonochrome(dynamicScheme)) {
            return Double.valueOf(dynamicScheme.isDark ? 100.0d : BuildConfig.SENTRY_SAMPLE_RATE);
        }
        return Double.valueOf(dynamicScheme.isDark ? 80.0d : 40.0d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$primary$54$com-google-android-material-color-utilities-MaterialDynamicColors, reason: not valid java name */
    public /* synthetic */ ToneDeltaPair m5517x39203b5(DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(primaryContainer(), primary(), 15.0d, TonePolarity.NEARER, false);
    }

    public DynamicColor onPrimary() {
        return new DynamicColor("on_primary", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda106
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).primaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda108
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.lambda$onPrimary$56((DynamicScheme) obj);
            }
        }, false, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda109
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.this.m5496x16f20f37((DynamicScheme) obj);
            }
        }, null, new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Double lambda$onPrimary$56(DynamicScheme dynamicScheme) {
        if (isMonochrome(dynamicScheme)) {
            return Double.valueOf(dynamicScheme.isDark ? 10.0d : 90.0d);
        }
        return Double.valueOf(dynamicScheme.isDark ? 20.0d : 100.0d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onPrimary$57$com-google-android-material-color-utilities-MaterialDynamicColors, reason: not valid java name */
    public /* synthetic */ DynamicColor m5496x16f20f37(DynamicScheme dynamicScheme) {
        return primary();
    }

    public DynamicColor primaryContainer() {
        return new DynamicColor("primary_container", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).primaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda74
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.lambda$primaryContainer$59((DynamicScheme) obj);
            }
        }, true, new MaterialDynamicColors$$ExternalSyntheticLambda85(this), null, new ContrastCurve(1.0d, 1.0d, 3.0d, 7.0d), new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda96
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.this.m5518x8277b1b9((DynamicScheme) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Double lambda$primaryContainer$59(DynamicScheme dynamicScheme) {
        if (isFidelity(dynamicScheme)) {
            return Double.valueOf(performAlbers(dynamicScheme.sourceColorHct, dynamicScheme));
        }
        if (isMonochrome(dynamicScheme)) {
            return Double.valueOf(dynamicScheme.isDark ? 85.0d : 25.0d);
        }
        return Double.valueOf(dynamicScheme.isDark ? 30.0d : 90.0d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$primaryContainer$60$com-google-android-material-color-utilities-MaterialDynamicColors, reason: not valid java name */
    public /* synthetic */ ToneDeltaPair m5518x8277b1b9(DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(primaryContainer(), primary(), 15.0d, TonePolarity.NEARER, false);
    }

    public DynamicColor onPrimaryContainer() {
        return new DynamicColor("on_primary_container", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda56
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).primaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda57
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.this.m5497x617ce7dc((DynamicScheme) obj);
            }
        }, false, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda58
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.this.m5498x3d3e639d((DynamicScheme) obj);
            }
        }, null, new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onPrimaryContainer$62$com-google-android-material-color-utilities-MaterialDynamicColors, reason: not valid java name */
    public /* synthetic */ Double m5497x617ce7dc(DynamicScheme dynamicScheme) {
        if (isFidelity(dynamicScheme)) {
            return Double.valueOf(DynamicColor.foregroundTone(primaryContainer().tone.apply(dynamicScheme).doubleValue(), 4.5d));
        }
        if (isMonochrome(dynamicScheme)) {
            return Double.valueOf(dynamicScheme.isDark ? BuildConfig.SENTRY_SAMPLE_RATE : 100.0d);
        }
        return Double.valueOf(dynamicScheme.isDark ? 90.0d : 10.0d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onPrimaryContainer$63$com-google-android-material-color-utilities-MaterialDynamicColors, reason: not valid java name */
    public /* synthetic */ DynamicColor m5498x3d3e639d(DynamicScheme dynamicScheme) {
        return primaryContainer();
    }

    public DynamicColor inversePrimary() {
        return new DynamicColor("inverse_primary", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda90
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).primaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda91
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double valueOf;
                valueOf = Double.valueOf(r2.isDark ? 40.0d : 80.0d);
                return valueOf;
            }
        }, false, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda92
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.this.m5492x6f94cccc((DynamicScheme) obj);
            }
        }, null, new ContrastCurve(3.0d, 4.5d, 7.0d, 11.0d), null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$inversePrimary$66$com-google-android-material-color-utilities-MaterialDynamicColors, reason: not valid java name */
    public /* synthetic */ DynamicColor m5492x6f94cccc(DynamicScheme dynamicScheme) {
        return inverseSurface();
    }

    public DynamicColor secondary() {
        return new DynamicColor("secondary", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda129
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).secondaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda140
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double valueOf;
                valueOf = Double.valueOf(r2.isDark ? 80.0d : 40.0d);
                return valueOf;
            }
        }, true, new MaterialDynamicColors$$ExternalSyntheticLambda85(this), null, new ContrastCurve(3.0d, 4.5d, 7.0d, 11.0d), new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda151
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.this.m5521x991d7367((DynamicScheme) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$secondary$69$com-google-android-material-color-utilities-MaterialDynamicColors, reason: not valid java name */
    public /* synthetic */ ToneDeltaPair m5521x991d7367(DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(secondaryContainer(), secondary(), 15.0d, TonePolarity.NEARER, false);
    }

    public DynamicColor onSecondary() {
        return new DynamicColor("on_secondary", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda135
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).secondaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda136
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.lambda$onSecondary$71((DynamicScheme) obj);
            }
        }, false, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda137
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.this.m5503x1ad791fe((DynamicScheme) obj);
            }
        }, null, new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Double lambda$onSecondary$71(DynamicScheme dynamicScheme) {
        if (isMonochrome(dynamicScheme)) {
            return Double.valueOf(dynamicScheme.isDark ? 10.0d : 100.0d);
        }
        return Double.valueOf(dynamicScheme.isDark ? 20.0d : 100.0d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onSecondary$72$com-google-android-material-color-utilities-MaterialDynamicColors, reason: not valid java name */
    public /* synthetic */ DynamicColor m5503x1ad791fe(DynamicScheme dynamicScheme) {
        return secondary();
    }

    public DynamicColor secondaryContainer() {
        return new DynamicColor("secondary_container", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda17
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).secondaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda18
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.lambda$secondaryContainer$74((DynamicScheme) obj);
            }
        }, true, new MaterialDynamicColors$$ExternalSyntheticLambda85(this), null, new ContrastCurve(1.0d, 1.0d, 3.0d, 7.0d), new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda19
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.this.m5522x485cd00f((DynamicScheme) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Double lambda$secondaryContainer$74(DynamicScheme dynamicScheme) {
        double d = dynamicScheme.isDark ? 30.0d : 90.0d;
        if (isMonochrome(dynamicScheme)) {
            return Double.valueOf(dynamicScheme.isDark ? 30.0d : 85.0d);
        }
        if (!isFidelity(dynamicScheme)) {
            return Double.valueOf(d);
        }
        return Double.valueOf(performAlbers(dynamicScheme.secondaryPalette.getHct(findDesiredChromaByTone(dynamicScheme.secondaryPalette.getHue(), dynamicScheme.secondaryPalette.getChroma(), d, !dynamicScheme.isDark)), dynamicScheme));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$secondaryContainer$75$com-google-android-material-color-utilities-MaterialDynamicColors, reason: not valid java name */
    public /* synthetic */ ToneDeltaPair m5522x485cd00f(DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(secondaryContainer(), secondary(), 15.0d, TonePolarity.NEARER, false);
    }

    public DynamicColor onSecondaryContainer() {
        return new DynamicColor("on_secondary_container", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda67
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).secondaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda68
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.this.m5504x4fcce1f2((DynamicScheme) obj);
            }
        }, false, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda69
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.this.m5505x2b8e5db3((DynamicScheme) obj);
            }
        }, null, new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onSecondaryContainer$77$com-google-android-material-color-utilities-MaterialDynamicColors, reason: not valid java name */
    public /* synthetic */ Double m5504x4fcce1f2(DynamicScheme dynamicScheme) {
        if (isFidelity(dynamicScheme)) {
            return Double.valueOf(DynamicColor.foregroundTone(secondaryContainer().tone.apply(dynamicScheme).doubleValue(), 4.5d));
        }
        return Double.valueOf(dynamicScheme.isDark ? 90.0d : 10.0d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onSecondaryContainer$78$com-google-android-material-color-utilities-MaterialDynamicColors, reason: not valid java name */
    public /* synthetic */ DynamicColor m5505x2b8e5db3(DynamicScheme dynamicScheme) {
        return secondaryContainer();
    }

    public DynamicColor tertiary() {
        return new DynamicColor("tertiary", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda9
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).tertiaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda10
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.lambda$tertiary$80((DynamicScheme) obj);
            }
        }, true, new MaterialDynamicColors$$ExternalSyntheticLambda85(this), null, new ContrastCurve(3.0d, 4.5d, 7.0d, 11.0d), new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda12
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.this.m5525x1f6aa165((DynamicScheme) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Double lambda$tertiary$80(DynamicScheme dynamicScheme) {
        if (isMonochrome(dynamicScheme)) {
            return Double.valueOf(dynamicScheme.isDark ? 90.0d : 25.0d);
        }
        return Double.valueOf(dynamicScheme.isDark ? 80.0d : 40.0d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$tertiary$81$com-google-android-material-color-utilities-MaterialDynamicColors, reason: not valid java name */
    public /* synthetic */ ToneDeltaPair m5525x1f6aa165(DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(tertiaryContainer(), tertiary(), 15.0d, TonePolarity.NEARER, false);
    }

    public DynamicColor onTertiary() {
        return new DynamicColor("on_tertiary", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda143
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).tertiaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda144
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.lambda$onTertiary$83((DynamicScheme) obj);
            }
        }, false, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda145
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.this.m5510x36068449((DynamicScheme) obj);
            }
        }, null, new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Double lambda$onTertiary$83(DynamicScheme dynamicScheme) {
        if (isMonochrome(dynamicScheme)) {
            return Double.valueOf(dynamicScheme.isDark ? 10.0d : 90.0d);
        }
        return Double.valueOf(dynamicScheme.isDark ? 20.0d : 100.0d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onTertiary$84$com-google-android-material-color-utilities-MaterialDynamicColors, reason: not valid java name */
    public /* synthetic */ DynamicColor m5510x36068449(DynamicScheme dynamicScheme) {
        return tertiary();
    }

    public DynamicColor tertiaryContainer() {
        return new DynamicColor("tertiary_container", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda157
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).tertiaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda158
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.lambda$tertiaryContainer$86((DynamicScheme) obj);
            }
        }, true, new MaterialDynamicColors$$ExternalSyntheticLambda85(this), null, new ContrastCurve(1.0d, 1.0d, 3.0d, 7.0d), new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda159
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.this.m5526x357de1a8((DynamicScheme) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Double lambda$tertiaryContainer$86(DynamicScheme dynamicScheme) {
        if (isMonochrome(dynamicScheme)) {
            return Double.valueOf(dynamicScheme.isDark ? 60.0d : 49.0d);
        }
        if (isFidelity(dynamicScheme)) {
            return Double.valueOf(DislikeAnalyzer.fixIfDisliked(dynamicScheme.tertiaryPalette.getHct(performAlbers(dynamicScheme.tertiaryPalette.getHct(dynamicScheme.sourceColorHct.getTone()), dynamicScheme))).getTone());
        }
        return Double.valueOf(dynamicScheme.isDark ? 30.0d : 90.0d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$tertiaryContainer$87$com-google-android-material-color-utilities-MaterialDynamicColors, reason: not valid java name */
    public /* synthetic */ ToneDeltaPair m5526x357de1a8(DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(tertiaryContainer(), tertiary(), 15.0d, TonePolarity.NEARER, false);
    }

    public DynamicColor onTertiaryContainer() {
        return new DynamicColor("on_tertiary_container", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda6
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).tertiaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda7
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.this.m5511xb5c66ea9((DynamicScheme) obj);
            }
        }, false, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda8
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.this.m5512x9867113f((DynamicScheme) obj);
            }
        }, null, new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onTertiaryContainer$89$com-google-android-material-color-utilities-MaterialDynamicColors, reason: not valid java name */
    public /* synthetic */ Double m5511xb5c66ea9(DynamicScheme dynamicScheme) {
        if (isMonochrome(dynamicScheme)) {
            return Double.valueOf(dynamicScheme.isDark ? BuildConfig.SENTRY_SAMPLE_RATE : 100.0d);
        }
        if (isFidelity(dynamicScheme)) {
            return Double.valueOf(DynamicColor.foregroundTone(tertiaryContainer().tone.apply(dynamicScheme).doubleValue(), 4.5d));
        }
        return Double.valueOf(dynamicScheme.isDark ? 90.0d : 10.0d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onTertiaryContainer$90$com-google-android-material-color-utilities-MaterialDynamicColors, reason: not valid java name */
    public /* synthetic */ DynamicColor m5512x9867113f(DynamicScheme dynamicScheme) {
        return tertiaryContainer();
    }

    public DynamicColor error() {
        return new DynamicColor("error", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda82
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).errorPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda83
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double valueOf;
                valueOf = Double.valueOf(r2.isDark ? 80.0d : 40.0d);
                return valueOf;
            }
        }, true, new MaterialDynamicColors$$ExternalSyntheticLambda85(this), null, new ContrastCurve(3.0d, 4.5d, 7.0d, 11.0d), new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda84
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.this.m5489x590ec46a((DynamicScheme) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$error$93$com-google-android-material-color-utilities-MaterialDynamicColors, reason: not valid java name */
    public /* synthetic */ ToneDeltaPair m5489x590ec46a(DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(errorContainer(), error(), 15.0d, TonePolarity.NEARER, false);
    }

    public DynamicColor onError() {
        return new DynamicColor("on_error", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda130
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).errorPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda131
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double valueOf;
                valueOf = Double.valueOf(r2.isDark ? 20.0d : 100.0d);
                return valueOf;
            }
        }, false, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda132
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.this.m5494xb6a5d3ac((DynamicScheme) obj);
            }
        }, null, new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onError$96$com-google-android-material-color-utilities-MaterialDynamicColors, reason: not valid java name */
    public /* synthetic */ DynamicColor m5494xb6a5d3ac(DynamicScheme dynamicScheme) {
        return error();
    }

    public DynamicColor errorContainer() {
        return new DynamicColor("error_container", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda48
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).errorPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda49
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double valueOf;
                valueOf = Double.valueOf(r2.isDark ? 30.0d : 90.0d);
                return valueOf;
            }
        }, true, new MaterialDynamicColors$$ExternalSyntheticLambda85(this), null, new ContrastCurve(1.0d, 1.0d, 3.0d, 7.0d), new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda50
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.this.m5490x33346ee5((DynamicScheme) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$errorContainer$99$com-google-android-material-color-utilities-MaterialDynamicColors, reason: not valid java name */
    public /* synthetic */ ToneDeltaPair m5490x33346ee5(DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(errorContainer(), error(), 15.0d, TonePolarity.NEARER, false);
    }

    public DynamicColor onErrorContainer() {
        return new DynamicColor("on_error_container", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda70
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).errorPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda71
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double valueOf;
                valueOf = Double.valueOf(r2.isDark ? 90.0d : 10.0d);
                return valueOf;
            }
        }, false, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda72
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.this.m5495x2dffdbdb((DynamicScheme) obj);
            }
        }, null, new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onErrorContainer$102$com-google-android-material-color-utilities-MaterialDynamicColors, reason: not valid java name */
    public /* synthetic */ DynamicColor m5495x2dffdbdb(DynamicScheme dynamicScheme) {
        return errorContainer();
    }

    public DynamicColor primaryFixed() {
        return new DynamicColor("primary_fixed", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda73
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).primaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda75
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double valueOf;
                valueOf = Double.valueOf(MaterialDynamicColors.isMonochrome(r2) ? 40.0d : 90.0d);
                return valueOf;
            }
        }, true, new MaterialDynamicColors$$ExternalSyntheticLambda85(this), null, new ContrastCurve(1.0d, 1.0d, 3.0d, 7.0d), new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda76
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.this.m5519xcb141198((DynamicScheme) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$primaryFixed$105$com-google-android-material-color-utilities-MaterialDynamicColors, reason: not valid java name */
    public /* synthetic */ ToneDeltaPair m5519xcb141198(DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(primaryFixed(), primaryFixedDim(), 10.0d, TonePolarity.LIGHTER, true);
    }

    public DynamicColor primaryFixedDim() {
        return new DynamicColor("primary_fixed_dim", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda100
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).primaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda101
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double valueOf;
                valueOf = Double.valueOf(MaterialDynamicColors.isMonochrome(r2) ? 30.0d : 80.0d);
                return valueOf;
            }
        }, true, new MaterialDynamicColors$$ExternalSyntheticLambda85(this), null, new ContrastCurve(1.0d, 1.0d, 3.0d, 7.0d), new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda102
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.this.m5520x8f195ac5((DynamicScheme) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$primaryFixedDim$108$com-google-android-material-color-utilities-MaterialDynamicColors, reason: not valid java name */
    public /* synthetic */ ToneDeltaPair m5520x8f195ac5(DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(primaryFixed(), primaryFixedDim(), 10.0d, TonePolarity.LIGHTER, true);
    }

    public DynamicColor onPrimaryFixed() {
        return new DynamicColor("on_primary_fixed", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda119
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).primaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda120
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double valueOf;
                valueOf = Double.valueOf(MaterialDynamicColors.isMonochrome(r2) ? 100.0d : 10.0d);
                return valueOf;
            }
        }, false, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda121
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.this.m5499x702e4bf2((DynamicScheme) obj);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda122
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.this.m5500x4befc7b3((DynamicScheme) obj);
            }
        }, new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onPrimaryFixed$111$com-google-android-material-color-utilities-MaterialDynamicColors, reason: not valid java name */
    public /* synthetic */ DynamicColor m5499x702e4bf2(DynamicScheme dynamicScheme) {
        return primaryFixedDim();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onPrimaryFixed$112$com-google-android-material-color-utilities-MaterialDynamicColors, reason: not valid java name */
    public /* synthetic */ DynamicColor m5500x4befc7b3(DynamicScheme dynamicScheme) {
        return primaryFixed();
    }

    public DynamicColor onPrimaryFixedVariant() {
        return new DynamicColor("on_primary_fixed_variant", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda160
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).primaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda161
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double valueOf;
                valueOf = Double.valueOf(MaterialDynamicColors.isMonochrome(r2) ? 90.0d : 30.0d);
                return valueOf;
            }
        }, false, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.this.m5501x19d0bbbf((DynamicScheme) obj);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda2
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.this.m5502xf5923780((DynamicScheme) obj);
            }
        }, new ContrastCurve(3.0d, 4.5d, 7.0d, 11.0d), null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onPrimaryFixedVariant$115$com-google-android-material-color-utilities-MaterialDynamicColors, reason: not valid java name */
    public /* synthetic */ DynamicColor m5501x19d0bbbf(DynamicScheme dynamicScheme) {
        return primaryFixedDim();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onPrimaryFixedVariant$116$com-google-android-material-color-utilities-MaterialDynamicColors, reason: not valid java name */
    public /* synthetic */ DynamicColor m5502xf5923780(DynamicScheme dynamicScheme) {
        return primaryFixed();
    }

    public DynamicColor secondaryFixed() {
        return new DynamicColor("secondary_fixed", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda162
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).secondaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda11
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double valueOf;
                valueOf = Double.valueOf(MaterialDynamicColors.isMonochrome(r2) ? 80.0d : 90.0d);
                return valueOf;
            }
        }, true, new MaterialDynamicColors$$ExternalSyntheticLambda85(this), null, new ContrastCurve(1.0d, 1.0d, 3.0d, 7.0d), new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda22
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.this.m5523x75ece309((DynamicScheme) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$secondaryFixed$119$com-google-android-material-color-utilities-MaterialDynamicColors, reason: not valid java name */
    public /* synthetic */ ToneDeltaPair m5523x75ece309(DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(secondaryFixed(), secondaryFixedDim(), 10.0d, TonePolarity.LIGHTER, true);
    }

    public DynamicColor secondaryFixedDim() {
        return new DynamicColor("secondary_fixed_dim", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda77
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).secondaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda78
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double valueOf;
                valueOf = Double.valueOf(MaterialDynamicColors.isMonochrome(r2) ? 70.0d : 80.0d);
                return valueOf;
            }
        }, true, new MaterialDynamicColors$$ExternalSyntheticLambda85(this), null, new ContrastCurve(1.0d, 1.0d, 3.0d, 7.0d), new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda79
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.this.m5524x801c242f((DynamicScheme) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$secondaryFixedDim$122$com-google-android-material-color-utilities-MaterialDynamicColors, reason: not valid java name */
    public /* synthetic */ ToneDeltaPair m5524x801c242f(DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(secondaryFixed(), secondaryFixedDim(), 10.0d, TonePolarity.LIGHTER, true);
    }

    public DynamicColor onSecondaryFixed() {
        return new DynamicColor("on_secondary_fixed", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda33
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).secondaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda44
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double valueOf;
                valueOf = Double.valueOf(10.0d);
                return valueOf;
            }
        }, false, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda55
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.this.m5506xf72fd9a3((DynamicScheme) obj);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda66
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.this.m5507xd2f15564((DynamicScheme) obj);
            }
        }, new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onSecondaryFixed$125$com-google-android-material-color-utilities-MaterialDynamicColors, reason: not valid java name */
    public /* synthetic */ DynamicColor m5506xf72fd9a3(DynamicScheme dynamicScheme) {
        return secondaryFixedDim();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onSecondaryFixed$126$com-google-android-material-color-utilities-MaterialDynamicColors, reason: not valid java name */
    public /* synthetic */ DynamicColor m5507xd2f15564(DynamicScheme dynamicScheme) {
        return secondaryFixed();
    }

    public DynamicColor onSecondaryFixedVariant() {
        return new DynamicColor("on_secondary_fixed_variant", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda43
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).secondaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda45
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double valueOf;
                valueOf = Double.valueOf(MaterialDynamicColors.isMonochrome(r2) ? 25.0d : 30.0d);
                return valueOf;
            }
        }, false, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda46
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.this.m5508x26187114((DynamicScheme) obj);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda47
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.this.m5509x8b913aa((DynamicScheme) obj);
            }
        }, new ContrastCurve(3.0d, 4.5d, 7.0d, 11.0d), null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onSecondaryFixedVariant$129$com-google-android-material-color-utilities-MaterialDynamicColors, reason: not valid java name */
    public /* synthetic */ DynamicColor m5508x26187114(DynamicScheme dynamicScheme) {
        return secondaryFixedDim();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onSecondaryFixedVariant$130$com-google-android-material-color-utilities-MaterialDynamicColors, reason: not valid java name */
    public /* synthetic */ DynamicColor m5509x8b913aa(DynamicScheme dynamicScheme) {
        return secondaryFixed();
    }

    public DynamicColor tertiaryFixed() {
        return new DynamicColor("tertiary_fixed", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda3
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).tertiaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda4
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double valueOf;
                valueOf = Double.valueOf(MaterialDynamicColors.isMonochrome(r2) ? 40.0d : 90.0d);
                return valueOf;
            }
        }, true, new MaterialDynamicColors$$ExternalSyntheticLambda85(this), null, new ContrastCurve(1.0d, 1.0d, 3.0d, 7.0d), new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda5
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.this.m5527x59237289((DynamicScheme) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$tertiaryFixed$133$com-google-android-material-color-utilities-MaterialDynamicColors, reason: not valid java name */
    public /* synthetic */ ToneDeltaPair m5527x59237289(DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(tertiaryFixed(), tertiaryFixedDim(), 10.0d, TonePolarity.LIGHTER, true);
    }

    public DynamicColor tertiaryFixedDim() {
        return new DynamicColor("tertiary_fixed_dim", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda154
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).tertiaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda155
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double valueOf;
                valueOf = Double.valueOf(MaterialDynamicColors.isMonochrome(r2) ? 30.0d : 80.0d);
                return valueOf;
            }
        }, true, new MaterialDynamicColors$$ExternalSyntheticLambda85(this), null, new ContrastCurve(1.0d, 1.0d, 3.0d, 7.0d), new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda156
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.this.m5528x24c02d4a((DynamicScheme) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$tertiaryFixedDim$136$com-google-android-material-color-utilities-MaterialDynamicColors, reason: not valid java name */
    public /* synthetic */ ToneDeltaPair m5528x24c02d4a(DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(tertiaryFixed(), tertiaryFixedDim(), 10.0d, TonePolarity.LIGHTER, true);
    }

    public DynamicColor onTertiaryFixed() {
        return new DynamicColor("on_tertiary_fixed", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda138
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).tertiaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda139
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double valueOf;
                valueOf = Double.valueOf(MaterialDynamicColors.isMonochrome(r2) ? 100.0d : 10.0d);
                return valueOf;
            }
        }, false, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda141
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.this.m5513xfe3fcbf0((DynamicScheme) obj);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda142
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.this.m5514xe0e06e86((DynamicScheme) obj);
            }
        }, new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onTertiaryFixed$139$com-google-android-material-color-utilities-MaterialDynamicColors, reason: not valid java name */
    public /* synthetic */ DynamicColor m5513xfe3fcbf0(DynamicScheme dynamicScheme) {
        return tertiaryFixedDim();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onTertiaryFixed$140$com-google-android-material-color-utilities-MaterialDynamicColors, reason: not valid java name */
    public /* synthetic */ DynamicColor m5514xe0e06e86(DynamicScheme dynamicScheme) {
        return tertiaryFixed();
    }

    public DynamicColor onTertiaryFixedVariant() {
        return new DynamicColor("on_tertiary_fixed_variant", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda51
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).tertiaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda52
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double valueOf;
                valueOf = Double.valueOf(MaterialDynamicColors.isMonochrome(r2) ? 90.0d : 30.0d);
                return valueOf;
            }
        }, false, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda53
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.this.m5515x702fc122((DynamicScheme) obj);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda54
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MaterialDynamicColors.this.m5516x4bf13ce3((DynamicScheme) obj);
            }
        }, new ContrastCurve(3.0d, 4.5d, 7.0d, 11.0d), null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onTertiaryFixedVariant$143$com-google-android-material-color-utilities-MaterialDynamicColors, reason: not valid java name */
    public /* synthetic */ DynamicColor m5515x702fc122(DynamicScheme dynamicScheme) {
        return tertiaryFixedDim();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onTertiaryFixedVariant$144$com-google-android-material-color-utilities-MaterialDynamicColors, reason: not valid java name */
    public /* synthetic */ DynamicColor m5516x4bf13ce3(DynamicScheme dynamicScheme) {
        return tertiaryFixed();
    }

    public DynamicColor controlActivated() {
        return DynamicColor.fromPalette("control_activated", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda98
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).primaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda99
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double valueOf;
                valueOf = Double.valueOf(r2.isDark ? 30.0d : 90.0d);
                return valueOf;
            }
        });
    }

    public DynamicColor controlNormal() {
        return DynamicColor.fromPalette("control_normal", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda13
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).neutralVariantPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda14
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double valueOf;
                valueOf = Double.valueOf(r2.isDark ? 80.0d : 30.0d);
                return valueOf;
            }
        });
    }

    public DynamicColor controlHighlight() {
        return new DynamicColor("control_highlight", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda150
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).neutralPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda152
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double valueOf;
                valueOf = Double.valueOf(r2.isDark ? 100.0d : BuildConfig.SENTRY_SAMPLE_RATE);
                return valueOf;
            }
        }, false, null, null, null, null, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda153
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double valueOf;
                valueOf = Double.valueOf(r2.isDark ? 0.2d : 0.12d);
                return valueOf;
            }
        });
    }

    public DynamicColor textPrimaryInverse() {
        return DynamicColor.fromPalette("text_primary_inverse", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda112
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).neutralPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda113
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double valueOf;
                valueOf = Double.valueOf(r2.isDark ? 10.0d : 90.0d);
                return valueOf;
            }
        });
    }

    public DynamicColor textSecondaryAndTertiaryInverse() {
        return DynamicColor.fromPalette("text_secondary_and_tertiary_inverse", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda107
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).neutralVariantPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda118
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double valueOf;
                valueOf = Double.valueOf(r2.isDark ? 30.0d : 80.0d);
                return valueOf;
            }
        });
    }

    public DynamicColor textPrimaryInverseDisableOnly() {
        return DynamicColor.fromPalette("text_primary_inverse_disable_only", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda41
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).neutralPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda42
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double valueOf;
                valueOf = Double.valueOf(r2.isDark ? 10.0d : 90.0d);
                return valueOf;
            }
        });
    }

    public DynamicColor textSecondaryAndTertiaryInverseDisabled() {
        return DynamicColor.fromPalette("text_secondary_and_tertiary_inverse_disabled", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda148
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).neutralPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda149
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double valueOf;
                valueOf = Double.valueOf(r2.isDark ? 10.0d : 90.0d);
                return valueOf;
            }
        });
    }

    public DynamicColor textHintInverse() {
        return DynamicColor.fromPalette("text_hint_inverse", new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda15
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).neutralPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.MaterialDynamicColors$$ExternalSyntheticLambda16
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double valueOf;
                valueOf = Double.valueOf(r2.isDark ? 10.0d : 90.0d);
                return valueOf;
            }
        });
    }

    private static ViewingConditions viewingConditionsForAlbers(DynamicScheme dynamicScheme) {
        return ViewingConditions.defaultWithBackgroundLstar(dynamicScheme.isDark ? 30.0d : 80.0d);
    }

    private static boolean isFidelity(DynamicScheme dynamicScheme) {
        return dynamicScheme.variant == Variant.FIDELITY || dynamicScheme.variant == Variant.CONTENT;
    }

    private static boolean isMonochrome(DynamicScheme dynamicScheme) {
        return dynamicScheme.variant == Variant.MONOCHROME;
    }

    static double findDesiredChromaByTone(double d, double d2, double d3, boolean z) {
        Hct from = Hct.from(d, d2, d3);
        if (from.getChroma() >= d2) {
            return d3;
        }
        Hct hct = from;
        double chroma = from.getChroma();
        double d4 = d3;
        while (hct.getChroma() < d2) {
            double d5 = d4 + (z ? -1.0d : 1.0d);
            Hct from2 = Hct.from(d, d2, d5);
            if (chroma > from2.getChroma() || Math.abs(from2.getChroma() - d2) < 0.4d) {
                return d5;
            }
            if (Math.abs(from2.getChroma() - d2) < Math.abs(hct.getChroma() - d2)) {
                hct = from2;
            }
            chroma = Math.max(chroma, from2.getChroma());
            d4 = d5;
        }
        return d4;
    }

    static double performAlbers(Hct hct, DynamicScheme dynamicScheme) {
        Hct inViewingConditions = hct.inViewingConditions(viewingConditionsForAlbers(dynamicScheme));
        if (DynamicColor.tonePrefersLightForeground(hct.getTone()) && !DynamicColor.toneAllowsLightForeground(inViewingConditions.getTone())) {
            return DynamicColor.enableLightForeground(hct.getTone());
        }
        return DynamicColor.enableLightForeground(inViewingConditions.getTone());
    }
}
