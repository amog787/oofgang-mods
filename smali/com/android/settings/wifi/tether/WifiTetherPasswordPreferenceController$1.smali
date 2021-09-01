.class Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController$1;
.super Ljava/lang/Object;
.source "WifiTetherPasswordPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 192
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    invoke-static {p1}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->access$100(Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->access$002(Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;Ljava/lang/String;)Ljava/lang/String;

    .line 193
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    iget-object p2, p1, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p2, Landroidx/preference/EditTextPreference;

    invoke-static {p1, p2}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->access$200(Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;Landroidx/preference/EditTextPreference;)V

    .line 194
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mListener:Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;

    invoke-interface {p1, p0}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;->onTetherConfigUpdated(Lcom/android/settings/core/BasePreferenceController;)V

    goto :goto_0

    .line 196
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    invoke-static {p1}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->access$300(Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;)Landroidx/preference/EditTextPreference;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    invoke-static {p0}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->access$000(Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
