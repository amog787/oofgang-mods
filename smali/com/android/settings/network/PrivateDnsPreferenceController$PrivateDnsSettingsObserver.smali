.class Lcom/android/settings/network/PrivateDnsPreferenceController$PrivateDnsSettingsObserver;
.super Landroid/database/ContentObserver;
.source "PrivateDnsPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/PrivateDnsPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrivateDnsSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/PrivateDnsPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/PrivateDnsPreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/android/settings/network/PrivateDnsPreferenceController$PrivateDnsSettingsObserver;->this$0:Lcom/android/settings/network/PrivateDnsPreferenceController;

    .line 153
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 158
    iget-object p1, p0, Lcom/android/settings/network/PrivateDnsPreferenceController$PrivateDnsSettingsObserver;->this$0:Lcom/android/settings/network/PrivateDnsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/network/PrivateDnsPreferenceController;->access$000(Lcom/android/settings/network/PrivateDnsPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 159
    iget-object p0, p0, Lcom/android/settings/network/PrivateDnsPreferenceController$PrivateDnsSettingsObserver;->this$0:Lcom/android/settings/network/PrivateDnsPreferenceController;

    invoke-static {p0}, Lcom/android/settings/network/PrivateDnsPreferenceController;->access$000(Lcom/android/settings/network/PrivateDnsPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/network/PrivateDnsPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method
