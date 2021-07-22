.class public Lcom/android/settings/network/MobileDataContentObserver;
.super Landroid/database/ContentObserver;
.source "MobileDataContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/MobileDataContentObserver$OnMobileDataChangedListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/settings/network/MobileDataContentObserver$OnMobileDataChangedListener;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method public static getObservableUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 3

    const-string v0, "mobile_data"

    .line 40
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 41
    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 42
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result p0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_0

    .line 43
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_0
    return-object v1
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 54
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 55
    iget-object p0, p0, Lcom/android/settings/network/MobileDataContentObserver;->mListener:Lcom/android/settings/network/MobileDataContentObserver$OnMobileDataChangedListener;

    if-eqz p0, :cond_0

    .line 56
    invoke-interface {p0}, Lcom/android/settings/network/MobileDataContentObserver$OnMobileDataChangedListener;->onMobileDataChanged()V

    :cond_0
    return-void
.end method

.method public register(Landroid/content/Context;I)V
    .locals 1

    .line 61
    invoke-static {p1, p2}, Lcom/android/settings/network/MobileDataContentObserver;->getObservableUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p2

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public setOnMobileDataChangedListener(Lcom/android/settings/network/MobileDataContentObserver$OnMobileDataChangedListener;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/android/settings/network/MobileDataContentObserver;->mListener:Lcom/android/settings/network/MobileDataContentObserver$OnMobileDataChangedListener;

    return-void
.end method

.method public unRegister(Landroid/content/Context;)V
    .locals 0

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
