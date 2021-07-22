.class Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;
.super Landroid/os/Handler;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreApnUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/ApnSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/network/ApnSettings;)V
    .locals 0

    .line 1059
    iput-object p1, p0, Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/network/ApnSettings;Lcom/android/settings/network/ApnSettings$1;)V
    .locals 0

    .line 1059
    invoke-direct {p0, p1}, Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/settings/network/ApnSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1062
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1064
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_RESTORE_DEFAULTAPN_COMPLETE mRestoreDefaultApnMode = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/settings/network/ApnSettings;->access$000()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ApnSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    iget-object p1, p0, Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/16 v1, 0x3e9

    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 1067
    invoke-static {v2}, Lcom/android/settings/network/ApnSettings;->access$002(Z)Z

    .line 1069
    iget-object p0, p0, Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {p0, v1}, Lcom/android/settings/network/ApnSettings;->access$1400(Lcom/android/settings/network/ApnSettings;I)V

    const-string p0, "EVENT_RESTORE_DEFAULTAPN_COMPLETE activity is null !"

    .line 1070
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1075
    :cond_1
    invoke-static {}, Lcom/android/settings/network/ApnSettings;->access$000()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 1079
    :cond_2
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {v0}, Lcom/android/settings/network/ApnSettings;->access$100(Lcom/android/settings/network/ApnSettings;)V

    .line 1080
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1081
    invoke-static {v2}, Lcom/android/settings/network/ApnSettings;->access$002(Z)Z

    .line 1082
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {v0, v1}, Lcom/android/settings/network/ApnSettings;->access$1500(Lcom/android/settings/network/ApnSettings;I)V

    .line 1083
    iget-object p0, p0, Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/network/ApnSettings;

    .line 1085
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->restore_default_apn_completed:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 1083
    invoke-static {p1, p0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 1087
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
