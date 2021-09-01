.class Lcom/android/settings/TetherSettings$1;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TetherSettings;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherSettings;

.field final synthetic val$dontShowAgain:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/TetherSettings;Landroid/widget/CheckBox;)V
    .locals 0

    .line 639
    iput-object p1, p0, Lcom/android/settings/TetherSettings$1;->this$0:Lcom/android/settings/TetherSettings;

    iput-object p2, p0, Lcom/android/settings/TetherSettings$1;->val$dontShowAgain:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 643
    iget-object p2, p0, Lcom/android/settings/TetherSettings$1;->val$dontShowAgain:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "checked"

    goto :goto_0

    :cond_0
    const-string p2, "unchecked"

    .line 644
    :goto_0
    iget-object p0, p0, Lcom/android/settings/TetherSettings$1;->this$0:Lcom/android/settings/TetherSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "tether_settings_prefs"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 645
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "checkbox_status"

    .line 646
    invoke-interface {p0, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 647
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 648
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
