.class Lcom/android/settings/AirplaneModeEnabler$OPPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "AirplaneModeEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AirplaneModeEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OPPhoneStateListener"
.end annotation


# instance fields
.field airplaneModeEnablerWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/AirplaneModeEnabler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/android/settings/AirplaneModeEnabler;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Landroid/telephony/PhoneStateListener;-><init>(Landroid/os/Looper;)V

    .line 83
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/settings/AirplaneModeEnabler$OPPhoneStateListener;->airplaneModeEnablerWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onRadioPowerStateChanged(I)V
    .locals 0

    .line 91
    iget-object p1, p0, Lcom/android/settings/AirplaneModeEnabler$OPPhoneStateListener;->airplaneModeEnablerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 92
    iget-object p0, p0, Lcom/android/settings/AirplaneModeEnabler$OPPhoneStateListener;->airplaneModeEnablerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/AirplaneModeEnabler;

    invoke-static {p0}, Lcom/android/settings/AirplaneModeEnabler;->access$000(Lcom/android/settings/AirplaneModeEnabler;)V

    :cond_0
    return-void
.end method
