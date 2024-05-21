package androidx.navigation.ui;

import android.graphics.drawable.Drawable;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.ActionBarDrawerToggle;
import androidx.appcompat.app.AppCompatActivity;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ActionBarOnDestinationChangedListener.kt */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\r\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u001c\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\n2\b\b\u0001\u0010\u000b\u001a\u00020\fH\u0014J\u0012\u0010\r\u001a\u00020\b2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Landroidx/navigation/ui/ActionBarOnDestinationChangedListener;", "Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;", "activity", "Landroidx/appcompat/app/AppCompatActivity;", "configuration", "Landroidx/navigation/ui/AppBarConfiguration;", "(Landroidx/appcompat/app/AppCompatActivity;Landroidx/navigation/ui/AppBarConfiguration;)V", "setNavigationIcon", "", "icon", "Landroid/graphics/drawable/Drawable;", "contentDescription", "", "setTitle", "title", "", "navigation-ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class ActionBarOnDestinationChangedListener extends AbstractAppBarOnDestinationChangedListener {
    private final AppCompatActivity activity;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ActionBarOnDestinationChangedListener(androidx.appcompat.app.AppCompatActivity r3, androidx.navigation.ui.AppBarConfiguration r4) {
        /*
            r2 = this;
            java.lang.String r0 = "activity"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            java.lang.String r0 = "configuration"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            androidx.appcompat.app.ActionBarDrawerToggle$Delegate r0 = r3.getDrawerToggleDelegate()
            if (r0 == 0) goto L1f
            android.content.Context r0 = r0.getActionBarThemedContext()
            java.lang.String r1 = "checkNotNull(activity.dr… }.actionBarThemedContext"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            r2.<init>(r0, r4)
            r2.activity = r3
            return
        L1f:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r4 = "Activity "
            r2.<init>(r4)
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r3 = " does not have an DrawerToggleDelegate set"
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r2 = r2.toString()
            java.lang.IllegalStateException r3 = new java.lang.IllegalStateException
            java.lang.String r2 = r2.toString()
            r3.<init>(r2)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.ui.ActionBarOnDestinationChangedListener.<init>(androidx.appcompat.app.AppCompatActivity, androidx.navigation.ui.AppBarConfiguration):void");
    }

    @Override // androidx.navigation.ui.AbstractAppBarOnDestinationChangedListener
    protected void setTitle(CharSequence title) {
        ActionBar supportActionBar = this.activity.getSupportActionBar();
        if (supportActionBar == null) {
            throw new IllegalStateException(("Activity " + this.activity + " does not have an ActionBar set via setSupportActionBar()").toString());
        }
        Intrinsics.checkNotNullExpressionValue(supportActionBar, "checkNotNull(activity.su…ortActionBar()\"\n        }");
        supportActionBar.setTitle(title);
    }

    @Override // androidx.navigation.ui.AbstractAppBarOnDestinationChangedListener
    protected void setNavigationIcon(Drawable icon, int contentDescription) {
        ActionBar supportActionBar = this.activity.getSupportActionBar();
        if (supportActionBar == null) {
            throw new IllegalStateException(("Activity " + this.activity + " does not have an ActionBar set via setSupportActionBar()").toString());
        }
        Intrinsics.checkNotNullExpressionValue(supportActionBar, "checkNotNull(activity.su…ortActionBar()\"\n        }");
        supportActionBar.setDisplayHomeAsUpEnabled(icon != null);
        ActionBarDrawerToggle.Delegate drawerToggleDelegate = this.activity.getDrawerToggleDelegate();
        if (drawerToggleDelegate == null) {
            throw new IllegalStateException(("Activity " + this.activity + " does not have an DrawerToggleDelegate set").toString());
        }
        Intrinsics.checkNotNullExpressionValue(drawerToggleDelegate, "checkNotNull(activity.dr…leDelegate set\"\n        }");
        drawerToggleDelegate.setActionBarUpIndicator(icon, contentDescription);
    }
}
