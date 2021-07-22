.class public Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController$DataContentObserver;
.super Landroid/database/ContentObserver;
.source "CdmaBasePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController$DataContentObserver;->this$0:Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;

    .line 98
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 103
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 104
    iget-object p0, p0, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController$DataContentObserver;->this$0:Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;

    iget-object p1, p0, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public register(Landroid/content/Context;I)V
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preferred_network_mode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public unRegister(Landroid/content/Context;)V
    .locals 0

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
