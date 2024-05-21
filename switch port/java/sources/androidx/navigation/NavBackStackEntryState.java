package androidx.navigation;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.lifecycle.Lifecycle;
import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: NavBackStackEntryState.kt */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0001\u0018\u0000 $2\u00020\u0001:\u0001$B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u000f\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\b\u0010\u0016\u001a\u00020\rH\u0016J(\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fJ\u0018\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\rH\u0016R\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\f\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\u0011¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0014\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u000b¨\u0006%"}, d2 = {"Landroidx/navigation/NavBackStackEntryState;", "Landroid/os/Parcelable;", "entry", "Landroidx/navigation/NavBackStackEntry;", "(Landroidx/navigation/NavBackStackEntry;)V", "inParcel", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "args", "Landroid/os/Bundle;", "getArgs", "()Landroid/os/Bundle;", "destinationId", "", "getDestinationId", "()I", "id", "", "getId", "()Ljava/lang/String;", "savedState", "getSavedState", "describeContents", "instantiate", "context", "Landroid/content/Context;", "destination", "Landroidx/navigation/NavDestination;", "hostLifecycleState", "Landroidx/lifecycle/Lifecycle$State;", "viewModel", "Landroidx/navigation/NavControllerViewModel;", "writeToParcel", "", "parcel", CmcdHeadersFactory.OBJECT_TYPE_INIT_SEGMENT, "Companion", "navigation-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class NavBackStackEntryState implements Parcelable {
    private final Bundle args;
    private final int destinationId;
    private final String id;
    private final Bundle savedState;
    public static final Parcelable.Creator<NavBackStackEntryState> CREATOR = new Parcelable.Creator<NavBackStackEntryState>() { // from class: androidx.navigation.NavBackStackEntryState$Companion$CREATOR$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NavBackStackEntryState createFromParcel(Parcel inParcel) {
            Intrinsics.checkNotNullParameter(inParcel, "inParcel");
            return new NavBackStackEntryState(inParcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NavBackStackEntryState[] newArray(int size) {
            return new NavBackStackEntryState[size];
        }
    };

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final Bundle getArgs() {
        return this.args;
    }

    public final int getDestinationId() {
        return this.destinationId;
    }

    public final String getId() {
        return this.id;
    }

    public final Bundle getSavedState() {
        return this.savedState;
    }

    public NavBackStackEntryState(NavBackStackEntry entry) {
        Intrinsics.checkNotNullParameter(entry, "entry");
        this.id = entry.getId();
        this.destinationId = entry.getDestination().getId();
        this.args = entry.getArguments();
        Bundle bundle = new Bundle();
        this.savedState = bundle;
        entry.saveState(bundle);
    }

    public NavBackStackEntryState(Parcel inParcel) {
        Intrinsics.checkNotNullParameter(inParcel, "inParcel");
        String readString = inParcel.readString();
        Intrinsics.checkNotNull(readString);
        this.id = readString;
        this.destinationId = inParcel.readInt();
        this.args = inParcel.readBundle(getClass().getClassLoader());
        Bundle readBundle = inParcel.readBundle(getClass().getClassLoader());
        Intrinsics.checkNotNull(readBundle);
        this.savedState = readBundle;
    }

    public final NavBackStackEntry instantiate(Context context, NavDestination destination, Lifecycle.State hostLifecycleState, NavControllerViewModel viewModel) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(destination, "destination");
        Intrinsics.checkNotNullParameter(hostLifecycleState, "hostLifecycleState");
        Bundle bundle = this.args;
        if (bundle != null) {
            bundle.setClassLoader(context.getClassLoader());
        } else {
            bundle = null;
        }
        return NavBackStackEntry.INSTANCE.create(context, destination, bundle, hostLifecycleState, viewModel, this.id, this.savedState);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        parcel.writeString(this.id);
        parcel.writeInt(this.destinationId);
        parcel.writeBundle(this.args);
        parcel.writeBundle(this.savedState);
    }
}
