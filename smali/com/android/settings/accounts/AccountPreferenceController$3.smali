.class Lcom/android/settings/accounts/AccountPreferenceController$3;
.super Ljava/lang/Object;
.source "AccountPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/AccountPreferenceController;->newAddOneplusAccountPreference(Landroid/content/Context;)Lcom/android/settingslib/RestrictedPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/AccountPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/AccountPreferenceController;)V
    .locals 0

    .line 714
    iput-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceController$3;->this$0:Lcom/android/settings/accounts/AccountPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 8

    .line 719
    iget-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceController$3;->this$0:Lcom/android/settings/accounts/AccountPreferenceController;

    invoke-static {p1}, Lcom/android/settings/accounts/AccountPreferenceController;->access$400(Lcom/android/settings/accounts/AccountPreferenceController;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "com.oneplus.account"

    invoke-static {p1, v0}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 720
    iget-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceController$3;->this$0:Lcom/android/settings/accounts/AccountPreferenceController;

    invoke-static {p1}, Lcom/android/settings/accounts/AccountPreferenceController;->access$500(Lcom/android/settings/accounts/AccountPreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 721
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string p1, "come_from"

    const-string v1, "from_settings"

    .line 722
    invoke-virtual {v4, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 723
    iget-object p0, p0, Lcom/android/settings/accounts/AccountPreferenceController$3;->this$0:Lcom/android/settings/accounts/AccountPreferenceController;

    invoke-static {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->access$600(Lcom/android/settings/accounts/AccountPreferenceController;)Lcom/android/settings/SettingsPreferenceFragment;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v1, "com.oneplus.account"

    const-string v2, ""

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
