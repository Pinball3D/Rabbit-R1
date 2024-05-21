package tech.rabbit.r1systemupdater.service;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes3.dex */
public interface IUpdateCallback extends IInterface {
    public static final String DESCRIPTOR = "tech.rabbit.r1systemupdater.service.IUpdateCallback";

    /* loaded from: classes3.dex */
    public static class Default implements IUpdateCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // tech.rabbit.r1systemupdater.service.IUpdateCallback
        public void onPayloadApplicationComplete(int i) throws RemoteException {
        }

        @Override // tech.rabbit.r1systemupdater.service.IUpdateCallback
        public void onStatusUpdate(int i, float f) throws RemoteException {
        }
    }

    void onPayloadApplicationComplete(int i) throws RemoteException;

    void onStatusUpdate(int i, float f) throws RemoteException;

    /* loaded from: classes3.dex */
    public static abstract class Stub extends Binder implements IUpdateCallback {
        static final int TRANSACTION_onPayloadApplicationComplete = 2;
        static final int TRANSACTION_onStatusUpdate = 1;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, IUpdateCallback.DESCRIPTOR);
        }

        public static IUpdateCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(IUpdateCallback.DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IUpdateCallback)) {
                return (IUpdateCallback) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(IUpdateCallback.DESCRIPTOR);
            }
            if (i == 1598968902) {
                parcel2.writeString(IUpdateCallback.DESCRIPTOR);
                return true;
            }
            if (i == 1) {
                onStatusUpdate(parcel.readInt(), parcel.readFloat());
                parcel2.writeNoException();
            } else if (i == 2) {
                onPayloadApplicationComplete(parcel.readInt());
                parcel2.writeNoException();
            } else {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            return true;
        }

        /* loaded from: classes3.dex */
        private static class Proxy implements IUpdateCallback {
            private IBinder mRemote;

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IUpdateCallback.DESCRIPTOR;
            }

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // tech.rabbit.r1systemupdater.service.IUpdateCallback
            public void onStatusUpdate(int i, float f) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IUpdateCallback.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeFloat(f);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // tech.rabbit.r1systemupdater.service.IUpdateCallback
            public void onPayloadApplicationComplete(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IUpdateCallback.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
