.class Lcom/android/settings/RestrictedSettingsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "RestrictedSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RestrictedSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RestrictedSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/RestrictedSettingsFragment;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/android/settings/RestrictedSettingsFragment$1;->this$0:Lcom/android/settings/RestrictedSettingsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 85
    iget-object p1, p0, Lcom/android/settings/RestrictedSettingsFragment$1;->this$0:Lcom/android/settings/RestrictedSettingsFragment;

    invoke-static {p1}, Lcom/android/settings/RestrictedSettingsFragment;->access$000(Lcom/android/settings/RestrictedSettingsFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/android/settings/RestrictedSettingsFragment$1;->this$0:Lcom/android/settings/RestrictedSettingsFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/settings/RestrictedSettingsFragment;->access$102(Lcom/android/settings/RestrictedSettingsFragment;Z)Z

    .line 87
    iget-object p0, p0, Lcom/android/settings/RestrictedSettingsFragment$1;->this$0:Lcom/android/settings/RestrictedSettingsFragment;

    invoke-static {p0, p2}, Lcom/android/settings/RestrictedSettingsFragment;->access$002(Lcom/android/settings/RestrictedSettingsFragment;Z)Z

    :cond_0
    return-void
.end method
