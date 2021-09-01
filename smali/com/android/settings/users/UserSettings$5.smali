.class Lcom/android/settings/users/UserSettings$5;
.super Ljava/lang/Object;
.source "UserSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/UserSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/UserSettings;

.field final synthetic val$longMessageDisplayed:Z

.field final synthetic val$preferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/android/settings/users/UserSettings;ZLandroid/content/SharedPreferences;)V
    .locals 0

    .line 573
    iput-object p1, p0, Lcom/android/settings/users/UserSettings$5;->this$0:Lcom/android/settings/users/UserSettings;

    iput-boolean p2, p0, Lcom/android/settings/users/UserSettings$5;->val$longMessageDisplayed:Z

    iput-object p3, p0, Lcom/android/settings/users/UserSettings$5;->val$preferences:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 575
    iget-object p1, p0, Lcom/android/settings/users/UserSettings$5;->this$0:Lcom/android/settings/users/UserSettings;

    const/16 p2, 0xa

    invoke-static {p1, p2}, Lcom/android/settings/users/UserSettings;->access$800(Lcom/android/settings/users/UserSettings;I)V

    .line 576
    iget-boolean p1, p0, Lcom/android/settings/users/UserSettings$5;->val$longMessageDisplayed:Z

    if-nez p1, :cond_0

    .line 577
    iget-object p0, p0, Lcom/android/settings/users/UserSettings$5;->val$preferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 p1, 0x1

    const-string p2, "key_add_user_long_message_displayed"

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 579
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method
