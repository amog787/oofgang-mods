.class Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController$SettingObserver$1;
.super Ljava/lang/Object;
.source "DefaultPaymentSettingsPreferenceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController$SettingObserver;->onChange(ZLandroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController$SettingObserver;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController$SettingObserver;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController$SettingObserver$1;->this$1:Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController$SettingObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 213
    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController$SettingObserver$1;->this$1:Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController$SettingObserver;

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController$SettingObserver;->this$0:Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController;

    invoke-static {p0}, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController$SettingObserver;->access$100(Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController$SettingObserver;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
