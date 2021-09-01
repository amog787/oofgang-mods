.class Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$3;
.super Ljava/lang/Object;
.source "WifiTetherSwitchBarController.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->startTether()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$3;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 321
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$3;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->pref:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "checked"

    const/4 p2, 0x1

    .line 322
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 323
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
