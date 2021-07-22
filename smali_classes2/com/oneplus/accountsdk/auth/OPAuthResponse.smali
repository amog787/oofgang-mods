.class public Lcom/oneplus/accountsdk/auth/OPAuthResponse;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oneplus/accountsdk/auth/OPAuthResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Lcom/oneplus/accountsdk/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/oneplus/accountsdk/auth/OPAuthResponse;

    new-instance v0, Lcom/oneplus/accountsdk/auth/OPAuthResponse$1;

    invoke-direct {v0}, Lcom/oneplus/accountsdk/auth/OPAuthResponse$1;-><init>()V

    sput-object v0, Lcom/oneplus/accountsdk/auth/OPAuthResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/accountsdk/a$a;->a(Landroid/os/IBinder;)Lcom/oneplus/accountsdk/a;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/accountsdk/auth/OPAuthResponse;->a:Lcom/oneplus/accountsdk/a;

    return-void
.end method

.method static a(Lcom/oneplus/accountsdk/a;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/oneplus/accountsdk/a;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method private static a(Lcom/oneplus/accountsdk/a;Landroid/os/Bundle;)V
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/oneplus/accountsdk/a;->a(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/accountsdk/auth/OPAuthResponse;->a:Lcom/oneplus/accountsdk/a;

    invoke-static {p0, p1}, Lcom/oneplus/accountsdk/auth/OPAuthResponse;->a(Lcom/oneplus/accountsdk/a;Landroid/os/Bundle;)V

    return-void
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/accountsdk/auth/OPAuthResponse;->a:Lcom/oneplus/accountsdk/a;

    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
