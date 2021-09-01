.class Lcom/android/settings/wfd/WifiDisplaySettings$3;
.super Landroidx/preference/SwitchPreference;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;->buildCertificationMenu(Landroidx/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;)V
    .locals 0

    .line 479
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$3;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0, p2}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 2

    .line 482
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$3;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$200(Lcom/android/settings/wfd/WifiDisplaySettings;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$202(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z

    .line 483
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$3;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$200(Lcom/android/settings/wfd/WifiDisplaySettings;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$300(Lcom/android/settings/wfd/WifiDisplaySettings;Z)V

    .line 484
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$3;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$200(Lcom/android/settings/wfd/WifiDisplaySettings;)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
