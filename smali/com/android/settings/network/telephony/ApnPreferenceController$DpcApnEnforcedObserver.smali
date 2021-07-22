.class Lcom/android/settings/network/telephony/ApnPreferenceController$DpcApnEnforcedObserver;
.super Landroid/database/ContentObserver;
.source "ApnPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/ApnPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DpcApnEnforcedObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/telephony/ApnPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/network/telephony/ApnPreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/android/settings/network/telephony/ApnPreferenceController$DpcApnEnforcedObserver;->this$0:Lcom/android/settings/network/telephony/ApnPreferenceController;

    .line 131
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/android/settings/network/telephony/ApnPreferenceController$DpcApnEnforcedObserver;->this$0:Lcom/android/settings/network/telephony/ApnPreferenceController;

    invoke-static {p0}, Lcom/android/settings/network/telephony/ApnPreferenceController;->access$000(Lcom/android/settings/network/telephony/ApnPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/ApnPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public register(Landroid/content/Context;)V
    .locals 2

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Landroid/provider/Telephony$Carriers;->ENFORCE_MANAGED_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public unRegister(Landroid/content/Context;)V
    .locals 0

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
