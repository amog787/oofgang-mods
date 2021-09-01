.class public Lcom/android/settings/network/PreferredNetworkModeContentObserver;
.super Landroid/database/ContentObserver;
.source "PreferredNetworkModeContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/PreferredNetworkModeContentObserver$OnPreferredNetworkModeChangedListener;
    }
.end annotation


# instance fields
.field mListener:Lcom/android/settings/network/PreferredNetworkModeContentObserver$OnPreferredNetworkModeChangedListener;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 44
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 45
    iget-object p0, p0, Lcom/android/settings/network/PreferredNetworkModeContentObserver;->mListener:Lcom/android/settings/network/PreferredNetworkModeContentObserver$OnPreferredNetworkModeChangedListener;

    if-eqz p0, :cond_0

    .line 46
    invoke-interface {p0}, Lcom/android/settings/network/PreferredNetworkModeContentObserver$OnPreferredNetworkModeChangedListener;->onPreferredNetworkModeChanged()V

    :cond_0
    return-void
.end method

.method public register(Landroid/content/Context;I)V
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preferred_network_mode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public setPreferredNetworkModeChangedListener(Lcom/android/settings/network/PreferredNetworkModeContentObserver$OnPreferredNetworkModeChangedListener;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/android/settings/network/PreferredNetworkModeContentObserver;->mListener:Lcom/android/settings/network/PreferredNetworkModeContentObserver$OnPreferredNetworkModeChangedListener;

    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 0

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
