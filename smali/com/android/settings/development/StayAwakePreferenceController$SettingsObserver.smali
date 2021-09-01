.class Lcom/android/settings/development/StayAwakePreferenceController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "StayAwakePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/StayAwakePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final mStayAwakeUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings/development/StayAwakePreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/development/StayAwakePreferenceController;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/android/settings/development/StayAwakePreferenceController$SettingsObserver;->this$0:Lcom/android/settings/development/StayAwakePreferenceController;

    .line 143
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "stay_on_while_plugged_in"

    .line 139
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/StayAwakePreferenceController$SettingsObserver;->mStayAwakeUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 158
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 159
    iget-object p1, p0, Lcom/android/settings/development/StayAwakePreferenceController$SettingsObserver;->mStayAwakeUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 160
    iget-object p0, p0, Lcom/android/settings/development/StayAwakePreferenceController$SettingsObserver;->this$0:Lcom/android/settings/development/StayAwakePreferenceController;

    invoke-static {p0}, Lcom/android/settings/development/StayAwakePreferenceController;->access$100(Lcom/android/settings/development/StayAwakePreferenceController;)Lcom/android/settingslib/RestrictedSwitchPreference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/development/StayAwakePreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public register(Z)V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/android/settings/development/StayAwakePreferenceController$SettingsObserver;->this$0:Lcom/android/settings/development/StayAwakePreferenceController;

    invoke-static {v0}, Lcom/android/settings/development/StayAwakePreferenceController;->access$000(Lcom/android/settings/development/StayAwakePreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 149
    iget-object p1, p0, Lcom/android/settings/development/StayAwakePreferenceController$SettingsObserver;->mStayAwakeUri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method
